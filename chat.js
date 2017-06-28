function getCookie(name) {
    var matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
    ));
    return matches ? decodeURIComponent(matches[1]) : undefined;
}

var options = {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
    weekday: 'long',
    hour: 'numeric',
    minute: 'numeric',
    second: 'numeric'
};

function Message() {
    var mess = document.createElement('div');
    mess.body=document.createElement('div');
    mess.meta=document.createElement('div');
    mess.appendChild(mess.meta);
    mess.appendChild(mess.body);

    mess.body.className = "message";
    mess.meta.className = "message-meta";

    mess.setId = function (id) {
        this.setAttribute("data-id",id);
    };
    mess.setSender = function (me,author) {
        var sender = (me==author)?"me":author;
        this.body.setAttribute("data-sender",sender);
        this.setAttribute("data-sender",sender);
        this.meta.innerHTML+=author;
        this.author = author;
    };
    mess.setText = function (text) {
        this.body.innerHTML="<span>"+text+"</span>";
    };
    mess.setDate = function (date_st) {

        var date = new Date(date_st);
        this.date = date;
        this.meta.innerHTML+=" | "+date.toLocaleString("ru", options);
    };

    mess.append = function(){

        if (document.getElementById('dialogs').children.length-1!=-1) {
            var last = document.getElementById('dialogs').children[document.getElementById('dialogs').children.length - 1];
            alert(last.dataset.sender);
            if (last.dataset.sender == this.dataset.sender && ((this.date-last.date)<=1800000))
            {

                //alert(last.dataset.sender + " : " + this.dataset.sender);
                this.meta.style.display = "none";

            }
        }
        document.getElementById('dialogs').appendChild(mess);
    };

    return mess;
    }


$(function(){
    var user_login = $('#user-data').val()||"Anonimus";
    var mid = 0;
    get_message_chat();
    setInterval(function() {
        get_message_chat();
    }, 2000);

    function get_message_chat(){
        user_login = $('#user-data').val()||"Anonimus";
        $.ajaxSetup({url: "chat.php",global: true,type: "GET",data:{event:"get",id:mid,t:(new Date).getTime()}});
        $.ajax({
            success: function(msg_j){
                console.log(msg_j);
                if(msg_j.length > 2){
                    var obj = JSON.parse(msg_j);
                    for(var i=0; i < obj.length; i ++){
                        mid = obj[i].id;
                        var mess = new Message();
                        mess.setId(obj[i].id);
                        mess.setSender(user_login,obj[i].name);
                        mess.setText(obj[i].txt);
                        mess.setDate(obj[i].date);
                        mess.append();

                    }
                    $("#dialogs").scrollTop(9999);
                }
            }
        });
    }
    $(".btn-send").click(function() {
            user_login = $('#user-data').val()||"Anonimus";
            var msg = $("#mess-txt").val();
            if (msg != "") {
                $.ajaxSetup({url: "chat.php", type: "GET", data: {event: "set", author: user_login, msg: msg}});
                $.ajax({
                    success: function (data) {
                        console.log(data);
                        get_message_chat();
                        $("#mess-txt").val("");
                    }
                });
            }

        return false;
    });//Send message
    
});

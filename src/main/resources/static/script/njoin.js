

$("#joinBt").click(function(){

    let join={
        "id": $("#id").val(),
        "pw": $("#pw").val(),
        "name": $("#name").val()
    }

    $.ajax({
        type:"post",
        url:"join_",
        contentType: "application/json",
        data: JSON.stringify(join),
        success: function (){

            alert("가입");

        }
    });
});

$("#loginBt").click(function(){

    let login={
        "id": $("#loginId").val(),
        "pw": $("#loginPw").val()
    }

    $.ajax({
        type:"post",
        url:"login",
        contentType: "application/json",
        data: JSON.stringify(login),
        success: function (res){
            if(res){
                alert("로그인");
                sessionStorage.setItem("log",$("#loginId").val());
                location.href="/";

            }
            else{
                alert("로그인 실패");
                location.href="/";
            }

        }
    });
});

$("#leave_").click(function(){
    if(sessionStorage.getItem("log")!==""){
        let log=sessionStorage.getItem("log");
        let leave={
            "id":log
        };

        $.ajax({
            type:"Delete",
            url:"delete",
            contentType: "application/json",
            data: JSON.stringify(leave),
            success: function (res){
                sessionStorage.setItem("log","");
                alert("탈퇴 성공")
            }
        })

    }
    else{
        alert("로그인 중이 아닙니다.")
    }
});

$("#logoutBt").click(function(){

    if(sessionStorage.getItem("log")!==""){


        sessionStorage.setItem("log","");
        alert("로그아웃")
    }    
    else{
        alert("로그인부터 해")
    }
 
});
$("#updateUserBn").click(function(){
    if(sessionStorage.getItem("log")!==""){
        location.href="updateUser"
    }
    else{
        alert("로그인 해");
    }
});

$("#updateBt").click(function(){
    let log=sessionStorage.getItem("log");
    let update={
        "id":sessionStorage.getItem("log"),
        // "id":"gd",
        "pw":$("#updatePw").val(),
        "name":$("#updateName").val()
    };

    $.ajax({
        type:"put",
        url:"update",
        contentType: "application/json",
        data: JSON.stringify(update),
        success: function (res){

            alert("수정 성공")
        }
    });

});


$("#loginBn").click(function(){

    let login={
        "id": $("#loginId").val(),
        "pw": $("#loginPw").val()
    }

    $.ajax({
        type:"post",
        url:"v1/search/login",
        contentType: "application/json",
        data: JSON.stringify(login),
        success: function (res){
            console.log("gd");
            if(res){
                location.href="/main"
            }



        }


    });
});





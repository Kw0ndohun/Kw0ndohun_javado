$("#joinBt").click(function(){

    let join={
        "id": $("#loginId").val(),
        "pw": $("#loginPw").val()
    }

    $.ajax({
        type:"post",
        url:"v1/search/joinDupl",
        contentType: "application/json",
        data: JSON.stringify(join),
        success: function (res){
            if(res){
                alert("안돼");
            }
            else{
                alert("됨");
            }
        }
    });
});

console.log($("#joinId").val());

$("#joinForm").focusout(function(){

    let join={
        "id": $("#joinId").val(),
        "pw": $("#joinPw").val()
    }
    console.log($("#joinId").val());

    $.ajax({
        type:"post",
        url:"v1/search/validation",
        contentType: "application/json",
        data: JSON.stringify(join),
        success: function (res){
            if(res){
                alert("입력해")
            }
            else{
                location.href="/";
            }
        }
    });
});

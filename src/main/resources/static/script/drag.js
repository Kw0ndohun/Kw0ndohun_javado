if(sessionStorage.getItem("log")===null){
    sessionStorage.setItem("log","");
}

//     $.ajax({
//        type:,
//        url:,
//        contentType:,
//        data:,
//        success:function(res){

//login logout 버튼 체인지 변수
let logBt;
if(sessionStorage.getItem("log")===null || sessionStorage.getItem("log")===""){
    logBt=`<button class="btn btn-secondary my-2 my-sm-0" id="login"><a class="nav-link active" href="/login">login<span class="visually-hidden">(current)</span></a></button>
        <span class="visually-hidden">(current)</span></button>`;
}
else{
    logBt=`<input type="button" id="loginBt" class="btn btn-secondary" value="logout" onclick="logout()">
<input type="button" id="myPageBt" class="btn btn-secondary" value="내 정보" onclick="location.href='/myPage'">`;
}
$(".d-flex").append(logBt);

    //드래거블 이동
const columns = document.querySelectorAll(".column");
columns.forEach((column) => {
    new Sortable(column, {
        group: "shared",
        animation: 150,
        ghostClass: "blue-background-class",
        //드래그가 시작되면
        onStart:function(e){
            console.log("됐어");
        },
        //드래그한게 놓아지면
        onAdd:function(e){

            console.log("드랍");
        }
    });
});

//정답 블록을 놓는 곳
const buttons = document.querySelectorAll(".buttons");
buttons.forEach((buttons) => {
    new Sortable(buttons, {
        group: "shared",
        animation: 150,
        ghostClass: "blue-background-class"
    });
});

var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl)
})

function logout(){
    sessionStorage.clear();
    location.href="/";
}






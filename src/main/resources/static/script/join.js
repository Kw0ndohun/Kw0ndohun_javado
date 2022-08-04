//헤더 어팬드
let header=`<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">JAVADO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="/">Learning
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/main?step=1">Training</a>
      </ul>
      <form class="d-flex">
        <ul id="floor">
        
        </ul>
        <button class="btn btn-primary my-2 my-sm-0" id="login">login</button>
      </form>
    </div>
  </div>
</nav>`;
$("#header").append(header);
//footer 어팬드
let footer=`<nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-fixed-bottom" id="footerIndex">
    <div class="container-fluid">
        <a class="navbar-brand" href="/" style="color: cadetblue;">JAVADO</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarColor01">
            <br>
            <span class="footerText">JAVADO |만든 이: 권도훈 |e-mail: ehgns0125@naver.com</span>
        </div>
    </div>
</nav>`;
$("#footer").append(footer);



function join(){
    let join={
        "id": $("#joinId").val(),
        "pw": $("#joinPw").val(),
        "name": $("#joinName").val()
    }
    $.ajax({
        type:"post",
        url:"v1/join/user",
        contentType: "application/json",
        data: JSON.stringify(join),
        success: function (res){
            if(res){
                alert("가입완료! 어서 로그인 해서 공부하자!");
            }
            else{
                alert("중복된 아이디입니다!");
            }
        }
    });
}


// v1/login/user
function login(){
    let login={
        "id": $("#loginId").val(),
        "pw": $("#loginPw").val(),
    }
    $.ajax({
        type:"post",
        url:"v1/login/user",
        contentType: "application/json",
        data: JSON.stringify(login),
        success: function (res){
            if(res===""){
                alert("아이디나 비밀번호가 틀렸습니다.");
            }
            else{
                alert("로그인 완료!");
                sessionStorage.setItem("log",`${res}`)
                location.href="/";
            }
        }
    });
}

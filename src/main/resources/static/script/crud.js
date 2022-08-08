//login logout 버튼 체인지 변수
let logBt;
if(sessionStorage.getItem("log")===""){
    logBt=`<button class="btn btn-primary my-2 my-sm-0" id="login"><a class="nav-link active" href="/login">login<span class="visually-hidden">(current)</span></a></button>
        <span class="visually-hidden">(current)</span></button>`;
}
else{
    logBt=`<input type="button" id="joinBt" class="btn btn-primary" value="logout" onclick="logout()">`;
}

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
        ${logBt}
      </form>
    </div>
  </div>
</nav>`;
$("#header").append(header);
//footer 어팬드
let footer=`<nav class="navbar navbar-expand-lg navbar-dark bg-dark navbar-fixed-bottom" id="footerIndex">
    <div class="container-fluid">
        <a class="navbar-brand" href="/" style="color: cadetblue;">JAVADO</a>
      
        <div class="collapse navbar-collapse" id="navbarColor01">
            <br>
            <span class="footerText">JAVADO |만든 이: 권도훈 |e-mail: ehgns0125@naver.com</span>
        </div>
    </div>
</nav>`;
$("#footer").append(footer);


function validation(){
    if($("#joinId").val()==="" || $("#joinPw").val()==="" || $("#joinName").val() === "") {
        Swal.fire(
            '실패!',
            `빈칸이 있습니다.`,
            'error'
        )
    }
    else{
        join();
    }
}

function join(){
    let join={
        "id": $("#joinId").val(),
        "pw": $("#joinPw").val(),
        "name": $("#joinName").val(),
        "clear": ""
    }
    $.ajax({
        type:"post",
        url:"v1/join/user",
        contentType: "application/json",
        data: JSON.stringify(join),
        success: function (res){
            console.log(res);
            if(res){
                Swal.fire(
                    '가입완료!',
                    `가입완료! 어서 로그인 해서 공부하자!`,
                    'success'
                ).then(function(){
                    location.href="/login";

                })
            }
            else{
                Swal.fire(
                    '가입실패!',
                    `중복된 아이디입니다!`,
                    'error'
                )
            }
        }
    });
}

//아이디 중복 실시간 체크
function duplIdCheck(){
    let join={
        "id": $("#joinId").val(),
        "pw": "",
        "name": "",
        "clear": ""
    }
    $.ajax({
        type:"post",
        url:"v1/check/user",
        contentType: "application/json",
        data: JSON.stringify(join),
        success: function (res){
            console.log($("#joinId").val());
            if($("#joinId").val()!==""){
                if(res){
                    console.log($("#joinId").val());
                    $("#dupl").attr("style","color: red; display: none;");
                    $("#notDupl").attr("style","color: red; display: inline-block;");
                }
                else{
                    console.log($("#joinId").val());
                    $("#dupl").attr("style","color: red; display: inline-block;");
                    $("#notDupl").attr("style","color: red; display: none;");
                }
            }

        }
    });
}


// 로그인
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
                Swal.fire(
                    '로그인 실패!',
                    `아이디 또는 비밀번호가 틀렸습니다.`,
                    'error'
                )
            }
            else{
                sessionStorage.setItem("log",`${res}`);
                Swal.fire(
                    '로그인 완료!',
                    `공부하러 가봐요!`,
                    'success'
                ).then(function(){
                    location.href="/";

                })
            }
        }
    });
}

// 마이페이지 세팅
let tableColor=["table-primary","table-secondary","table-success","table-danger","table-warning","table-info"];
let comment=["참 잘했어요!","대단해요!!","조금 더 노력해볼까요?","우와!!","벌써 이걸 풀었어요?","엄청나요!","앞으로도 힘내봐요!","코딩의 재미를 느껴봐요!","이제 코딩 고수!!"];
function myPageSetting(){
    let log={
        "id":sessionStorage.getItem("log")
    };
    $.ajax({
        type:"post",
        url:"v1/get/clear",
        contentType: "application/json",
        data: JSON.stringify(log),
        success: function (res){
            if(res!==null){
                for(let n=0; n<res.length; n++){
                    let ranCom=Math.floor(Math.random() * 8+1);
                    let ranColor=Math.floor(Math.random() * 5+1);
                    let clear=`<tr class=${tableColor[ranColor]}>
                                <th scope="row"><a href="/main?step=${res[n]}"> ${res[n]}</a></th>
                                <td>${comment[ranCom]}</td>
                                <td><i class="fa-solid fa-check"></i></td>
                              </tr>`;
                    $("#clearList").append(clear);
                }
            }
            else{
                location.href="/";
            }
        }
    });
}
myPageSetting();

function logout(){
    sessionStorage.clear();
    location.href="/";
}

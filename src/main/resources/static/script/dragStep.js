//블록버튼들 세팅

    $.ajax({
       type:"get",
       url:"v1/search/buttons",
       contentType:"application/json",
       success:function(res){
            for(let n=0; n<res.length; n++){
                let txt=`<button type="button" class='${res[n]["class_"]}' draggable="true" value='${res[n]["value"]}' data-bs-container="body" data-bs-toggle="popover" data-bs-placement="auto" data-bs-content='${res[n]["content"]}' data-bs-trigger="hover">${res[n]["name"]}</button>`;
                $(".buttons").append(txt);
            }

           // console.log(res);
           // console.log(res[0]["name"]);
           // let dd=JSON.stringify(res);
           // console.log(JSON.stringify(res)[0]);
           var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
           var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
               return new bootstrap.Popover(popoverTriggerEl)
           })
       }
    });

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
          <a class="nav-link active" href="#">Training</a>
      </ul>
      <form class="d-flex">
        <ul id="floor">
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Step</a>
          <div class="dropdown-menu">

          </div>
        </li>
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
//드롭다운 step 어팬드
let dropdown=`<a class="dropdown-item" href="main?step=1">step1</a>`;
$(".dropdown-menu").append(dropdown);
for(let n=2; n<20; n++){
    let txt=`<a class="dropdown-item" href="main${n}?step=${n}">step${n}</a>`;
    $(".dropdown-menu").append(txt);
}

//컬러 배열
let colors=["#81ecec","#74b9ff","#ffeaa7","#fab1a0","#ff7675","#55efc4","#636e72","#a29bfe"];
//컬러 배열을 랜덤으로 뽑아내는 변수
let ranCol=Math.floor(Math.random() * 7+1);
//문자 배열
let strings=["aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","nn","mm","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","AA","BB","CC","DD"];
//정답을 맞추면 나오는 alert 대사 배열
let successAlertScript=["1이가 무사히 숫자 모임에 소속될 수 있었어요!","1이가 무사히 문자열 소속으로 소속을 옮겼습니다!","한 글자인 1이는 이제 한 글자들끼리 모인 char에 소속되게 되었어요!","이제 1이는 20억을 넘어 더 성잘할 수 있게 되었습니다!","1이의 키가 드러났네요!","오우 엄청나게 커졌네요!","이제 좀 적당하군요.","좀 크지만 그래도 잘했어요! 기존의 x와는 다르게 *가 곱하기를 뜻해요.","좋아요! 나누기도 곱하기처럼 우리가 쓰는 나누기랑 다르게 /예요.","while은 () 안에 들어온 조건이 진실이면 반복해줘요. while에게는 진실만 말해야해요!","잘했어요! 소속 이름 = 값 이렇게 소속과 이름 값을 정해줄 수 있어요. 이제 1이의 이름은 하나이고 6.8의 값을 가지고 있어요.","맞아요! 부등호를 넣어서 값을 변경할 수 있어요. 소속은 처음에만 붙여주고 그 이후에는 붙이지 않아요.","이미 부등호를 통해서 이미 정해진 소속은 이름을 바꿔야 소속을 바꿀 수 있어요. 하나는 하나1이 되어 다시 int에 소속되었어요! "];


//     $.ajax({
//        type:,
//        url:,
//        contentType:,
//        data:,
//        success:function(res){

//단계 배열과 단계에 맞는 정답 배열이 필요
let step=1;
step=parseInt(getParameterByName("step"));
//step 파라미터가 없으면 step은 1을 디폴트로 가진다
if(getParameterByName("step")===""){
    step=1;
}
//단계를 통과했는지 최종 체크
//                      /5       /10       /15
let stepClears=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

// 각 단계별 정답 갯수 배열을 만들어 answer배열의 정답을 체크
let stepAnswerCnt=[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
//정답이 들은 배열
let answer=["int","String","char","long","double","+","-","*","/","while","=","=","int"];
//정답을 입력이 입력되면 1로 바뀌어 정답을 맞췄음을 확인하는 배열
let answerCheck=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

//정답 체크 맥스범위 변수 //sql에 저장? 세션에 저장?/ 현재 단계 전까지의 stepAnswerCnt배열의 값들을 더하면 됨.
let answerCountCnt=0;
//정답 체크 미니멈범위
let answerCountCntMin=0;
for(let n=0; n<step; n++){
    answerCountCnt+=stepAnswerCnt[n];
}
for(let n=0; n<step-1; n++){
    answerCountCntMin+=stepAnswerCnt[n];
}
//단계를 통과했는지 stepAnswerCnt 배열의 수를 체크해 answer 배열의 정답범위를 확인함. /정답을 확인한 갯수 변수 필요
function stepClearCheck(){
    let cnt=0;
    for(let n=answerCountCntMin; n<answerCountCnt; n++){
        if(answerCheck[n]===1){
            cnt++;
        }
    }
    if(cnt===stepAnswerCnt[step-1]){
        Swal.fire(

            '정답!',
            `${successAlertScript[step-1]}<br>`+' ' +
            '다음 단계로~',
            'success'
        )
        stepClears[step-1]=1;
        sessionStorage.setItem("success","1");
        $("#nextStep").attr("class","btn btn-primary");
        screenRun();
    }
}



//드랍이 되면 정답을 검증하고 > 트루를 반환해서 Html에 있는 자바문이 가동되게끔

    //드래거블 이동
// const columns = document.querySelectorAll(".column");
// columns.forEach((column) => {
//     new Sortable(column, {
//         group: "shared",
//         animation: 150,
//         ghostClass: "blue-background-class",
//         //드래그가 시작되면
//         onStart:function(e){
//             console.log("됐어");
//         },
//         //드래그한게 놓아지면
//
//     });
// });

//블록들
const buttons = document.querySelectorAll(".buttons");
buttons.forEach((buttons) => {
    new Sortable(buttons, {
        group: {
            name: 'shared',
            pull: 'clone' // To clone: set pull to 'clone'
        },
        animation: 150,
        ghostClass: "blue-background-class"
    });
});



// =================== 맵세팅 영역================== //

// 정답 실행 화면 세팅 (맵세팅)
const screenContainer=document.body.querySelector('.screenContainer');
function setScreen(){
    let num=1;
    for(let n=0; n<5; n++){
        for(let i=0; i<5; i++){
            let bl= document.createElement('div');
            bl.setAttribute('class','block');
            bl.setAttribute('id',`b${num}`);
            screenContainer.append(bl);
            num++;
        }
    }
    //step에 따라 맵 추가 세팅
    if(step===1){
        setStep1map();
    }
    else if(step===2){
        setStep2map();
    }
    else if(step===3){
        setStep3map();
    }
    else if(step===4){
        setStep4map();
    }
    else if(step===5){
        setStep5map();
    }
    else if(step===6){
        setStep6map();
    }
    else if(step===7){
        setStep7map();
    }
    else if(step===8){
        setStep8map();
    }
    else if(step===9){
        setStep9map();
    }
    else if(step===10){
        setStep10map();
    }
    else if(step===11){
        setStep11map();
    }
    else if(step===12){
        setStep12map();
    }
    else if(step===13){
        setStep13map();
    }
    else if(step===14){
        setStep14map();
    }
    else if(step===15){
        setStep15map();
    }
}
//step2일 때 실행화면 세팅
function setStep1map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[3]}`);
    $(`#b${13}`).html(`${1}`);
}
//step2일 때 실행화면 세팅
function setStep2map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){

        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}`);
    $(`#b${13}`).html(`${1}`);
}
//step3일 때 실행되는 화면
function setStep3map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[1]}`);
    $(`#b${13}`).html(`${1}`);
}
//step4일 때 실행되는 화면
function setStep4map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){

        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[4]}`);
    $(`#b${13}`).html(`${1}`);
}
//step5일 때 실행되는 화면 세팅
function setStep5map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[5]}`);
    $(`#b${13}`).html(`${1}`);
}
//step6일 때 실행되는 화면 세팅
function setStep6map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`${1.1}`);
}
//step7일 때 실행되는 화면 세팅
function setStep7map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){

        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${12}`).html('');
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`${14.1}`);
}
//step8일 때 실행되는 화면 세팅
function setStep8map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${12}`).html('');
    $(`#b${8}`).html('');
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`${5.1}`);
}
//step9일 때 실행되는 화면 세팅
function setStep9map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${12}`).html('');
    $(`#b${3}`).html('');
    $(`#b${8}`).html('');
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`${20.4}`);
}
//step10일 때 실행되는 화면 세팅
function setStep10map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`${6.8}`);
}
//step11일 때 실행되는 화면 세팅
function setStep11map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`${6.8}`);
}
//step12일 때 실행되는 화면 세팅
function setStep12map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`하나`);
}
//step13일 때 실행되는 화면 세팅
function setStep13map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`하나`);
}

// =================== 맵세팅 영역================== //

//정답위치
const answerDiv = document.querySelectorAll(".answerDiv");
answerDiv.forEach((answerDiv) => {
    new Sortable(answerDiv, {
        group: "shared",
        animation: 150,
        ghostClass: "blue-background-class",
        onAdd:function(e){
            for(let n=answerCountCntMin; n<answerCountCnt; n++){
                if(e.item.getAttribute("value")===answer[n]){
                    answerCheck[n]=1;
                }

            }
            if(stepClears[step-1]===0){
                stepClearCheck();
            }
        },
        // 블록이 밖으로 나가서 다른 위치로 이동하면 해당 블록 제거
        onRemove:function (e) {
          e.item.parentNode.removeChild(e.item);
        }
    });
});

// sessionStorage.setItem("step",`${step}`);
function nextClick(){
    step++;
    // sessionStorage.setItem("step",`${step}`);
    nextStep();
}
function nextStep(){
    location.href=`/main${step}?step=${step}`;
}

//정답 실행화면 세팅 메서드
setScreen();


// js url 파라미터 받아오는 메소드 ()파라미터로 스트링을 넣어줘야함.
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

let step1go;
// 정답을 맞추면 스크린에 실행을 해주는 펑션
function screenRun(){
    if(step===1){
        step1run();

    }
    else if(step===2){
        step2run();
    }
    else if(step===3){
        step3run();
    }
    else if(step===4){
        step4run();
    }
    else if(step===5){
        step5run();
    }
    else if(step===6){
        step6run();
    }
    else if(step===7){
        step7run();
    }
    else if(step===8){
        step8run();
    }
    else if(step===9){
        step9run();
    }
    else if(step===10){
        step1go =setInterval(step10run,400);
    }
    else if(step===11){
        step11run();
    }
    else if(step===12){
        step12run();
    }
    else if(step===13){
        step13run();
    }
    else if(step===14){
        step14run();
    }
    else if(step===15){
        step15run();
    }
    else if(step===16){
        step16run();
    }
    else if(step===17){
        step17run();
    }
}

//step1 실행
function step1run(){
    $(`#b${13}`).attr("style",`background-color:${colors[0]}`);
}
//step2 실행
function step2run(){
    $(`#b${13}`).attr("style",`background-color:${colors[1]}`);
}
//step3 실행
function step3run(){
    $(`#b${13}`).attr("style",`background-color:${colors[4]}`);
}
//step4 실행
function step4run(){
    $(`#b${13}`).attr("style",`background-color:${colors[5]}`);
}
//step5 실행
function step5run(){
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html("1.1");
}
//step6 실행
function step6run(){
    $(`#b${12}`).html('');
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html("14.1");
}
//step7 실행
function step7run(){
    $(`#b${8}`).html('');
    $(`#b${13}`).html("5.1");
}
//step8 실행
function step8run(){
    $(`#b${3}`).html('');
    $(`#b${13}`).html("20.4");
}
//step9 실행
function step9run(){
    $(`#b${2}`).html('');
    $(`#b${13}`).html("6.8");
}
//step10 실행  while
let blockNum=1;
let re=1;
function step10run(){
    ranCol=Math.floor(Math.random() * 7+1);
    $(`#b${blockNum}`).attr("style",`background-color:${colors[ranCol]}`);
    blockNum++;
    if(blockNum>25){
        blockNum=1;
    }
    if(re===100){
        clearInterval(step1go);
    }

    re++;
}
//step11 실행
function step11run(){
    $(`#b${13}`).html("하나");
}
//step12 실행
function step12run(){
    $(`#b${13}`).html("10");
}
//step13 실행
function step13run(){
    $(`#b${13}`).attr("style",`background-color:${colors[0]}`);
}

var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl)
})


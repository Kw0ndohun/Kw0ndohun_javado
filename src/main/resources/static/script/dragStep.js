//인터벌 변수
let step1go;
let step29go;

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
for(let n=2; n<51; n++){
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
let successAlertScript=["1이가 무사히 숫자 모임에 소속될 수 있었어요!","1이가 무사히 문자열 소속으로 소속을 옮겼습니다!","한 글자인 1이는 이제 한 글자들끼리 모인 char에 소속되게 되었어요!","이제 1이는 20억을 넘어 더 성잘할 수 있게 되었습니다!","1이의 키가 드러났네요!","오우 엄청나게 커졌네요!","이제 좀 적당하군요.","좀 크지만 그래도 잘했어요! 기존의 x와는 다르게 *가 곱하기를 뜻해요.","좋아요! 나누기도 곱하기처럼 우리가 쓰는 나누기랑 다르게 /예요.","while은 () 안에 들어온 조건이 진실이면 반복해줘요. while에게는 진실만 말해야해요!","잘했어요! 소속 이름 = 값 이렇게 소속과 이름 값을 정해줄 수 있어요. 이제 1이의 이름은 하나이고 6.8의 값을 가지고 있어요.","맞아요! 부등호를 넣어서 값을 변경할 수 있어요. 소속은 처음에만 붙여주고 그 이후에는 붙이지 않아요.","사실 소속을 바꿀 수 없어요. 이미 소속과 이름, 값이 정해진 친구는 소속을 더 이상 변경할 수 없어요.","좋아요! 하나라는 이름을 버리고 하나2가 되어 int에 다시 소속되게 되었어요!","맞아요! 하나2는 10을 값으로 가지고 있죠! 오른쪽에 있는 수가 더 크면 <를 사용해요. 오른쪽이 더 크기 때문에 true가 나왔네요.","정확해요! <=는 오른쪽이 더 큰지와 같은 지도 확인해줘요.","맞아요! 이것도 마찬가지로 >=로도 같은 결과가 나와요.","거짓이 나왔어요! 15는 하나2가 가진 값 10보다 무거워요.","이것도 거짓이네요.. ==는 두 값이 서로 같은 지 확인해줘요.","진실이 나왔어요! ==가 제대로 알려주고 있네요.","맞아요! &&는 그리고를 뜻해서 양쪽에 있는 조건들이 전부 진실이여야 진실이라고 말해줘요.","맞아요! ||는 또는을 뜻해요. 한쪽에 있는 조건이 거짓이더라도 다른 한쪽이 진실이라면 진실이라고 말해줘요.","또는이랑 같은 결과가 나왔어요! | 는 또는 이랑 비슷하지만 무조건 모든 조건을 다 검사하는 친구예요.","&&과 같은 기능을 가지고 있지만 무조건 모든 조건을 검사해요.","아무 일도 일어나지 않았네요? 역시 15의 말은 거짓이였나봐요.","거짓말 탐지기가 실행이 되었어요! 하나2의 값이 20이 되고 친구들이 가득 찾아네요!","두번째 탐지기의 조건이 충족되었나보네요! else if는 무조건 if랑 같이 있어야 해요.","맞아요! else는 if와 else if가 탐지에 실패하면 나오는 블록이예요. else if와 마찬가지로 if와 무조건 함께 하는 블록이예요.","좋아요! for은 정해진 조건에 따라 값이 바뀌며 반복해줘요.","잘했어요! 반복이 멈췄어요. break은 반복을 곧장 멈춰버려요.","좋아요! 처음으로 다시 돌아가서 색칠이 시작되었어요! continue는 반복을 시작한 곳으로 돌려보내줘요.","맞아요! 15가 정말로 가벼워졌네요. return은 지정된 값을 돌려줘요. 친구에게 주고 싶은 값이 있을 때 return을 사용해요.","잘했어요! if가 실행되어 하나2가 이동했어요!","좋아요! 15는 너무 먹어서 이제 자기도 가볍다고 하기 힘들어 보여요. else는 식이 붙지 않아요.","잘했어요! 15가 75가 됐네요. else는 이처럼 if에 붙어서 if가 검사를 놓치면 else가 검사해줘요.","잘했어요! if와 else if가 들어가요. 15로 돌아왔네요.","좋아요! 두 개의 식이 모두 실행되었어요! 각각 else와 else if를 붙여서 검사할 조건을 붙여줄 수 있어요.","잘했어요! 반복이 실행되었네요!","맞아요. 반복이 시작되었어요!","잘했어요! i라는 이름을 가진 친구가 만들어졌어요.","맞아요! i가 반복될수록 점점 늘어나다가 20이 되는 순간 반복이 멈추게 되요.","잘했어요! 친구들이 순서대로 방에 들어갔어요. 방 번호는 0부터 시작해요.","[1]을 불러서 1번방의 9가 왔네요.","잘했어요! 이번엔 똑바로 [0]번방을 불러서 하나2가 나왔어요!"];


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
//단계를 통과했는지 최종 체크 /sql저장?
//                      /5       /10       /15       /20       /25       /30       /35       /40       /45       /50
let stepClears=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

// 각 단계별 정답 갯수 배열을 만들어 answer배열의 정답을 체크
//                        /5        /10       /15      /20        /25       /30      /35       /40       /45
let stepAnswerCnt=[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1];
//정답이 들은 배열                           /5                        /10                       /15                   /20                    /25                               /30
let answer=["int","String","char","long","double","+","-","*","/","while","=","=","int","int","<","<=",">","<","==","==","&&","||","|","&","if","if","else if","else","for","break","continue","return",">","else if","else","if","else if","if","if","while",">","<","=","++","Array","Array","Array"];
//정답을 입력이 입력되면 1로 바뀌어 정답을 맞췄음을 확인하는 배열
//                      /5       /10       /15        /20       /25       /30       /35       /40       /45       /50
let answerCheck=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

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


const buttons = document.body.querySelector(".buttons");
let draggable =new Sortable(buttons, {
    group: {
        name: 'shared',
        pull: 'clone'
    },
    animation: 150,
    ghostClass: "blue-background-class"
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
    else if(step===16){
        setStep16map();
    }
    else if(step===17){
        setStep17map();
    }
    else if(step===18){
        setStep18map();
    }
    else if(step===19){
        setStep19map();
    }
    else if(step===20){
        setStep20map();
    }
    else if(step===21){
        setStep21map();
    }
    else if(step===22){
        setStep22map();
    }
    else if(step===23){
        setStep23map();
    }
    else if(step===24){
        setStep24map();
    }
    else if(step===25){
        setStep25map();
    }
    else if(step===26){
        setStep26map();
    }
    else if(step===27){
        setStep27map();
    }
    else if(step===28){
        setStep28map();
    }
    else if(step===29){
        setStep29map();
    }
    else if(step===30){
        setStep30map();
    }
    else if(step===31){
        setStep31map();
    }
    else if(step===32){
        setStep32map();
    }
    else if(step===33){
        setStep33map();
    }
    else if(step===34){
        setStep34map();
    }
    else if(step===35){
        setStep35map();
    }
    else if(step===36){
        setStep36map();
    }
    else if(step===37){
        setStep37map();
    }
    else if(step===38){
        setStep38map();
    }
    else if(step===39){
        setStep39map();
    }
    else if(step===40){
        setStep40map();
    }
    else if(step===41){
        setStep41map();
    }
    else if(step===42){
        setStep42map();
    }
    else if(step===43){
        setStep43map();
    }
    else if(step===44){
        setStep44map();
    }
    else if(step===45){
        setStep45map();
    }
    else if(step===46){
        setStep46map();
    }
    else if(step===47){
        setStep47map();
    }
    else if(step===48){
        setStep48map();
    }
    else if(step===49){
        setStep49map();
    }
    else if(step===50){
        setStep50map();
    }
}
//step1일 때 실행화면 세팅
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
//step14일 때 실행되는 화면 세팅
function setStep14map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html(`하나`);
}
//step15일 때 실행되는 화면 세팅
function setStep15map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${12}`).attr("style",`background-color:${colors[0]}`);
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${12}`).html(`9`);
}
//step16일 때 실행되는 화면 세팅
function setStep16map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${12}`).attr("style",`background-color:${colors[0]}`);
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${12}`).html(`9`);
}
//step17일 때 실행되는 화면 세팅
function setStep17map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${14}`).html(`15`);
}
//step18일 때 실행되는 화면 세팅
function setStep18map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${14}`).html(`15`);
}
//step19일 때 실행되는 화면 세팅
function setStep19map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${14}`).html(`15`);
}
//step20일 때 실행되는 화면 세팅
function setStep20map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
}
//step21일 때 실행되는 화면 세팅
function setStep21map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step22일 때 실행되는 화면 세팅
function setStep22map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step23일 때 실행되는 화면 세팅
function setStep23map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step24일 때 실행되는 화면 세팅
function setStep24map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step25일 때 실행되는 화면 세팅
function setStep25map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step26일 때 실행되는 화면 세팅
function setStep26map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step27일 때 실행되는 화면 세팅
function setStep27map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step28일 때 실행되는 화면 세팅
function setStep28map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step29일 때 실행되는 화면 세팅
function setStep29map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step30일 때 실행되는 화면 세팅
function setStep30map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
    step1go =setInterval(step10run,400);
}
//step31일 때 실행되는 화면 세팅
function setStep31map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
    step1go =setInterval(step10run,400);
}
//step32일 때 실행되는 화면 세팅
function setStep32map(){
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    for(let i=14; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px`);
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
    step1go =setInterval(step10run,400);
}
//step33일 때 실행되는 화면 세팅
function setStep33map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${13}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step34일 때 실행되는 화면 세팅
function setStep34map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step35일 때 실행되는 화면 세팅
function setStep35map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`150`);
}
//step36일 때 실행되는 화면 세팅
function setStep36map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`75`);
}
//step37일 때 실행되는 화면 세팅
function setStep37map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${14}`).html(`15`);
}
//step38일 때 실행되는 화면 세팅
function setStep38map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${1}`).html(`15`);
}
//step39일 때 실행되는 화면 세팅
function setStep39map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${1}`).html(`15`);
}
//step40일 때 실행되는 화면 세팅
function setStep40map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${1}`).html(`15`);
}
//step41일 때 실행되는 화면 세팅
function setStep41map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${1}`).html(`15`);
}
//step42일 때 실행되는 화면 세팅
function setStep42map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }
    $(`#b${2}`).html(`하나2`);
    $(`#b${8}`).html(`10`);
    $(`#b${12}`).html(`9`);
    $(`#b${1}`).html(`15`);
}
//step43일 때 실행되는 화면 세팅
function setStep43map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }
}
//step44일 때 실행되는 화면 세팅
function setStep44map(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }
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
            // for(let n=answerCountCntMin; n<answerCountCntMin+1; n++){
                if(e.item.getAttribute("value")===answer[answerCountCntMin]){
                    answerCheck[answerCountCntMin]=1;
                }
            // }
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
const answerDiv2 = document.querySelectorAll(".answerDiv2");
answerDiv2.forEach((answerDiv2) => {
    new Sortable(answerDiv2, {
        group: "shared",
        animation: 150,
        ghostClass: "blue-background-class",
        onAdd:function(e){
            for(let n=answerCountCntMin+1; n<answerCountCntMin+2; n++){
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
    else if(step===18){
        step18run();
    }
    else if(step===19){
        step19run();
    }
    else if(step===20){
        step20run();
    }
    else if(step===21){
        step21run();
    }
    else if(step===22){
        step22run();
    }
    else if(step===23){
        step23run();
    }
    else if(step===24){
        step24run();
    }
    else if(step===25){
        step25run();
    }
    else if(step===26){
        step26run();
    }
    else if(step===27){
        step27run();
    }
    else if(step===28){
        step28run();
    }
    else if(step===29){
        step29go =setInterval(step29run,400);
    }
    else if(step===30){
        step30run();
    }
    else if(step===31){
        step31run();
    }
    else if(step===32){
        step32run();
    }
    else if(step===33){
        step33run();
    }
    else if(step===34){
        step34run();
    }
    else if(step===35){
        step35run();
    }
    else if(step===36){
        step36run();
    }
    else if(step===37){
        step37run();
    }
    else if(step===38){
        step1go =setInterval(step38run,400);
    }
    else if(step===39){
        step1go =setInterval(step39run,400);
    }
    else if(step===40){
        step1go =setInterval(step40run,400);
    }
    else if(step===41){
        step1go =setInterval(step41run,400);
    }
    else if(step===42){
        step42run();
    }
    else if(step===43){
        step43run();
    }
    else if(step===44){
        step44run();
    }
    else if(step===45){
        step45run();
    }
    else if(step===46){
        step46run();
    }
    else if(step===47){
        step47run();
    }
    else if(step===48){
        step48run();
    }
    else if(step===49){
        step49run();
    }
    else if(step===50){
        step50run();
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
        for(let n=1; n<26; n++){
            $(`#b${n}`).attr("style",`background-color:${colors[ranCol]}`);
        }
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
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
}
//step14 실행
function step14run(){
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:25px;`);
    $(`#b${13}`).html("하나2");
}
//step15 실행
function step15run(){
    $(`#b${12}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("진실");
}
//step16 실행
function step16run(){
    $(`#b${12}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("진실");
}
//step17 실행
function step17run(){
    $(`#b${14}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("진실");
}
//step18 실행
function step18run(){
    $(`#b${14}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("거짓");
}
//step19 실행
function step19run(){
    $(`#b${14}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("거짓");
}
//step20 실행
function step20run(){
    $(`#b${8}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("진실");
}
//step21 실행
function step21run(){
    $(`#b${8}`).html("");
    $(`#b${12}`).html("");
    $(`#b${14}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("진실");
}
//step22 실행
function step22run(){
    $(`#b${8}`).html("");
    $(`#b${12}`).html("");
    $(`#b${14}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("진실");
}
//step23 실행
function step23run(){
    $(`#b${8}`).html("");
    $(`#b${12}`).html("");
    $(`#b${14}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("진실");
}
//step24 실행
function step24run(){
    $(`#b${8}`).html("");
    $(`#b${12}`).html("");
    $(`#b${14}`).html("");
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("거짓");
}
//step25 실행
function step25run(){

}
//step26 실행
function step26run(){
    for(let n=1; n<13; n++){
        if(n!=8&&n!=12){
            $(`#b${n}`).html(`${n}`);
        }
    }
    for(let i=15; i<26; i++){
            $(`#b${i}`).html(`${i}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("20");
}
//step27 실행
function step27run(){
    for(let n=1; n<13; n++){
        if(n!=8&&n!=12){
            $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
            $(`#b${i}`).html(`${strings[i]}`);
        }
    }
    for(let i=15; i<26; i++){
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }

    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("20");
}
//step28 실행
function step28run(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }

    $(`#b${13}`).attr("style",`background-color:${colors[0]}; font-size:20px;`);
    $(`#b${13}`).html("30");
}
//step29 실행  for
blockNum=1;
re=1;
function step29run(){
    ranCol=Math.floor(Math.random() * 7+1);
    $(`#b${blockNum}`).attr("style",`background-color:${colors[ranCol]}`);
    blockNum++;
    if(blockNum>5){
        for(let n=1; n<26; n++){
            $(`#b${n}`).attr("style",`background-color:${colors[ranCol]}`);
        }
        blockNum=1;
    }
    if(re===5){
        clearInterval(step29go);
    }

    re++;
}
//step30 실행
function step30run(){
    clearInterval(step1go);
}
//step31 실행
function step31run(){
    clearInterval(step1go);
    blockNum=1;
    re=1;
    step1go =setInterval(step10run,400);
}
//step32 실행
function step32run(){
    clearInterval(step1go);
    $(`#b${14}`).html("5");
}
//step33 실행
function step33run(){
    $(`#b${13}`).html("");
    $(`#b${2}`).html("하나2");
}
//step34 실행
function step34run(){
    $(`#b${14}`).html("150");
}
//step35 실행
function step35run(){
    $(`#b${14}`).html("75");
}
//step36 실행
function step36run(){
    $(`#b${14}`).html("15");
}
//step37 실행
function step37run(){
    for(let n=1; n<26; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
    }
    $(`#b${1}`).html("15");
    $(`#b${14}`).html("");
}
//step38 실행
blockNum=1;
re=1;
function step38run(){
    ranCol=Math.floor(Math.random() * 7+1);
    $(`#b${blockNum}`).attr("style",`background-color:${colors[ranCol]}`);
    blockNum++;
    if(blockNum>25){
        for(let n=1; n<26; n++){
            $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
        }
        blockNum=1;
    }
    if(re===100){
        clearInterval(step1go);
    }

    re++;
}
//step39 실행
blockNum=1;
re=1;
function step39run(){
    ranCol=Math.floor(Math.random() * 7+1);
    $(`#b${blockNum}`).attr("style",`background-color:${colors[ranCol]}`);
    blockNum++;
    if(blockNum>25){
        for(let n=1; n<26; n++){
            $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
        }
        blockNum=1;
    }
    if(re===20){
        clearInterval(step1go);
    }

    re++;
}
//step40 실행
blockNum=1;
re=1;
function step40run(){
    ranCol=Math.floor(Math.random() * 7+1);
    $(`#b${blockNum}`).attr("style",`background-color:${colors[ranCol]}`);
    blockNum++;
    if(blockNum>25){
        for(let n=1; n<26; n++){
            $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
        }
        blockNum=1;
    }
    if(re===20){
        clearInterval(step1go);
    }

    re++;
}
//step41 실행
blockNum=1;
re=1;
function step41run(){
    ranCol=Math.floor(Math.random() * 7+1);
    $(`#b${blockNum}`).attr("style",`background-color:${colors[ranCol]}`);
    blockNum++;
    if(blockNum>25){
        for(let n=1; n<26; n++){
            $(`#b${n}`).attr("style",`background-color:${colors[7]}`);
        }
        blockNum=1;
    }
    if(re===20){
        clearInterval(step1go);
    }

    re++;
}
//step42 실행
function step42run(){
    $(`#b${2}`).html(`9`);
    $(`#b${3}`).html(`10`);
    $(`#b${4}`).html(`15`);
    $(`#b${8}`).html(``);
    $(`#b${12}`).html(``);
    $(`#b${1}`).html(`하나2`);
}
//step43 실행
function step43run(){
    $(`#b${2}`).html(`9`);
}
//step44 실행
function step44run(){
    $(`#b${1}`).html(`하나2`);
}

//팝오버 기능
var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
    return new bootstrap.Popover(popoverTriggerEl)
})


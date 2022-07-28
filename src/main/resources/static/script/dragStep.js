
//컬러 배열
let colors=["#81ecec","#74b9ff","#ffeaa7","#fab1a0","#ff7675","#55efc4","#636e72","#a29bfe"];
//컬러 배열을 랜덤으로 뽑아내는 변수
let ranCol=Math.floor(Math.random() * 7+1);
//문자 배열
let strings=["aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","nn","mm","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","AA","BB","CC","DD"];
//정답을 맞추면 나오는 alert 대사 배열
let successAlertScript=["1이가 무사히 숫자 모임에 소속될 수 있었어요!","1이가 무사히 문자열 소속으로 소속을 옮겼습니다!","한 글자인 1이는 이제 한 글자들끼리 모인 char에 소속되게 되었어요!","이제 1이는 20억을 넘어 더 성잘할 수 있게 되었습니다!","1이의 키가 드러났네요!"];


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
let stepClears=[0,0,0,0,0,0];

// 각 단계별 정답 갯수 배열을 만들어 answer배열의 정답을 체크
let stepAnswerCnt=[1,1,1,1,1,1];
//정답이 들은 배열
let answer=["int","String","char","long","double","while"];
//정답을 입력이 입력되면 1로 바뀌어 정답을 맞췄음을 확인하는 배열
let answerCheck=[0,0,0,0,0,0];

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
        console.log(1);
        console.log($(`#b${i}`));
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
        console.log(1);
        console.log($(`#b${i}`));
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
        console.log(1);
        console.log($(`#b${i}`));
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
        console.log(1);
        console.log($(`#b${i}`));
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[4]}`);
    $(`#b${13}`).html(`${1}`);
}
//step5일 때 실행되는 화면
function setStep5map(){
    let inNum=2;
    for(let n=1; n<13; n++){
        $(`#b${n}`).attr("style",`background-color:${colors[0]}`);
        $(`#b${n}`).html(`${inNum}`);
        inNum++;
    }
    for(let i=14; i<26; i++){
        console.log(1);
        console.log($(`#b${i}`));
        $(`#b${i}`).attr("style",`background-color:${colors[1]}`);
        $(`#b${i}`).html(`${strings[i]}`);
    }
    $(`#b${13}`).attr("style",`background-color:${colors[5]}`);
    $(`#b${13}`).html(`${1}`);
}



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
    else if(step===10){
        step1go =setInterval(step10run,400);
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
//step4 실행
function step5run(){
    $(`#b${13}`).attr("style",`background-color:${colors[6]}`);
    $(`#b${13}`).html("1.1");
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



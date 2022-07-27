
//     $.ajax({
//        type:,
//        url:,
//        contentType:,
//        data:,
//        success:function(res){

//단계 배열과 단계에 맞는 정답 배열이 필요
let step=1;
//단계를 통과했는지 최종 체크
let stepClears=[0,0];

// 각 단계별 정답 갯수 배열을 만들어 answer배열의 정답을 체크
let stepAnswerCnt=[1,1];
//정답이 들은 배열
let answer=["while"];
//정답을 입력이 입력되면 1로 바뀌어 정답을 맞췄음을 확인하는 배열
let answerCheck=[0,0];

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
            '다음 단계로~',
            'success'
        )
        stepClears[step-1]=1;
        sessionStorage.setItem("success","1");
        $("#nextStep").attr("class","btn btn-primary");
    }
}
//드랍이 되면 정답을 검증하고 > 트루를 반환해서 Html에 있는 자바문이 가동되게끔

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

    });
});

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



// 정답 실행 화면 세팅
const screenContainer=document.body.querySelector('.screenContainer');
console.log(screenContainer);
function setScreen(){
    let num=0;
    for(let n=0; n<5; n++){
        for(let i=0; i<5; i++){
            let bl= document.createElement('div');
            bl.setAttribute('class','block');
            bl.setAttribute('id',`b${num}`);
            screenContainer.append(bl);
            console.log(bl);
            num++;
        }
    }

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
            console.log("드랍");
        }
    });
});

//정답 실행화면 세팅 메서드
setScreen();






//     $.ajax({
//        type:,
//        url:,
//        contentType:,
//        data:,
//        success:function(res){


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







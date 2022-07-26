
//     $.ajax({
//        type:,
//        url:,
//        contentType:,
//        data:,
//        success:function(res){


const columns = document.querySelectorAll(".column");
columns.forEach((column) => {
    new Sortable(column, {
        group: "shared",
        animation: 150,
        ghostClass: "blue-background-class",
        onStart:function(e){
            console.log("됐어");
        },
        // onAdd:function(e){
        //     $.ajax({
        //         type:"post",
        //         url:"run",
        //         contentType: "application/json",
        //         data: JSON.stringify(login),
        //         success:function (res){
        //
        //         }
        //
        //     })
        //     console.log("드랍");
        // }
    });
});
const columns2 = document.querySelectorAll(".column2");
columns2.forEach((column2) => {
    new Sortable(column2, {
        group: "shared",
        animation: 150,
        ghostClass: "blue-background-class"
    });
});



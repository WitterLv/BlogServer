function showLogin(){
    var state = document.getElementById("container").style.display;
    console.log(state);
    if(state==="none"){
        $("#container").show(1000);
    }
    if(state!="none"){
        $("#container").hide(1000);
    }
}
function login(){
    $("#loginForm").submit();
}

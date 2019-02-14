function add(){
    $("#tag-span").append('<input class="tag-content" tyle="text"/><input class="delTag" type="button" value="x" onclick="del(this)" />');
}
function del(data){
    console.log(data);
    data.previousElementSibling.remove();
    data.remove();
}
function enter(data){

}

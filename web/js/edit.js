function add(){
    $("#tag-span").append('<input id="tag-content" name="tag-name" list="tag-list" class="tag-content" tyle="text" onfocus="getXhr()"/><datalist id="tag-list"><option select="selected">编辑选择</option></datalist><input class="delTag" type="button" value="x" onclick="del(this)" />');
}
function del(data){
    console.log(data);
    var tagInput = data.previousElementSibling;
    console.log(tagInput);
    tagInput.previousElementSibling.remove();
    tagInput.remove();
    data.remove();
}
function getXhr(){
    var xhr = null;
    if(window.XMLHttpRequest){
        xhr = new XMLHttpRequest();
    }else{
        xhr = new ActiveXObject('MicroSoft.XMLHttp');
    }
    xhr.dataType = "json";
    xhr.open('get','edit/tagQuery.do','true');
    xhr.onreadystatechange = handle(xhr);
    xhr.send(null);
}
function handle(xhr){
    if(xhr.readyState == 4 && xhr.status == 200){

    }else{
        $("#tag-list").empty();
        var option = document.createElement("option");
        option.value = "HTML";
        $("#tag-list").append(option);
    }
}

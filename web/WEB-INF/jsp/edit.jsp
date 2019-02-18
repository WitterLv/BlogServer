<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2019/2/13
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--markdown插件样式-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/editormd/examples/css/style.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/editormd/css/editormd.css" />
    <!--网页基本样式-->
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/base.css">
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/index.css">
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/m.css">
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/edit.css">

    <script src="../../../BlogServer/js/jquery-3.3.1.min.js"></script>
    <script>
        window.onload = function ()
        {
            var oH2 = document.getElementsByTagName("h2")[0];
            var oUl = document.getElementsByTagName("ul")[0];
            oH2.onclick = function ()
            {
                var style = oUl.style;
                style.display = style.display == "block" ? "none" : "block";
                oH2.className = style.display == "block" ? "open" : ""
            }

        }
    </script>
</head>
<body>
<header><!--页头开始-->
    <div class="tophead">
        <div class="logo"><a href="../../../BlogServer/index.html">Lv's Blog</a></div>
        <div id="mnav">
            <h2><span class="navicon"></span></h2>
            <ul>
                <li><a href="../../../BlogServer/index.html">HOME</a></li>
                <li><a href="ITEM2.html">写博客</a></li>
                <li><a href="ITEM3.html">博客管理</a></li>
                <li><a href="ITEM4.html">广告管理</a></li>
                <li><a href="ITEM5.html">个人管理</a></li>
            </ul>
        </div>
        <nav class="topnav" id="topnav">
            <ul>
                <li><a href="../../../BlogServer/index.html">HOME</a></li>
                <li><a href="ITEM2.html">写博客</a></li>
                <li><a href="ITEM3.html">博文管理</a></li>
                <li><a href="ITEM4.html">广告管理</a></li>
                <li><a href="ITEM5.html">个人信息</a></li>
            </ul>
        </nav>
    </div>
</header><!--页头结束-->
<div class="banner"><!--banner-->
    <div><h1>小小酥油茶的博客</h1></div>
    <div class="sub">邮箱：email_lzc@163.com</div>
</div>
<article>
    <form id="editSaveForm" action="edit/editSave.do" method="post">
        <div class="blog-title">
            <input class="title-content" type="text" name="title" placeholder="&nbsp;&nbsp;输入文章标题"/>
        </div>
        <div class="editormd" id="test-editormd">
            <textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc">[TOC]

    #### Disabled options

    - TeX (Based on KaTeX);
    - Emoji;
    - Task lists;
    - HTML tags decode;
    - Flowchart and Sequence Diagram;

    #### Editor.md directory

        editor.md/
                lib/
                css/
                scss/
                tests/
                fonts/
                images/
                plugins/
                examples/
                languages/
                editormd.js
                ...

    ```html
    &lt;!-- English --&gt;
    &lt;script src="../dist/js/languages/en.js"&gt;&lt;/script&gt;

    &lt;!-- 繁體中文 --&gt;
    &lt;script src="../dist/js/languages/zh-tw.js"&gt;&lt;/script&gt;
    ```
            </textarea>
            <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
            <textarea class="editormd-html-textarea" name="text"></textarea>
        </div>
        <script src="<%=request.getContextPath()%>/editormd/examples/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/editormd/editormd.min.js"></script>
        <script type="text/javascript">
            var testEditor;

            $(function() {
                testEditor = editormd("test-editormd", {
                    width   : "90%",
                    height  : 640,
                    syncScrolling : "single",
                    path    : "<%=request.getContextPath()%>/editormd/lib/",
                    imageUpload : true,
                    imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                    //配置处理图片上传的action
                    imageUploadURL : "edit/uploadImage.do",
                    //这个配置在simple.html中并没有，但是为了能够提交表单，使用这个配置可以让构造出来的HTML代码直接在第二个隐藏的textarea域中，方便post提交表单。
                    saveHTMLToTextarea : true
                });

                /*
                // or
                testEditor = editormd({
                    id      : "test-editormd",
                    width   : "90%",
                    height  : 640,
                    path    : "../lib/"
                });
                */
            });
        </script>
        <div class="abstract">
            <textarea class="abs-content" type="text" name="abstract" placeholder="&nbsp;&nbsp;输入文章摘要"></textarea>
        </div>
        <div class="tag-div" >
            <span id="tag-span">添加标签：</span>
            <input id="tag-content" name="tag-name" list="tag-list" class="tag-content" tyle="text" onfocus="getXhr()">
                <datalist id="tag-list">
                    <option selected="selected">编辑选择</option>
                </datalist>
            </input>
            <input class="delTag" type="button" value="x" onclick="del(this)" />
            <input class="addTag" type="button" value="+" onclick="add()"/>
        </div>
        <div class="save-div">
            <input class="saveBlog" type="submit" value="保存"/>
            <input class="backIndex" type="button" value="返回"/>
        </div>
    </form>
    <script src="<%=request.getContextPath()%>/js/edit.js"></script>
</article>
<div class="blank"></div>
<footer>
    <p>Established By <a href="/">吕志成个人博客</a> <a href="/">蜀ICP备11002373号-1</a></p>
</footer>
<script src="../../../BlogServer/js/nav.js"></script>
</body>
</html>

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
    <title>My Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/base.css">
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/index.css">
    <link rel="stylesheet" type="text/css" href="../../../BlogServer/css/m.css">
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

            document.getElementById("container").style.display = 'none';
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
                <li><a href="ITEM2.html">ITEM2</a></li>
                <li><a href="ITEM3.html">ITEM3</a></li>
                <li><a href="ITEM4.html">ITEM4</a></li>
                <li><a href="ITEM5.html">ITEM5</a></li>
            </ul>
        </div>
        <nav class="topnav" id="topnav">
            <ul>
                <li><a href="../../../BlogServer/index.html">HOME</a></li>
                <li><a href="ITEM2.html">ITEM2</a></li>
                <li><a href="ITEM3.html">ITEM3</a></li>
                <li><a href="ITEM4.html">ITEM4</a></li>
                <li><a href="ITEM5.html">ITEM5</a></li>
            </ul>
        </nav>
    </div>
</header><!--页头结束-->
<div class="banner"><!--banner-->
    <div><h1>小小酥油茶的博客</h1></div>
    <div class="sub">邮箱：email_lzc@163.com</div>
</div>
<article>
    <div class="blogs">


    </div>
    <div class="sidebar">
        <div class="about">
            <div class="avatar"> <img src="../../../BlogServer/images/avatar.png" alt=""> </div>
            <p class="abname">吕志成</p>
            <p class="abposition">java后端工程师</p>
            <div class="abtext"> 一个怀揣赘肉的95后青年，主攻java后端技术，在这里和大家分享自己学习的经历，一点一点码出精彩人生。 </div>
        </div>
        <div class="cloud">
            <h2 class="hometitle">标签云</h2>
            <ul>
                <a href="/">JAVA</a> <a href="/">Linux</a> <a href="/">HTML</a> <a href="/">JavaScript</a> <a href="/">tomcat</a> <a href="/">Spring</a> <a href="/">Mybatis</a> <a href="/">CSS</a><a href="/">大数据</a> <a href="/">微信小程序</a> <a href="/">数据库</a> <a href="/">开发工具</a>
            </ul>
        </div>
        <div class="paihang">
            <h2 class="hometitle">点击排行</h2>
            <ul>
                <li><b><a href="../../../BlogServer/download/div/2015-04-10/746.html" target="_blank">柠檬绿兔小白30...</a></b>
                    <p><i><img src="../../../BlogServer/images/t02.jpg"></i>展示的是首页html，博客页面布局格式简单，没有复杂的背景，色彩局部点缀，动态的幻灯片展示，切换卡，标...</p>
                </li>
                <li><b><a href="../../../BlogServer/download/div/2014-02-19/649.html" target="_blank"> 2014草根寻梦30...</a></b>
                    <p><i><img src="../../../BlogServer/images/b03.jpg"></i>2014第一版《草根寻梦》个人博客模板简单、优雅、稳重、大气、低调。专为年轻有志向却又低调的草根站长设...</p>
                </li>
                <li><b><a href="../../../BlogServer/download/div/2013-08-08/571.html" target="_blank">黑色质感时间轴30...</a></b>
                    <p><i><img src="../../../BlogServer/images/b04.jpg"></i>黑色时间轴html5个人博客模板颜色以黑色为主色，添加了彩色作为网页的一个亮点，导航高亮显示、banner图片...</p>
                </li>
            </ul>
        </div>
        <div class="paihang">
            <h2 class="hometitle">站长推荐</h2>
            <ul>
                <li><b><a href="../../../BlogServer/download/div/2015-04-10/746.html" target="_blank">【活动作品】柠檬绿兔小白个人博客模板30...</a></b>
                    <p><i><img src="../../../BlogServer/images/t02.jpg"></i>展示的是首页html，博客页面布局格式简单，没有复杂的背景，色彩局部点缀，动态的幻灯片展示，切换卡，标...</p>
                </li>
                <li><b><a href="../../../BlogServer/download/div/2014-02-19/649.html" target="_blank"> 个人博客模板（2014草根寻梦）30...</a></b>
                    <p><i><img src="../../../BlogServer/images/b03.jpg"></i>2014第一版《草根寻梦》个人博客模板简单、优雅、稳重、大气、低调。专为年轻有志向却又低调的草根站长设...</p>
                </li>
                <li><b><a href="/download/div/2013-08-08/571.html" target="_blank">黑色质感时间轴html5个人博客模板30...</a></b>
                    <p><i><img src="../../../BlogServer/images/b04.jpg"></i>黑色时间轴html5个人博客模板颜色以黑色为主色，添加了彩色作为网页的一个亮点，导航高亮显示、banner图片...</p>
                </li>
            </ul>
        </div>
        <div class="links">
            <h2 class="hometitle">友情链接</h2>
            <ul>
                <li><a href="http://www.yangqq.com" title="吕志成个人博客">吕志成个人博客</a></li>
                <li><a href="http://www.yangqq.com" title="吕志成个人博客">吕志成个人博客</a></li>
                <li><a href="http://www.yangqq.com" title="吕志成个人博客">吕志成个人博客</a></li>
            </ul>
        </div>
        <div class="weixin">
            <h2 class="hometitle">个人微信</h2>
            <ul>
                <img src="../../../BlogServer/images/wx.jpg">
            </ul>
        </div>
    </div>
</article>
<div class="blank"></div>
<footer>
    <p>Established By <a href="/">吕志成个人博客</a> <a href="/">蜀ICP备11002373号-1</a></p>
</footer>
<script src="../../../BlogServer/js/nav.js"></script>
<script src="../../../BlogServer/js/index.js"></script>
</body>
</html>

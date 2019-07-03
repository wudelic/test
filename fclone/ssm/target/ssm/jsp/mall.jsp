<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>商城</title>
    <link href="<%=path %>/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=path %>/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- web-font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
    <!-- web-font -->
    <!-- js -->
    <script src="../static/js/jquery.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- js -->

    <!-- start-smoth-scrolling -->

    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
</head>
<body>
<!-- header -->
<div class="header">
    <div class="head-bg">
        <!-- container -->
        <div class="container">
            <div class="head-logo">
                <a href="index.jsp"><img src="../static/images/logo1.png" alt="" /></a>
            </div>
            <div class="top-nav">
                <span class="menu"><img src="../static/images/menu.png" alt=""></span>
                <ul class="cl-effect-1">
                    <li><a href="<%=path %>/jsp/index.jsp">主页</a></li>
                    <li><a href="<%=path %>/jsp/mall.jsp">商场</a></li>
                    <li><a href="<%=path %>/jsp/login.jsp">登陆</a></li>
                    <li><a href="<%=path %>/jsp/resign.jsp">注册</a></li>
                    <li>用户名：${consumer.username} <a href="<%=path %>/logout">退出登录</a></li>
                    <li><a href="<%=path %>/jsp/Rorder.jsp">查看订单</a></li>
                </ul>
                <!-- script-for-menu -->
                <script>
                    $( "span.menu" ).click(function() {
                        $( "ul.cl-effect-1" ).slideToggle( 300, function() {
                            // Animation complete.
                        });
                    });
                </script>
                <!-- /script-for-menu -->
            </div>
            <div class="clearfix"> </div>
        </div>
        <!-- //container -->
    </div>
    <!-- container -->
    <div class="container">
        <!-- banner Slider starts Here -->

        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider3").responsiveSlides({
                    auto: true,
                    pager: false,
                    nav: false,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
        </script>
        <!--//End-slider-script -->
        <div  id="top" class="callbacks_container">
            <ul class="rslides" id="slider3">

                <li>
                    <div class="head-info">
                        <h1>WelCome!<span>To Buy</span></h1>
                    </div>
                </li>
            </ul>
        </div>

    </div>
    <!-- container -->
</div>
<!-- //header -->
<!-- banner-grids -->
<div class="banner-grids">
    <!-- container -->
    <div class="container">
        <div class="banner-grid-info">
            <h3>商品推荐</h3><br>

        </div>
        <div class="top-grids">
            <div class="top-grid">
                <a href="#"> <img src="../static/images/7.jpg" alt="" /></a>
                <div class="top-grid-info">
                    <h3>Kiwi 鸟手绘陶瓷动物项链吊坠 </h3>
                    <p>每个小的动物小雕像都是用精细瓷制成的雕塑工艺，完全以手工绘制细节完成。</p>
                </div>
            </div>
            <div class="top-grid">
                <a href="#"> <img src="../static/images/8.jpg" alt="" /></a>
                <div class="top-grid-info">
                    <h3>米诺达 棉质徽章 </h3>
                    <p>刺绣制造商的米诺达制造·销售。富有复古感的迪士尼·玩具总动员的熨斗贴服。</p>
                </div>
            </div>
            <div class="top-grid">
                <a href="#"> <img src="../static/images/9.jpg" alt="" /></a>
                <div class="top-grid-info">
                    <h3>新西兰Kiwi旅行汽车贴花</h3>
                    <p>乙烯基贴纸图像是围绕轮廓切割的贴纸有粘合剂背衬，可贴在任何光滑平整的表面 </p>
                </div>
            </div>
            <div class="top-grid">
                <img src="../static/images/10.jpg" alt="" />
                <div class="top-grid-info">
                    <h3>成人和儿童毛绒玩具</h3>
                    <p>公司生产的所有柔软玩具都适合新生儿。您可以随处携带它们，它们总是会带来许多乐趣。</p>
                </div>
            </div>
            <div class="clearfix"> </div>
            <div class="top-grids">
                <div class="top-grid">
                    <a href="#"> <img src="../static/images/11.jpg" alt="" /></a>
                    <div class="top-grid-info">
                        <h3>Never Let You Go</h3>
                        <p> 狐狸从一个老巫婆的餐桌上偷了一顿周日的烤肉</p>
                    </div>
                </div>
                <div class="top-grid">
                    <a href="#"> <img src="../static/images/12.jpg" alt="" /></a>
                    <div class="top-grid-info">
                        <h3>Beasts By Sigikid</h3>
                        <p>琪琪梦想着飞行</p>
                    </div>
                </div>
                <div class="top-grid">
                    <a href="#"><img src="../static/images/13.jpg" alt="" /></a>
                    <div class="top-grid-info">
                        <h3>鸭子装饰品玩偶屋装饰</h3>
                        <p>手工绘制和铸造高品质树脂，耐用防水，可装饰您的迷你花园。</p>
                    </div>
                </div>
                <div class="top-grid">
                    <a href="#"> <img src="../static/images/14.jpg" alt="" /></a>
                    <div class="top-grid-info">
                        <h3>法国斗牛犬毛绒玩偶</h3>
                        <p>它拥有较薄的毛皮和柔软的身体，嘴巴可移动。 您把手放在身体下方，锻炼嘴巴。</p>
                    </div>
                </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //banner-grids -->
<!-- before -->

<!-- //before -->
<!-- footer -->
<div class="footer">
    <!-- container -->
    <div class="container">
        <div class="footer-right">
            <div class="footer-nav">
                <ul>
                    <li><a href="<%=path %>/jsp/index.jsp">主页</a></li>
                    <li><a href="<%=path %>/jsp/mall.jsp">商场</a></li>
                    <li><a href="<%=path %>/jsp/login.jsp">登陆</a></li>
                    <li><a href="<%=path %>/jsp/resign.jsp">注册</a></li>
                </ul>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!-- //container -->
</div>
<!-- //footer -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
        var defaults = {
              containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
         };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<a href="#" id="toTop" style="display: block;">
    <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- content-Get-in-touch -->

</body>
</html>
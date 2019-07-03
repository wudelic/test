<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
%>
<!--主页-->
<html>
<head>
    <title>Home</title>
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
                <a href="<%=path %>/jsp/index.jsp"><img src="<%=path %>/static/images/logo1.png" alt="" /></a>
            </div>
            <div class="top-nav">
                <span class="menu"><img src="<%=path %>/static/images/menu.png" alt=""></span>
                <ul class="cl-effect-1">
                    <li><a href="<%=path %>/jsp/index.jsp">主页</a></li>
                    <li><a href="<%=path %>/jsp/mall.jsp">商场</a></li>
                    <li><a href="<%=path %>/jsp/login.jsp">登陆</a></li>
                    <li><a href="<%=path %>/jsp/resign.jsp">注册</a></li>
                    <li>用户名：${consumer.username} <a href="<%=path %>/logout">退出登录</a></li>
                    <li><a href="<%=path %>/ConsumerRorder?uid=${consumer.username}">查看订单</a></li>
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
                        <h1>WelCome!<span>To travel</span></h1>
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
    <div class="container" >
        <div class="banner-grid-info">
            <h3>国外</h3>
        </div>
        <div class="top-grids">
            <div class="top-grid">
                <a href="<%=path %>/jsp/checkloginforbooking.jsp"><img src="../static/images/amsterdam.jpg" alt="" title="点击查看更多" /></a>
                <div class="top-grid-info">
                    <h3>阿姆斯特丹</h3>
                    <p>阿姆斯特丹（Amsterdam），荷兰首都及最大城市，人口约110万。位于该国西部省份北荷兰省，世界著名的国际大都市。</p>
                </div>
            </div>
            <div class="top-grid">
                <a href="<%=path %>/jsp/checkloginforbooking.jsp"><img src="../static/images/kuala_lumpur.jpg" alt="" title="点击查看更多"/></a>
                <div class="top-grid-info">
                    <h3>吉隆坡</h3>
                    <p>吉隆坡（英语：Kuala Lumpur，简称“隆市”或“KL”，全称“吉隆坡联邦直辖区”）是马来西亚的首都兼最大城市，2018年11月，世界城市排名发布，吉隆坡进入世界一线城市行列</p>
                </div>
            </div>
            <div class="top-grid">
                <a href="<%=path %>/jsp/checkloginforbooking.jsp"><img src="../static/images/paris.jpg" alt="" title="点击查看更多"/></a>
                <div class="top-grid-info">
                    <h3>巴黎</h3>
                    <p>巴黎（Paris），是法兰西共和国的首都和最大城市，也是法国的政治、经济、文化和商业中心，世界五个国际大都市之一，并被GaWC评为Alpha+级世界一线城市。</p>
                </div>
            </div>
            <div class="top-grid">
                <a href="<%=path %>/jsp/checkloginforbooking.jsp"><img src="../static/images/london.jpg" alt="" title="点击查看更多"/></a>
                <div class="top-grid-info">
                    <h3>伦敦</h3>
                    <p>伦敦(London)，是大不列颠及北爱尔兰联合王国首都，世界第一大金融中心，与纽约和香港并称为“纽伦港”。</p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //banner-grids -->

<!-- before -->
<div class="banner-grids">
    <!-- container -->
    <div class="container" >
        <div class="banner-grid-info">
            <h3>国内</h3>
        </div>
        <div class="top-grids">
            <div class="top-grid">
                <a href="<%=path %>/jsp/checkloginforbooking.jsp"><img src="../static/images/hongkong.jpg" alt="" title="点击查看更多"/></a>
                <div class="top-grid-info">
                    <h3>香港</h3>
                    <p>香港，简称“港”（HK），位于中国南部、珠江口以东，西与中国澳门隔海相望，北与深圳市相邻，南临珠海市万山群岛，区域范围包括香港岛、九龙、新界和周围262个岛屿，陆地总面积1106.34平方公里，海域面积1648.69平方公里。</p>
                </div>
            </div>
            <div class="top-grid">
                <a href="<%=path %>/jsp/checkloginforbooking.jsp"><img src="../static/images/shanghai.jpg" alt="" title="点击查看更多"/></a>
                <div class="top-grid-info">
                    <h3>上海</h3>
                    <p>上海位于中国华东地区，界于东经120°52′-122°12′，北纬30°40′-31°53′之间，地处长江入海口，东隔东中国海与日本九州岛相望，南濒杭州湾，北、西与江苏、浙江两省相接，上海市总面积6340.5平方千米。</p>
                </div>
            </div>
            <div class="top-grid">
                <a href="<%=path %>/jsp/checkloginforbooking.jsp"><img src="../static/images/macau.jpg" alt="" title="点击查看更多"/></a>
                <div class="top-grid-info">
                    <h3>澳门</h3>
                    <p>位于中国广东省中南部，地处珠江三角洲西岸。北与广东省珠海市相接，西与珠海市的湾仔和横琴相望，东与香港、深圳隔海相望。相距60公里，南临中国南海。由澳门半岛和氹仔、路环二岛组成。</p>
                </div>
            </div>
            <div class="top-grid">
                <a href="<%=path %>/jsp/checkloginforbooking.jsp"><img src="../static/images/chongqin.jpg" alt="" title="点击查看更多"/></a>
                <div class="top-grid-info">
                    <h3>重庆</h3>
                    <p>重庆地处中国内陆西南部，东邻湖北、湖南，南靠贵州，西接四川，北连陕西。总面积8.24万平方千米，辖38个区县（自治县）。</p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>
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


<script type="text/javascript">
    WIDGET = {FID: '8nIl5Dj0Au'}
</script>
<script type="text/javascript" src="https://apip.weatherdt.com/float/static/js/r.js?v=1111"></script>
</body>
</html>
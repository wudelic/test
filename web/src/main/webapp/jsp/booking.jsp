<%@ page import="com.zh.pojo.Consumer" %>
<!DOCTYPE html>
<%
    String path = request.getContextPath();
    Consumer consumer = (Consumer)request.getSession().getAttribute("consumer");
    String uid = consumer.getUsername();
%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%

%>
<html>
<head>
    <title>Home</title>
    <link href="<%=path %>/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<%=path %>/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- web-font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <!-- web-font -->
    <!-- js -->
    <script src="<%=path %>/static/js/jquery.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- js -->
    <script src="js/modernizr.custom.js"></script>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <style>
        body{padding: 20px;}
        .demo-input{padding-left: 10px; height: 38px; min-width: 262px; line-height: 38px; border: 1px solid #e6e6e6;  background-color: #fff;  border-radius: 2px;}
        .demo-footer{padding: 50px 0; color: #999; font-size: 14px;}
        .demo-footer a{padding: 0 5px; color: #01AAED;}
    </style>
</head>
<body>
<div class="head-bg green">
    <!-- container -->
    <div class="container">
        <div class="head-logo">
            <a href="index.html"><img src="<%=path %>/static/images/logo1.png" alt="" /></a>
        </div>
        <div class="top-nav">
            <span class="menu"><img src="images/menu.png" alt=""></span>
            <ul class="cl-effect-1">
                <li><a href="<%=path %>/jsp/index.jsp">主页</a></li>
                <li><a href="<%=path %>/jsp/mall.jsp">商场</a></li>
                <li><a href="<%=path %>/jsp/login.jsp">登陆</a></li>
                <li><a href="<%=path %>/jsp/resign.jsp">注册</a></li>
                <li>用户名：${consumer.username} <a href="<%=path %>/logout">退出登录</a></li>
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
<!-- booking -->
<div class="booking">
    <!-- container -->
    <div class="container">

        <div class="booking-info">
            <h3>预定</h3>
        </div>
        <div class="booking-form">
            <!---strat-date-piker---->
            <link rel="stylesheet" href="<%=path %>/static/css/jquery-ui.css" />
            <script src="<%=path %>/static/js/jquery-ui.js"></script>
            <script>
                $(function() {
                    $( "#datepicker,#datepicker1" ).datepicker();
                });
            </script>
            <!---/End-date-piker---->
            <link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
            <link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
            <script type="text/javascript" src="<%=path %>/static/js/JFCore.js"></script>
            <script type="text/javascript" src="<%=path %>/static/js/JFForms.js"></script>
            <!-- Set here the key for your domain in order to hide the watermark on the web server -->
            <script type="text/javascript">
                (function() {
                    JC.init({
                        domainKey: ''
                    });
                })();
            </script>
            <div class="online_reservation">
                <div class="b_room">
                    <div class="booking_room">
                        <div class="reservation">
                            <form action="<%=path %>/ConsumeraddRorder" method="post">
                                <input type="hidden" name="uid" value="<%=uid%>">
                                <input type="hidden" name="totalprice" value="10000">
                            <ul>
                                <li class="span1_of_1 left">
                                    <h5>出发地</h5>
                                    <div class="book_date">
                                            <input type="text" placeholder="出发城市" required=""  name="starcity">
                                    </div>
                                </li>
                                <li  class="span1_of_1 left">
                                    <h5>目的地</h5>
                                    <div class="book_date">
                                            <input type="text" placeholder="目的城市" required="" name="endcity">
                                    </div>
                                </li>
                                <li  class="span1_of_1 left">
                                    <h5>出发时间</h5>
                                    <div class="book_date">
                                        <input class="date laydate" type="text"  placeholder="请选择日期"  required="" name="startime">
                                    </div>
                                </li>
                                <li  class="span1_of_1 left">
                                    <h5>结束时间</h5>
                                    <div class="book_date">
                                            <input class ="date laydate" type="text"  placeholder="请选择日期" id="test2" required="" name="endtime">
                                    </div>
                                </li>
                                <li class="span1_of_1">
                                    <h5>出行工具</h5>
                                    <!----------start section_room----------->
                                    <div class="section_room">
                                        <select id="tool" selected="2" class="frm-field required" name="tool" >
                                            <option value="飞机" selected>飞机</option>
                                            <option value="邮轮" >邮轮</option>
                                            <option value="动车" >动车</option>
                                            <option value="火车" >火车</option>
                                        </select>
                                    </div>
                                </li>
                                <li class="span1_of_3">
                                    <div class="date_btn">
                                            <input type="submit" value="确认订单" onsubmit="return docheck()" />
                                    </div>
                                </li>
                                <div class="clearfix"></div>
                            </ul>
                            </form>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!---->
        </div>
        <div class="clearfix"></div>

        <div class="booking-grids">
            <h3>阿姆斯特丹</h3>
            <div class="col-md-7 booking-grid-left">
                <h4>阿姆斯特丹（荷兰语：Amsterdam[ɑmstərˈdɑm]），有时也称其为荷京，是荷兰首都及最大城市，位于该国西部省份北荷兰省。根据2008年1月的统计数据，这座城市人口达747,290人；而该城市所处的兰斯台德都市圈，大约有670万人口，是欧洲第6大都市圈。</h4>
                <p>其名称源于Amstel dam，[6] 这表明了该城市的起源：一个位于阿姆斯特尔河上的水坝，即今水坝广场址。12世纪晚期一个小渔村建于此，而后由于贸易的迅猛发展，阿姆斯特丹在荷兰黄金时代一跃而成为世界上最重要的港口。在那个时代，该城是金融和钻石的中心。[7] 19和20世纪，该城扩展，许多新的街坊与近郊住宅区形成。</p>
                <p>阿姆斯特丹是荷兰的金融和文化首都[8]。许多荷兰大型机构的总部都设于此，其中包括飞利浦和ING等7家世界500强企业的总部[9]。作为泛欧交易所的一部分，阿姆斯特丹证券交易所坐落于城市中心。</p>
            </div>
            <div class="col-md-5 booking-grid-right">
                <img src="<%=path %>/static/images/amsterdam.jpg" alt="">
            </div>
            <div class="clearfix"> </div>
        </div><div class="booking-grids">
        <h3>吉隆坡</h3>
        <div class="col-md-7 booking-grid-left">
            <h4>吉隆坡（荷兰语：Amsterdam[ɑmstərˈdɑm]），有时也称其为荷京，是荷兰首都及最大城市，位于该国西部省份北荷兰省。根据2008年1月的统计数据，这座城市人口达747,290人；而该城市所处的兰斯台德都市圈，大约有670万人口，是欧洲第6大都市圈。</h4>
            吉隆坡（英语：Kuala Lumpur，简称“隆市”或“KL”，全称“吉隆坡联邦直辖区”）是马来西亚的首都兼最大城市，2018年11月，世界城市排名发布，吉隆坡进入世界一线城市行列
        </div>
        <div class="col-md-5 booking-grid-right">
            <img src="<%=path %>/static/images/kuala_lumpur.jpg" alt="">
        </div>
        <div class="clearfix"> </div>
    </div><div class="booking-grids">
        <h3>巴黎</h3>
        <div class="col-md-7 booking-grid-left">
            <h4>巴黎（荷兰语：Amsterdam[ɑmstərˈdɑm]），有时也称其为荷京，是荷兰首都及最大城市，位于该国西部省份北荷兰省。根据2008年1月的统计数据，这座城市人口达747,290人；而该城市所处的兰斯台德都市圈，大约有670万人口，是欧洲第6大都市圈。</h4>
            <p>巴黎（Paris），是法兰西共和国的首都和最大城市，也是法国的政治、经济、文化和商业中心，世界五个国际大都市之一，并被GaWC评为Alpha+级世界一线城市。</p>
        </div>
        <div class="col-md-5 booking-grid-right">
            <img src="<%=path %>/static/images/paris.jpg" alt="">
        </div>
        <div class="clearfix"> </div>
    </div>

    </div>

</div>
<!-- booking -->
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




<script src="<%=path %>/static/laydate/laydate.js"></script> <!-- 改成你的路径 -->
<script>
    $(".laydate").each(function(){
        laydate.render({
            elem: this, //指定元素  表示当前的元素
            type: 'datetime', //date日期  time时间  year年  month月份
            theme: '#009688'  //主题  颜色改变
        });
    })

</script>
<script type="text/javascript">
    function docheck() {
        if((<%=session.getAttribute("consumer")%>==null))
        {
            alert("请先登录");
            return false;
        }

    }

</script>
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

<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- content-Get-in-touch -->
<script type="text/javascript">
    WIDGET = {FID: '8nIl5Dj0Au'}
</script>
<script type="text/javascript" src="https://apip.weatherdt.com/float/static/js/r.js?v=1111"></script>
</body>
</html>
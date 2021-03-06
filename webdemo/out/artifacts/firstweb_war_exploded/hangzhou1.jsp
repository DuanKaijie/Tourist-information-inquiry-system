<%--
  Created by IntelliJ IDEA.
  User: windows
  Date: 2018/1/9
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="city.City" %>
<%
    request.setCharacterEncoding("UTF-8");
    City XiHu = new City();
    String SightName = (String)(session.getAttribute("Cities"));
    XiHu.setMainName(SightName);
    AccountBean account = (AccountBean)session.getAttribute("account");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">

    <!-- PAGE TITLE -->
    <title><%=XiHu.MainName%><%=XiHu.m_cityNum%></title>


    <!-- ===================================
        NORMALIZE CSS
    ==================================== -->
    <link rel="stylesheet" href="/css/normalize.css">

    <!-- ===================================
        BOOTSTRAP
    ==================================== -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">

    <!-- ===================================
        GOOGLE FONTS
    ==================================== -->
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:600,700,400,300' rel='stylesheet' type='text/css'>

    <!-- ===================================
        FONTS ICON
    ==================================== -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">

    <!-- ===================================
        PLUGIN
    ==================================== -->
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/slider-pro.css">
    <link rel="stylesheet" href="/css/owl.carousel.css">
    <link rel="stylesheet" href="/css/owl.theme.css">
    <link rel="stylesheet" href="/css/owl.transitions.css">
    <link rel="stylesheet" href="/css/animate.css">

    <!-- ===================================
        MAIN STYLESHEET
    ==================================== -->
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/responsive.css" />
    <link rel="stylesheet" href="/css/color-green.css" id="colors" />

    <!--===================
            MAP
     ===================== -->
    <link href="/css/jquery.searchableSelect.css" rel="stylesheet" type="text/css">
    <script src="/js/jquery-1.11.1.min.js"></script>
    <script src="/js/jquery.searchableSelect.js"></script>

    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <style type="text/css">
        #panel {
            position: absolute;
            background-color: white;
            max-height: 90%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 280px;
        }
    </style>
    <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.4.3&key=eae4b47cdabec4d4bf90db23d97fc923"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>


    <!--[if lt IE 9]>
    <script src="/js/html5shiv.min.js"></script>
    <script src="/js/respond.min.js"></script>
    <script type="text/javascript" src="/js/selectivizr-min.js"></script>
    <script src="http://s3.amazonaws.com/nwapi/nwmatcher/nwmatcher-1.2.5-min.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/files/css3-mediaqueries.js"></script>
    <script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
    <script src="/lib/echarts.js"></script>
    <script src="/lib/infographic.js"></script>
    <script src="/lib/require.js"></script>

    <![endif]-->



</head>

<body>
<!-- ===================================
    PRELOADER
==================================== -->
<%--<div class="preloader">--%>
    <%--<div class="status"></div>--%>
<%--</div>--%>


<!-- ===================================
    HEADER
==================================== -->
<header>
    <!-- Navigation Menu start-->
    <script src="/lib/echarts.js"></script>
    <nav class="navbar clean-main-menu" role="navigation">
        <div class="container">

            <!-- Navbar Toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Logo -->
                <a class="navbar-brand" href="/index.html"><img class="logo" id="logo" src="/images/logo.png" alt="Page" height='35px' width='35px' ></a>

            </div>
            <!-- Navbar Toggle End -->

            <!-- navbar-collapse start-->
            <div id="nav-menu" class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav clean-menu-wrapper">
                    <li class="active">
                        <a href="#clean-slider">主页</a>
                    </li>

                    <li>
                        <a href="#about"><%=SightName%>概况</a>
                    </li>
                    <li>
                        <a href="#featured-works"><%=SightName%>必体验</a>
                    </li>
                    <li>
                        <a href="#offer">景点</a>
                    </li>
                    <li>
                        <a href="#pricing">美食购物</a>
                    </li>
                    <li>
                        <a href="#testimonial">实用信息</a>
                    </li>
                    <li>
                        <a href="#comment">点评</a>
                    </li>
                    <li>
                        <a href="/hangzhou1.jsp">欢迎，<%=account.getUsername()%>！</a>
                    </li>
                    <li>
                        <input type="button" onclick="javascript:zhuxiao()" value="注销"/>
                    </li>
                </ul>
            </div>
            <!-- navbar-collapse end-->

        </div>
    </nav>
    <!-- Navigation Menu end-->
</header>
<script>
function zhuxiao(){
<%--<%session.removeAttribute("account");--%>
<%--response.sendRedirect("/login1.jsp");%>--%>
}
</script>
    <%--MAIN SLIDER--%>

<!---->

<section class="slider-pro clean-slider" id="clean-slider">
    <div class="sp-slides">
        <!-- Slides -->
        <div class="sp-slide clean-main-slides">
            <div class="clean-img-overlay"></div>

            <img class="sp-image" src="/images/slider/1.jpg" alt="Slider 1"/>

            <h1 class="sp-layer clean-slider-text-big"
                data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
                <span class="clean-color-contras">游·乐</span> - 谁把曲子讴，荷花十里桂三秋。
            </h1>
            <p class="sp-layer"
               data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="down">
                欢迎来到<%=SightName%>
            </p>

        </div>
        <!-- Slides End -->

        <!-- Slides -->
        <div class="sp-slide clean-main-slides">
            <div class="clean-img-overlay"></div>
            <img class="sp-image" src="/images/slider/2.jpg" alt="Slider 2"/>

            <h1 class="sp-layer clean-slider-text-big"
                data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
                <span class="clean-color-contras">游·乐</span> - 谁把曲子讴，荷花十里桂三秋。
            </h1>

            <p class="sp-layer"
               data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="down">
                一个你一生必去的地方
            </p>
        </div>
        <!-- Slides End -->

        <!-- Slides -->
        <div class="sp-slide clean-main-slides">
            <div class="clean-img-overlay"></div>

            <img class="sp-image" src="/images/slider/3.jpg" alt="Slider 3"/>

            <h1 class="sp-layer clean-slider-text-big"
                data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
                <span class="clean-color-contras">游·乐</span> - 谁把曲子讴，荷花十里桂三秋。
            </h1>

            <p class="sp-layer"
               data-position="center" data-vertical="15%" data-show-delay="1000" data-hide-delay="200" data-show-transition="left" data-hide-transition="down">
                体验人生的极致乐趣
            </p>

        </div>
    </div>
</section>



<!-- ===================================
    ABOUT SECTION
==================================== -->


<!-- ===================================
    SCREENSHOOT
==================================== -->
<section class="clean-custom-sec clean-section-wrapper background-two">
    <div class="container">
        <div class="row">
            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras"><%=SightName%>概况</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1"></p>
            </div>
            <!-- Section Header End -->

            <div class="col-md-6 col-sm-6 col-xs-12 clean-custom-sec-img wow bounceInLeft">
                <img src="/images/custom.jpeg" alt="Custom Image">
            </div>

            <p class="col-md-6 col-sm-6 col-xs-12 clean-custom-sec-text wow bounceInRight">
                <h3>关于<%=SightName%></h3>
                <p><%=XiHu.getDescribe()%></p>

            </div>
        </div>
    </div>
</section>


<!-- ===================================
    FEATURED WORK SECTION
==================================== -->
<section id="featured-works" class="clean-section-wrapper">
    <!-- Container -->
    <div class="container">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras"><%=SightName%>必体验</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1"></p>
            </div>
            <!-- Section Header End -->

        </div>
    </div>
    <!-- Container End -->

    <div class="copyrights"><%=SightName%>必体验<a href=""  title=""><%=SightName%>>体验</a></div>

    <!-- Featured Works Slider -->
    <div class="container-fluid">
        <div class="row-fluid">

            <div class="clean-portfolio-work-slider-section wow fadeIn" data-wow-duration="2s">
                <div id="featured-work-slider" class="owl-carousel clean-portfolio-works-slider">

                    <!-- Work 1 -->
                    <div class="clean-portfolio-work-item">

                        <img src="/images/featured-work/001.jpg" alt="Feature Work 1">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="/images/featured-work/1.png" class="clean-featured-work-img"><i class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 1 End -->

                    <!-- Work 2 -->
                    <div class="clean-portfolio-work-item">

                        <img src="/images/featured-work/002.jpg" alt="Feature Work 2">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="/images/featured-work/2.png" class="clean-featured-work-img"><i class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 2 End -->

                    <!-- Work 3 -->
                    <div class="clean-portfolio-work-item">

                        <img src="/images/featured-work/003.jpg" alt="Feature Work 3">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="/images/featured-work/3.png" class="clean-featured-work-img"><i class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 3 End -->

                    <!-- Work 4 -->
                    <div class="clean-portfolio-work-item">

                        <img src="/images/featured-work/004.jpg" alt="Feature Work 4">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="/images/featured-work/4.png" class="clean-featured-work-img"><i class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 4 End -->

                    <!-- Work 5 -->
                    <div class="clean-portfolio-work-item">

                        <img src="/images/featured-work/005.jpg" alt="Feature Work 5">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="/images/featured-work/5.png" class="clean-featured-work-img"><i class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 5 End -->

                    <!-- Work 6 -->
                    <div class="clean-portfolio-work-item">

                        <img src="/images/featured-work/006.jpg" alt="Feature Work 6">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="/images/featured-work/6.png" class="clean-featured-work-img"><i class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 6 End -->

                    <!-- Work 7 -->
                    <div class="clean-portfolio-work-item">

                        <img src="/images/featured-work/007.jpg" alt="Feature Work 7">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="/images/featured-work/7.png" class="clean-featured-work-img"><i class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 7 End -->

                </div>
            </div>
        </div>
    </div>
    <!-- Featured Works Slider -->

</section>


<!-- ===================================
    SEARCH SECTION
==================================== -->
<<section id="offer" class="clean-section-wrapper clean-offer-section  background-two">
    <div class="container">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">景点查询</span></h1>
                <div class="clean-line"></div>
            </div>
            <!-- Section Header End -->

            <!-- Services -->
            <div>
                <form class="sselect" id="selectsite" name="selectsite"  method="post"
                      action="/mainsights/mainpage1.jsp"/>

                    <label style="left:200px" for="Attractions">景点：</label>
                    <select name="Attractions" size="1" id="Attractions" onchange="javascript:getsite(this.value)" >
                        <%=XiHu.getmainsights()%>
                    </select>

                    <script>
                    $(function(){
                        $('sselect').searchableSelect( );
                    });
                </script>
                    <input type="submit" name="确定" id="submitsite" value="确定"/><br><br><br>
                <!-- 交通费用 -->

                <label style="left:200px" >查询交通费用-选择出发地：</label><br>
                <select name="tpos" id="pos" onchange="POS(this.value)" >
                    <option value="上海">上海</option>
                    <option value="苏州">苏州</option>
                </select>
                <br>


            <%--</form  >--%>
                <%--<form action="/city/City" method="get">--%>
                <%--<select name="provinces" size="1" id="provinces" onchange="javascript:getprovs(this.value)">--%>
                    <%--<%=XiHu.getBroPros()%>--%>
                <%--</select>--%>
                <%--<select name="cities" size="1" id="cities" >--%>
                    <%--<%=XiHu.getDesChildCities()%>--%>
                <%--</select>--%>
                <%--<input type="submit" value="前往">--%>
                <%--</form>--%>
                <%--<script>--%>
                    <%--var xmlHttp;--%>
                    <%--function getprovs(str){--%>
                        <%--if(window.ActiveXObject){--%>
                            <%--xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");--%>
                        <%--}--%>
                        <%--else if(window.XMLHttpRequest){--%>
                            <%--xmlHttp=new XMLHttpRequest();--%>
                        <%--}--%>
                        <%--xmlHttp.onreadystatechange=function(){--%>
                            <%--if(xmlHttp.readyState==4){--%>
                                <%--if(xmlHttp.status==200){--%>
                                    <%--console.log(xmlHttp.status);--%>
                                <%--}--%>
                                <%--else {--%>
                                    <%--console.log(xmlHttp.status);--%>
                                <%--}--%>
                            <%--}--%>
                            <%--else {--%>
                                <%--console.log(xmlHttp.readyState);--%>
                            <%--}--%>
                        <%--}--%>
                        <%--xmlHttp.open("GET", "/city/City?province="+str,true);--%>
                        <%--xmlHttp.send();--%>

                    <%--}--%>



                <%--</script>--%>



                <div style="left:300px;width: 200px;" id="txtHint"></div>

                <div id="MapContainer" style="left:400px;top:-160px;height: 400px;width: 500px"></div>
                <style type="text/css">
                    #MapContainer {width:600px; height: 400px; }
                </style>
                <script>
                    var map = new AMap.Map("MapContainer", {
                        resizeEnable: true,
                        center: [120.15 ,30.28],
                        zoom:8
                    });
                    function getsite(str){
                        AMap.service(["AMap.PlaceSearch"], function() {
                            var placeSearch = new AMap.PlaceSearch({ //构造地点查询类
                                pageSize: 5,
                                pageIndex: 1,
                                city: "0571", //城市
                                map: map,
                            });
                            //关键字查询
                            placeSearch.search(str);
                        });
                    }

                </script>
            </div>
        </div>
    </div>
</section>


<!-- ===================================
    PRICING TABLE SECTION
==================================== -->
<section id="pricing" class="clean-pricing-section">
    <div class="container">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">周边信息</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">这里有你想要的一切</p>
            </div>
            <!-- Section Header End -->

            <div class="clean-pricing-wrapper">

                <!-- Plans -->
                <div class="col-md-4 col-sm-4 col-xs-12 clean-pricing-plans wow bounceInLeft">
                    <div class="clean-pricing-titles">
                        <h2>吃</h2>
                        <p><span>￥15/</span>一餐</p>
                    </div>
                    <div class="clean-pricing-service-name">
                        <ul>
                            <li>区域：</li>
                            <li>上城区</li>
                            <li>名称：</li>
                            <li>白鹿原</li>

                        </ul>
                    </div>


                </div>
                <!-- Plans End -->

                <!-- Plans -->
                <div class="col-md-4 col-sm-4 col-xs-12 clean-pricing-plans clean-recommended-pricing wow fadeInUp" data-wow-duration="1s">
                    <div class="clean-pricing-titles">
                        <h2>住</h2>
                        <p><span>￥200/</span>一晚</p>
                    </div>
                    <div class="clean-pricing-service-name">
                        <ul>
                            <li>区域：</li>
                            <li>上城区</li>
                            <li>名称：</li>
                            <li>汉庭快捷酒店</li>

                        </ul>
                    </div>

                </div>
                <!-- Plans End -->

                <!-- Plans -->
                <div class="col-md-4 col-sm-4 col-xs-12 clean-pricing-plans wow bounceInRight">
                    <div class="clean-pricing-titles">
                        <h2>购物</h2>
                        <p><span>￥50/</span>人均</p>
                    </div>
                    <div class="clean-pricing-service-name">
                        <ul>
                            <li>区域：</li>
                            <li>上城区</li>
                            <li>名称：</li>
                            <li>杭州大厦</li>
                        </ul>
                    </div>


                </div>
                <!-- Plans End -->

            </div>
        </div>
    </div>
</section>



<!-- ===================================
            CHART SECTION
==================================== -->
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>
<%@ page import="register_log.AccountBean" %>
<%@ page import="city.CityBean" %>
<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=SSIQ";
    Connection conn = DriverManager.getConnection(url, "sa", "123456");
    String sql = "SELECT * from Flow_info;";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    Double[] flow1 = new Double[13];
    int a1 = 1;
    Double[] flow2 = new Double[13];
    int a2 = 1;
    Double[] flow3 = new Double[13];
    int a3 = 1;
    Double[] flow4 = new Double[13];
    int a4 = 1;
    while(rs.next()) {
        if(rs.getString("f_Nums") == "1"){
            flow1[a1] = Double.valueOf(rs.getString("Flow"));
            a1++;
        }//西湖
        if(rs.getString("f_Nums") == "2"){
            flow1[a2] = Double.valueOf(rs.getString("Flow"));
            a2++;
        }//灵隐寺
        if(rs.getString("f_Nums") == "3"){
            flow1[a3] = Double.valueOf(rs.getString("Flow"));
            a3++;
        }//千岛湖风景区
        if(rs.getString("f_Nums") == "4"){
            flow1[a4] = Double.valueOf(rs.getString("Flow"));
            a4++;
        }//西溪湿地
    }
%>

<section id="testimonial"  class="clean-testimonial-section background-two">
    <h2 ><%=SightName%>各景点旅游游客去向</h2>
    <div>
        <div id="container" style="left:128px;top:100px;height: 500px;width: 1200px" style ="ext-align:center"></div>
        <h2  style="height:200px;"> </h2>
        <script type="text/javascript">
            var dom = document.getElementById("container");
            var myChart = echarts.init(dom,'infographic');
            var app = {};
            option = null;
            app.title = '<%=SightName%>>各景点旅游游客去向';

            option = {
                tooltip : {
                    trigger: 'axis',
                    axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                        type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                legend: {
                    data: ['西湖','灵隐寺','千岛湖风景区','西溪湿地国家公园']
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis:  {
                    type: 'value'
                },
                yAxis: {
                    type: 'category',
                    data: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"]
                },
                series: [
                    {
                        name: '西湖',
                        type: 'bar',
                        stack: '总量',
                        label: {
                            normal: {
                                show: true,
                                position: 'insideRight'
                            }
                        },
                        data: [11.21,2.36,17.15,10.21,10.21,6.25,19.14,17.15,9.45,4.51,15.12,9.25]
                    },
                    {
                        name: '灵隐寺',
                        type: 'bar',
                        stack: '总量',
                        label: {
                            normal: {
                                show: true,
                                position: 'insideRight'
                            }
                        },
                        data: [16.62,17.15,17.15,9.25,17.15,4.51,4.51,17.15,19.14,19.14,6.25,6.25]
                    },
                    {
                        name: '千岛湖风景区',
                        type: 'bar',
                        stack: '总量',
                        label: {
                            normal: {
                                show: true,
                                position: 'insideRight'
                            }
                        },
                        data: [6.25,10.21,15.12,4.51,8.25,9.25,6.25,10.21,9.25,4.51,10.21,19.14]
                    },
                    {
                        name: '西溪湿地国家公园',
                        type: 'bar',
                        stack: '总量',
                        label: {
                            normal: {
                                show: true,
                                position: 'insideRight'
                            }
                        },
                        data: [17.15,1.52,17.15,9.25,7.85,4.51,18.65,10.3,7.68,8.96,1.5,6.25]
                    },

                ]
            };;
            if (option && typeof option === "object") {
                myChart.setOption(option, true);
            }//图片的地方
        </script>

        <h2  style="height:250px;"> </h2>
        <h2><%=SightName%>市旅游人数与比例统计</h2>
        <div id="container2" style="left:140px;top:100px;height: 500px;width: 1200px"></div>

        <script type="text/javascript" src="/lib/echarts.js"></script>
        <script src="/lib/infographic.js"></script>
        <script type="text/javascript">
            var dom = document.getElementById("container2");
            var myChart = echarts.init(dom,'infographic');
            var app = {};
            option = null;
            app.title = '杭州市旅游人数统计';

            option = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data:['灵隐寺','千岛湖风景区','西湖景区','永福禅寺','杭州植物园','北高峰','断桥残雪','白堤','三潭印月','其它']
                },
                series: [
                    {
                        name:'人数与比例',
                        type:'pie',
                        selectedMode: 'single',
                        radius: [0, '30%'],

                        label: {
                            normal: {
                                position: 'inner'
                            }
                        },
                        labelLine: {
                            normal: {
                                show: false
                            }
                        },
                        data:[
                            {value:335, name:'千岛湖风景区', selected:true},
                            {value:679, name:'灵隐寺'},
                            {value:1548, name:'西湖景区'}
                        ]
                    },
                    {
                        name:'人数与比例',
                        type:'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{a|{a}}{abg|}\n{hr|}\n  {b|{b}：}{c}  {per|{d}%}  ',
                                backgroundColor: '#eee',
                                borderColor: '#aaa',
                                borderWidth: 1,
                                borderRadius: 4,
                                // shadowBlur:3,
                                // shadowOffsetX: 2,
                                // shadowOffsetY: 2,
                                // shadowColor: '#999',
                                // padding: [0, 7],
                                rich: {
                                    a: {
                                        color: '#999',
                                        lineHeight: 22,
                                        align: 'center'
                                    },
                                    // abg: {
                                    //     backgroundColor: '#333',
                                    //     width: '100%',
                                    //     align: 'right',
                                    //     height: 22,
                                    //     borderRadius: [4, 4, 0, 0]
                                    // },
                                    hr: {
                                        borderColor: '#aaa',
                                        width: '100%',
                                        borderWidth: 0.5,
                                        height: 0
                                    },
                                    b: {
                                        fontSize: 16,
                                        lineHeight: 33
                                    },
                                    per: {
                                        color: '#eee',
                                        backgroundColor: '#334455',
                                        padding: [2, 4],
                                        borderRadius: 2
                                    }
                                }
                            }
                        },
                        data:[
                            {value:335, name:'千岛湖风景区'},
                            {value:310, name:'永福禅寺'},
                            {value:234, name:'杭州植物园'},
                            {value:135, name:'北高峰'},
                            {value:1048, name:'断桥残雪'},
                            {value:251, name:'白堤'},
                            {value:147, name:'三潭映月'},
                            {value:102, name:'其他'}
                        ]
                    }
                ]
            };;
            if (option && typeof option === "object") {
                myChart.setOption(option, true);
            }
        </script>

        <div id="container3" style="left:128px;top:100px;height: 500px;width: 1200px"></div>
        <script type="text/javascript" src="/lib/echarts.js" src = "/lib/vintage.js"></script>
        <script src="/lib/infographic.js"></script>
        <%
            int b1 = 1;
            int b2 = 1;
            int b3 = 1;
            int b4 = 1;
            int b5 = 1;
            while(rs.next()) {
                if(rs.getString("traS") == "飞机") {
                    b1++;
                }
                if(rs.getString("traS") == "火车"){

                    b2++;
                }
                if(rs.getString("traS") == "高铁"){

                    b3++;
                }
                if(rs.getString("traS") == "轮船"){
                    b4++;
                }
                if(rs.getString("traS") == "自驾"){
                    b1++;
                }
            }
        %>

        <script type="text/javascript">
            var dom = document.getElementById("container3");
            var myChart = echarts.init(dom,'infographic');
            var app = {};
            option = null;
            var pathSymbols = {
                reindeer: 'path://M-22.788,24.521c2.08-0.986,3.611-3.905,4.984-5.892 c-2.686,2.782-5.047,5.884-9.102,7.312c-0.992,0.005-0.25-2.016,0.34-2.362l1.852-0.41c0.564-0.218,0.785-0.842,0.902-1.347 c2.133-0.727,4.91-4.129,6.031-6.194c1.748-0.7,4.443-0.679,5.734-2.293c1.176-1.468,0.393-3.992,1.215-6.557 c0.24-0.754,0.574-1.581,1.008-2.293c-0.611,0.011-1.348-0.061-1.959-0.608c-1.391-1.245-0.785-2.086-1.297-3.313 c1.684,0.744,2.5,2.584,4.426,2.586C-8.46,3.012-8.255,2.901-8.04,2.824c6.031-1.952,15.182-0.165,19.498-3.937 c1.15-3.933-1.24-9.846-1.229-9.938c0.008-0.062-1.314-0.004-1.803-0.258c-1.119-0.771-6.531-3.75-0.17-3.33 c0.314-0.045,0.943,0.259,1.439,0.435c-0.289-1.694-0.92-0.144-3.311-1.946c0,0-1.1-0.855-1.764-1.98 c-0.836-1.09-2.01-2.825-2.992-4.031c-1.523-2.476,1.367,0.709,1.816,1.108c1.768,1.704,1.844,3.281,3.232,3.983 c0.195,0.203,1.453,0.164,0.926-0.468c-0.525-0.632-1.367-1.278-1.775-2.341c-0.293-0.703-1.311-2.326-1.566-2.711 c-0.256-0.384-0.959-1.718-1.67-2.351c-1.047-1.187-0.268-0.902,0.521-0.07c0.789,0.834,1.537,1.821,1.672,2.023 c0.135,0.203,1.584,2.521,1.725,2.387c0.102-0.259-0.035-0.428-0.158-0.852c-0.125-0.423-0.912-2.032-0.961-2.083 c-0.357-0.852-0.566-1.908-0.598-3.333c0.4-2.375,0.648-2.486,0.549-0.705c0.014,1.143,0.031,2.215,0.602,3.247 c0.807,1.496,1.764,4.064,1.836,4.474c0.561,3.176,2.904,1.749,2.281-0.126c-0.068-0.446-0.109-2.014-0.287-2.862 c-0.18-0.849-0.219-1.688-0.113-3.056c0.066-1.389,0.232-2.055,0.277-2.299c0.285-1.023,0.4-1.088,0.408,0.135 c-0.059,0.399-0.131,1.687-0.125,2.655c0.064,0.642-0.043,1.768,0.172,2.486c0.654,1.928-0.027,3.496,1,3.514 c1.805-0.424,2.428-1.218,2.428-2.346c-0.086-0.704-0.121-0.843-0.031-1.193c0.221-0.568,0.359-0.67,0.312-0.076 c-0.055,0.287,0.031,0.533,0.082,0.794c0.264,1.197,0.912,0.114,1.283-0.782c0.15-0.238,0.539-2.154,0.545-2.522 c-0.023-0.617,0.285-0.645,0.309,0.01c0.064,0.422-0.248,2.646-0.205,2.334c-0.338,1.24-1.105,3.402-3.379,4.712 c-0.389,0.12-1.186,1.286-3.328,2.178c0,0,1.729,0.321,3.156,0.246c1.102-0.19,3.707-0.027,4.654,0.269 c1.752,0.494,1.531-0.053,4.084,0.164c2.26-0.4,2.154,2.391-1.496,3.68c-2.549,1.405-3.107,1.475-2.293,2.984 c3.484,7.906,2.865,13.183,2.193,16.466c2.41,0.271,5.732-0.62,7.301,0.725c0.506,0.333,0.648,1.866-0.457,2.86 c-4.105,2.745-9.283,7.022-13.904,7.662c-0.977-0.194,0.156-2.025,0.803-2.247l1.898-0.03c0.596-0.101,0.936-0.669,1.152-1.139 c3.16-0.404,5.045-3.775,8.246-4.818c-4.035-0.718-9.588,3.981-12.162,1.051c-5.043,1.423-11.449,1.84-15.895,1.111 c-3.105,2.687-7.934,4.021-12.115,5.866c-3.271,3.511-5.188,8.086-9.967,10.414c-0.986,0.119-0.48-1.974,0.066-2.385l1.795-0.618 C-22.995,25.682-22.849,25.035-22.788,24.521z',
                plane: 'path://M1.112,32.559l2.998,1.205l-2.882,2.268l-2.215-0.012L1.112,32.559z M37.803,23.96 c0.158-0.838,0.5-1.509,0.961-1.904c-0.096-0.037-0.205-0.071-0.344-0.071c-0.777-0.005-2.068-0.009-3.047-0.009 c-0.633,0-1.217,0.066-1.754,0.18l2.199,1.804H37.803z M39.738,23.036c-0.111,0-0.377,0.325-0.537,0.924h1.076 C40.115,23.361,39.854,23.036,39.738,23.036z M39.934,39.867c-0.166,0-0.674,0.705-0.674,1.986s0.506,1.986,0.674,1.986 s0.672-0.705,0.672-1.986S40.102,39.867,39.934,39.867z M38.963,38.889c-0.098-0.038-0.209-0.07-0.348-0.073 c-0.082,0-0.174,0-0.268-0.001l-7.127,4.671c0.879,0.821,2.42,1.417,4.348,1.417c0.979,0,2.27-0.006,3.047-0.01 c0.139,0,0.25-0.034,0.348-0.072c-0.646-0.555-1.07-1.643-1.07-2.967C37.891,40.529,38.316,39.441,38.963,38.889z M32.713,23.96 l-12.37-10.116l-4.693-0.004c0,0,4,8.222,4.827,10.121H32.713z M59.311,32.374c-0.248,2.104-5.305,3.172-8.018,3.172H39.629 l-25.325,16.61L9.607,52.16c0,0,6.687-8.479,7.95-10.207c1.17-1.6,3.019-3.699,3.027-6.407h-2.138 c-5.839,0-13.816-3.789-18.472-5.583c-2.818-1.085-2.396-4.04-0.031-4.04h0.039l-3.299-11.371h3.617c0,0,4.352,5.696,5.846,7.5 c2,2.416,4.503,3.678,8.228,3.87h30.727c2.17,0,4.311,0.417,6.252,1.046c3.49,1.175,5.863,2.7,7.199,4.027 C59.145,31.584,59.352,32.025,59.311,32.374z M22.069,30.408c0-0.815-0.661-1.475-1.469-1.475c-0.812,0-1.471,0.66-1.471,1.475 s0.658,1.475,1.471,1.475C21.408,31.883,22.069,31.224,22.069,30.408z M27.06,30.408c0-0.815-0.656-1.478-1.466-1.478 c-0.812,0-1.471,0.662-1.471,1.478s0.658,1.477,1.471,1.477C26.404,31.885,27.06,31.224,27.06,30.408z M32.055,30.408 c0-0.815-0.66-1.475-1.469-1.475c-0.808,0-1.466,0.66-1.466,1.475s0.658,1.475,1.466,1.475 C31.398,31.883,32.055,31.224,32.055,30.408z M37.049,30.408c0-0.815-0.658-1.478-1.467-1.478c-0.812,0-1.469,0.662-1.469,1.478 s0.656,1.477,1.469,1.477C36.389,31.885,37.049,31.224,37.049,30.408z M42.039,30.408c0-0.815-0.656-1.478-1.465-1.478 c-0.811,0-1.469,0.662-1.469,1.478s0.658,1.477,1.469,1.477C41.383,31.885,42.039,31.224,42.039,30.408z M55.479,30.565 c-0.701-0.436-1.568-0.896-2.627-1.347c-0.613,0.289-1.551,0.476-2.73,0.476c-1.527,0-1.639,2.263,0.164,2.316 C52.389,32.074,54.627,31.373,55.479,30.565z',
                train: 'path://M67.335,33.596L67.335,33.596c-0.002-1.39-1.153-3.183-3.328-4.218h-9.096v-2.07h5.371 c-4.939-2.07-11.199-4.141-14.89-4.141H19.72v12.421v5.176h38.373c4.033,0,8.457-1.035,9.142-5.176h-0.027 c0.076-0.367,0.129-0.751,0.129-1.165L67.335,33.596L67.335,33.596z M27.999,30.413h-3.105v-4.141h3.105V30.413z M35.245,30.413 h-3.104v-4.141h3.104V30.413z M42.491,30.413h-3.104v-4.141h3.104V30.413z M49.736,30.413h-3.104v-4.141h3.104V30.413z  M14.544,40.764c1.143,0,2.07-0.927,2.07-2.07V35.59V25.237c0-1.145-0.928-2.07-2.07-2.07H-9.265c-1.143,0-2.068,0.926-2.068,2.07 v10.351v3.105c0,1.144,0.926,2.07,2.068,2.07H14.544L14.544,40.764z M8.333,26.272h3.105v4.141H8.333V26.272z M1.087,26.272h3.105 v4.141H1.087V26.272z M-6.159,26.272h3.105v4.141h-3.105V26.272z M-9.265,41.798h69.352v1.035H-9.265V41.798z',
                ship: 'path://M16.678,17.086h9.854l-2.703,5.912c5.596,2.428,11.155,5.575,16.711,8.607c3.387,1.847,6.967,3.75,10.541,5.375 v-6.16l-4.197-2.763v-5.318L33.064,12.197h-11.48L20.43,15.24h-4.533l-1.266,3.286l0.781,0.345L16.678,17.086z M49.6,31.84 l0.047,1.273L27.438,20.998l0.799-1.734L49.6,31.84z M33.031,15.1l12.889,8.82l0.027,0.769L32.551,16.1L33.031,15.1z M22.377,14.045 h9.846l-1.539,3.365l-2.287-1.498h1.371l0.721-1.352h-2.023l-0.553,1.037l-0.541-0.357h-0.34l0.359-0.684h-2.025l-0.361,0.684 h-3.473L22.377,14.045z M23.695,20.678l-0.004,0.004h0.004V20.678z M24.828,18.199h-2.031l-0.719,1.358h2.029L24.828,18.199z  M40.385,34.227c-12.85-7.009-25.729-14.667-38.971-12.527c1.26,8.809,9.08,16.201,8.213,24.328 c-0.553,4.062-3.111,0.828-3.303,7.137c15.799,0,32.379,0,48.166,0l0.066-4.195l1.477-7.23 C50.842,39.812,45.393,36.961,40.385,34.227z M13.99,35.954c-1.213,0-2.195-1.353-2.195-3.035c0-1.665,0.98-3.017,2.195-3.017 c1.219,0,2.195,1.352,2.195,3.017C16.186,34.604,15.213,35.954,13.99,35.954z M23.691,20.682h-2.02l-0.588,1.351h2.023 L23.691,20.682z M19.697,18.199l-0.721,1.358h2.025l0.727-1.358H19.697z',
                car: 'path://M49.592,40.883c-0.053,0.354-0.139,0.697-0.268,0.963c-0.232,0.475-0.455,0.519-1.334,0.475 c-1.135-0.053-2.764,0-4.484,0.068c0,0.476,0.018,0.697,0.018,0.697c0.111,1.299,0.697,1.342,0.931,1.342h3.7 c0.326,0,0.628,0,0.861-0.154c0.301-0.196,0.43-0.772,0.543-1.78c0.017-0.146,0.025-0.336,0.033-0.56v-0.01 c0-0.068,0.008-0.154,0.008-0.25V41.58l0,0C49.6,41.348,49.6,41.09,49.592,40.883L49.592,40.883z M6.057,40.883 c0.053,0.354,0.137,0.697,0.268,0.963c0.23,0.475,0.455,0.519,1.334,0.475c1.137-0.053,2.762,0,4.484,0.068 c0,0.476-0.018,0.697-0.018,0.697c-0.111,1.299-0.697,1.342-0.93,1.342h-3.7c-0.328,0-0.602,0-0.861-0.154 c-0.309-0.18-0.43-0.772-0.541-1.78c-0.018-0.146-0.027-0.336-0.035-0.56v-0.01c0-0.068-0.008-0.154-0.008-0.25V41.58l0,0 C6.057,41.348,6.057,41.09,6.057,40.883L6.057,40.883z M49.867,32.766c0-2.642-0.344-5.224-0.482-5.507 c-0.104-0.207-0.766-0.749-2.271-1.773c-1.522-1.042-1.487-0.887-1.766-1.566c0.25-0.078,0.492-0.224,0.639-0.241 c0.326-0.034,0.345,0.274,1.023,0.274c0.68,0,2.152-0.18,2.453-0.48c0.301-0.303,0.396-0.405,0.396-0.672 c0-0.268-0.156-0.818-0.447-1.146c-0.293-0.327-1.541-0.49-2.273-0.585c-0.729-0.095-0.834,0-1.022,0.121 c-0.304,0.189-0.32,1.919-0.32,1.919l-0.713,0.018c-0.465-1.146-1.11-3.452-2.117-5.269c-1.103-1.979-2.256-2.599-2.737-2.754 c-0.474-0.146-0.904-0.249-4.131-0.576c-3.298-0.344-5.922-0.388-8.262-0.388c-2.342,0-4.967,0.052-8.264,0.388 c-3.229,0.336-3.66,0.43-4.133,0.576s-1.633,0.775-2.736,2.754c-1.006,1.816-1.652,4.123-2.117,5.269L9.87,23.109 c0,0-0.008-1.729-0.318-1.919c-0.189-0.121-0.293-0.225-1.023-0.121c-0.732,0.104-1.98,0.258-2.273,0.585 c-0.293,0.327-0.447,0.878-0.447,1.146c0,0.267,0.094,0.379,0.396,0.672c0.301,0.301,1.773,0.48,2.453,0.48 c0.68,0,0.697-0.309,1.023-0.274c0.146,0.018,0.396,0.163,0.637,0.241c-0.283,0.68-0.24,0.524-1.764,1.566 c-1.506,1.033-2.178,1.566-2.271,1.773c-0.139,0.283-0.482,2.865-0.482,5.508s0.189,5.02,0.189,5.86c0,0.354,0,0.976,0.076,1.565 c0.053,0.354,0.129,0.697,0.268,0.966c0.232,0.473,0.447,0.516,1.334,0.473c1.137-0.051,2.779,0,4.477,0.07 c1.135,0.043,2.297,0.086,3.33,0.11c2.582,0.051,1.826-0.379,2.928-0.36c1.102,0.016,5.447,0.196,9.424,0.196 c3.976,0,8.332-0.182,9.423-0.196c1.102-0.019,0.346,0.411,2.926,0.36c1.033-0.018,2.195-0.067,3.332-0.11 c1.695-0.062,3.348-0.121,4.477-0.07c0.886,0.043,1.103,0,1.332-0.473c0.132-0.269,0.218-0.611,0.269-0.966 c0.086-0.592,0.078-1.213,0.078-1.565C49.678,37.793,49.867,35.408,49.867,32.766L49.867,32.766z M13.219,19.735 c0.412-0.964,1.652-2.9,2.256-3.244c0.145-0.087,1.426-0.491,4.637-0.706c2.953-0.198,6.217-0.276,7.73-0.276 c1.513,0,4.777,0.078,7.729,0.276c3.201,0.215,4.502,0.611,4.639,0.706c0.775,0.533,1.842,2.28,2.256,3.244 c0.412,0.965,0.965,2.858,0.861,3.116c-0.104,0.258,0.104,0.388-1.291,0.275c-1.387-0.103-10.088-0.216-14.185-0.216 c-4.088,0-12.789,0.113-14.184,0.216c-1.395,0.104-1.188-0.018-1.291-0.275C12.254,22.593,12.805,20.708,13.219,19.735 L13.219,19.735z M16.385,30.511c-0.619,0.155-0.988,0.491-1.764,0.482c-0.775,0-2.867-0.353-3.314-0.371 c-0.447-0.017-0.842,0.302-1.076,0.362c-0.23,0.06-0.688-0.104-1.377-0.318c-0.688-0.216-1.092-0.155-1.316-1.094 c-0.232-0.93,0-2.264,0-2.264c1.488-0.068,2.928,0.069,5.621,0.826c2.693,0.758,4.191,2.213,4.191,2.213 S17.004,30.357,16.385,30.511L16.385,30.511z M36.629,37.293c-1.23,0.164-6.386,0.207-8.794,0.207c-2.412,0-7.566-0.051-8.799-0.207 c-1.256-0.164-2.891-1.67-1.764-2.865c1.523-1.627,1.24-1.576,4.701-2.023C24.967,32.018,27.239,32,27.834,32 c0.584,0,2.865,0.025,5.859,0.404c3.461,0.447,3.178,0.396,4.699,2.022C39.521,35.623,37.887,37.129,36.629,37.293L36.629,37.293z  M48.129,29.582c-0.232,0.93-0.629,0.878-1.318,1.093c-0.688,0.216-1.145,0.371-1.377,0.319c-0.231-0.053-0.627-0.371-1.074-0.361 c-0.448,0.018-2.539,0.37-3.313,0.37c-0.772,0-1.146-0.328-1.764-0.481c-0.621-0.154-0.966-0.154-0.966-0.154 s1.49-1.464,4.191-2.213c2.693-0.758,4.131-0.895,5.621-0.826C48.129,27.309,48.361,28.643,48.129,29.582L48.129,29.582z'
            };

            var labelSetting = {
                normal: {
                    show: true,
                    position: 'outside',
                    offset: [10, 0],
                    textStyle: {
                        fontSize: 16
                    }
                }
            };

            a = <%=b1%>;
            b = <%=b2%>;
            c = <%=b3%>;
            d = <%=b4%>;
            e = <%=b5%>;
            option = {
                title: {
                    text: '游客交通方式图'
                },
                legend: {
                    data: ['2017']
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                grid: {
                    containLabel: true,
                    left: 20
                },
                yAxis: {
                    data: ['High-speed', 'ship', 'plane', 'train', 'car'],
                    inverse: true,
                    axisLine: {show: false},
                    axisTick: {show: false},
                    axisLabel: {
                        margin: 30,
                        textStyle: {
                            fontSize: 14
                        }
                    },
                    axisPointer: {
                        label: {
                            show: true,
                            margin: 30
                        }
                    }
                },
                xAxis: {
                    splitLine: {show: false},
                    axisLabel: {show: false},
                    axisTick: {show: false},
                    axisLine: {show: false}
                },
                series: [{
                    name: '2017',
                    type: 'pictorialBar',
                    barGap: '10%',
                    label: labelSetting,
                    symbolRepeat: true,
                    symbolSize: ['80%', '60%'],
                    data: [{
                        value: 5,
                        symbol: pathSymbols.reindeer
                    }, {
                        value: 14,
                        symbol: pathSymbols.ship
                    }, {
                        value: 35,
                        symbol: pathSymbols.plane
                    }, {
                        value: 41,
                        symbol: pathSymbols.train
                    }, {
                        value: 31,
                        symbol: pathSymbols.car
                    }]
                }]
            };
            ;
            if (option && typeof option === "object") {
                myChart.setOption(option, true);
            }
        </script>
    </div>
</section>


<!-- ===================================
    FOOTER SECTION
==================================== -->
<footer class="background-two">
    <div class="container">
        <div class="row">
            <div class="clean-footer-content">

                <div class="clean-footer-logo wow bounceIn" data-wow-offset="0">
                    <a href="/hangzhou1.jsp">
                        <img id="logo-footer" src="/images/logo.png" alt="clean">
                    </a>
                </div>

            </div>
        </div>
    </div>
</footer>

<!-- ===================================
    SCRIPTS
==================================== -->
<script src="/js/modernizr.min.js"></script>

<script src="/js/jquery.easing.js"></script>
<script src="/js/jquery.scrollUp.min.js"></script>
<script src="/js/smooth-scroll.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/jquery.sliderPro.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/jquery.easypiechart.js"></script>
<script src="/js/jquery.countTo.js"></script>
<script src="/js/isotope.pkgd.min.js"></script>
<script src="/js/jquery.stellar.min.js"></script>
<script src="/js/jquery.waypoints.min.js"></script>
<script src="/js/wow.min.js"></script>
<script src="/js/jquery.nav.js"></script>
<script src="/js/custom.js"></script>
<!--响应交通信息-->
<script type="text/javascript" >
    var xmlHttp;
    function POS(str){
        if(str==""){
            document.getElementById("txtHint").innerText="";
            return;
        }
        if(window.ActiveXObject){
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if(window.XMLHttpRequest){
            xmlHttp=new XMLHttpRequest();
        }
        xmlHttp.onreadystatechange=function(){
            if(xmlHttp.readyState==4){
                if(xmlHttp.status==200){
                    document.getElementById("txtHint").innerHTML=xmlHttp.responseText;
                }
                else {
                    document.getElementById("txtHint").innerHTML = xmlHttp.status;
                }
            }
            else {
                document.getElementById("txtHint").innerHTML=xmlHttp.readyState;
            }
        }
        xmlHttp.open("GET", "/register_log/traffic?q="+str,true);
        xmlHttp.send();

    }
</script>

</body>
</html>

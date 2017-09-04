<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html data-ng-app="cronical">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>KNine Vox</title>
    <meta name="description" content="Tech, Sports, Entertainment, Games, we cover it all. Get latest articles and updates on different topics from all across the world." />
    <meta name="p:domain_verify" content="20bc927ce2df4a108ef9626b1523f0e9">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link href='https://fonts.googleapis.com/css?family=Domine:400,700%7CMontserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7COpen+Sans:400,300%7CLibre+Baskerville:400,400italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/css/owl.carousel.css" />
    <link rel="stylesheet" href="assets/css/global.css" />
    <link rel="stylesheet" type="text/css" href="revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="revolution/css/navigation.css">
    <link rel="stylesheet" href="assets/css/style.css?v=1.1" />
    <link rel="stylesheet" href="assets/css/responsive.css" />
    <link rel="stylesheet/less" href="assets/css/skin.less">
    <link rel="stylesheet" href="assets/css/skin.css" />
    <script>
        function remove() {
            document.getElementById("email1").removeAttribute("required");
            document.getElementById("email1").type = 'text';
        }
        function add() {
            var e = document.getElementById("email1");
            e.setAttribute("required", "true");
            e.type = 'email';
        }
    </script>
    <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-90582009-1', 'auto'); ga('send', 'pageview');</script>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
        (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-6572699499693151",
            enable_page_level_ads: true
        });
    </script>
</head>
<body data-ng-controller="cronicalCnt">
    <form runat="server">
        <div id="wrapper" class="home-one">
            <header id="header" class="header">
                <div class="primary-header clearfix">
                    <ul class="links pages-link">
                        <li>
                            <a href=".." class="home"><i class="fa fa-home"></i></a>
                        </li>
                        <li>
                            <a href="AboutUs">About Us</a>
                        </li>
                        <li>
                            <a href="ContactUs">Contact Us</a>
                        </li>
                        <li>
                            <a href="Advertise">Advertise With Us</a>
                        </li>
                    </ul>
                    <ul class="links social">
                        <li>
                            <a href="https://www.facebook.com/kninevox"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="https://twitter.com/KNineVox"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="https://www.linkedin.com/company-beta/13339362"><i class="fa fa-linkedin"></i></a>
                        </li>
                        <li>
                            <a href="https://in.pinterest.com/kninevox/"><i class="fa fa-pinterest-p"></i></a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/kninevox/"><i class="fa fa-instagram"></i></a>
                        </li>
                        <li>
                            <a href="https://plus.google.com/104549030328394629477"><i class="fa fa-google-plus"></i></a>
                        </li>
                        <li>
                            <a href="http://www.youtube.com/c/KNineVOX"><i class="fa fa-youtube-play"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="main-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="logo">
                                    <a href="..">
                                        <img src="images/logo-stetched-1.png" width="504px" alt="KNine Vox" /></a>
                                </div>
                                <nav>
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"> </span><span class="icon-bar"></span><span class="icon-bar"></span>
                                    </button>
                                    <ul class="nav navigation">
                                        <li>
                                            <a href="Technology">Technology</a>
                                        </li>
                                        <li>
                                            <a href="Science">Science</a>
                                        </li>
                                        <li>
                                            <a href="Entertainment">Entertainment</a>
                                        </li>
                                        <li>
                                            <a href="Games">Games</a>
                                        </li>
                                        <li>
                                            <a href="App">Apps and Software</a>
                                        </li>
                                        <li>
                                            <a href="Sports">Sports</a>
                                        </li>
                                        <li>
                                            <span onclick="remove()" class="search-box"><i class="fa fa-search"></i></span>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="search-here">
                                    <asp:Panel ID="Panel1" runat="server" DefaultButton="search_button">
                                        <input id="inpt_search" type="text" placeholder="Search" runat="server" />
                                        <asp:Button ID="search_button" type="submit" value="" CausesValidation="false" OnClick="search_button_Click" runat="server" />
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <div class="banner">
                <div class="rev_slider_wrapper">
                    <div id="slider1" class="rev_slider" data-version="5.0">
                        <ul>
                            <li data-transition="fade" data-thumb="<%=fimg1.ImageUrl.Replace(" ", "%20").Substring(2) %>">
                                <asp:Image ID="fimg1" Width="1920" Height="1280" runat="server" />
                                <div class="banner-text">
                                    <div class="tp-caption News-Title"
                                        data-x="left" data-hoffset="80"
                                        data-y="top" data-voffset="450"
                                        data-whitespace="normal"
                                        data-transform_idle="o:1;"
                                        data-transform_in="o:0"
                                        data-transform_out="o:0"
                                        data-start="500">

                                        <div class="banner-text-wrap">
                                            <h3 class="heading-center">
                                                <asp:Label ID="fcat1" runat="server" /></h3>
                                            <h1>
                                                <asp:LinkButton Font-Size="Larger" ID="fhed1" OnClick="mjimg1_Click" runat="server" />
                                            </h1>
                                            <span class="date-one new-data-one"><a>
                                                <asp:Label ID="fdate1" runat="server" /></a> <small><a href="Author-<%=faut1.Text %>">by
                                                    <asp:Label ID="faut1" runat="server" /></a></small></span>
                                        </div>
                                        <asp:Label ID="fcod1" Visible="false" runat="server" />
                                    </div>
                                </div>
                            </li>

                            <li data-transition="fade" data-thumb="<%=fimg2.ImageUrl.Replace(" ", "%20").Substring(2) %>">
                                <asp:Image ID="fimg2" Width="1920" Height="1280" runat="server" />
                                <div class="banner-text">
                                    <div class="tp-caption News-Title"
                                        data-x="left" data-hoffset="80"
                                        data-y="top" data-voffset="450"
                                        data-whitespace="normal"
                                        data-transform_idle="o:1;"
                                        data-transform_in="o:0"
                                        data-transform_out="o:0"
                                        data-start="500">

                                        <div class="banner-text-wrap">
                                            <h3 class="heading-center">
                                                <asp:Label ID="fcat2" runat="server" /></h3>
                                            <h1>
                                                <asp:LinkButton ID="fhed2" Font-Size="Larger" OnClick="mjimg1_Click" runat="server" />
                                            </h1>
                                            <span class="date-one new-data-one"><a>
                                                <asp:Label ID="fdate2" runat="server" /></a> <small><a href="Author-<%=faut2.Text %>">by
                                                    <asp:Label ID="faut2" runat="server" /></a></small></span>
                                        </div>
                                        <asp:Label ID="fcod2" Visible="false" runat="server" />
                                    </div>
                                </div>
                            </li>

                            <li data-transition="fade" data-thumb="<%=fimg3.ImageUrl.Replace(" ", "%20").Substring(2) %>">
                                <asp:Image ID="fimg3" Width="1920" Height="1280" runat="server" />
                                <div class="banner-text">
                                    <div class="tp-caption News-Title"
                                        data-x="left" data-hoffset="80"
                                        data-y="top" data-voffset="450"
                                        data-whitespace="normal"
                                        data-transform_idle="o:1;"
                                        data-transform_in="o:0"
                                        data-transform_out="o:0"
                                        data-start="500">

                                        <div class="banner-text-wrap">
                                            <h3 class="heading-center">
                                                <asp:Label ID="fcat3" runat="server" /></h3>
                                            <h1>
                                                <asp:LinkButton ID="fhed3" Font-Size="Larger" OnClick="mjimg1_Click" runat="server" />
                                            </h1>
                                            <span class="date-one new-data-one"><a>
                                                <asp:Label ID="fdate3" runat="server" /></a> <small><a href="Author-<%=faut3.Text %>">by
                                                    <asp:Label ID="faut3" runat="server" /></a></small></span>
                                        </div>
                                        <asp:Label ID="fcod3" Visible="false" runat="server" />
                                    </div>
                                </div>
                            </li>
                            <li data-transition="fade" data-thumb="<%=fimg4.ImageUrl.Replace(" ", "%20").Substring(2) %>">
                                <asp:Image ID="fimg4" Width="1920" Height="1280" runat="server" />
                                <div class="banner-text">
                                    <div class="tp-caption News-Title"
                                        data-x="left" data-hoffset="80"
                                        data-y="top" data-voffset="450"
                                        data-whitespace="normal"
                                        data-transform_idle="o:1;"
                                        data-transform_in="o:0"
                                        data-transform_out="o:0"
                                        data-start="500">

                                        <div class="banner-text-wrap">
                                            <h3 class="heading-center">
                                                <asp:Label ID="fcat4" runat="server" /></h3>
                                            <h1>
                                                <asp:LinkButton ID="fhed4" Font-Size="Larger" OnClick="mjimg1_Click" runat="server" />
                                            </h1>
                                            <span class="date-one new-data-one"><a>
                                                <asp:Label ID="fdate4" runat="server" /></a> <small><a href="Author-<%=faut4.Text %>">by
                                                    <asp:Label ID="faut4" runat="server" /></a></small></span>
                                        </div>
                                        <asp:Label ID="fcod4" Visible="false" runat="server" />
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <section id="section">
                <div class="section">
                    <div class="container">
                        <div class="row">
                            <div class="hidden-sm hidden-xs" style="margin: 0 auto;position: relative;width: 83.1%;">
                                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                <!-- TopBeast -->
                                <ins class="adsbygoogle"
                                    style="display: inline-block; width: 970px; height: 250px"
                                    data-ad-client="ca-pub-6572699499693151"
                                    data-ad-slot="2487833023"></ins>
                                <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </div>
                            <div class="hidden-lg hidden-md">
                                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                <!-- banner1 -->
                                <ins class="adsbygoogle"
                                    style="display: block"
                                    data-ad-client="ca-pub-6572699499693151"
                                    data-ad-slot="6918032621"
                                    data-ad-format="auto"></ins>
                                <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </div>
                            <div class="blog-one" style="display: initial;">
                                <div class="col-xs-12">
                                    <span class="line"></span>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="people">
                                        <asp:Image ID="scimg" runat="server" />
                                        <div class="people-text">
                                            <div class="people-wrap">
                                                <div class="people-text-wrap">
                                                    <h3 class="heading-center">
                                                        <a href="Science">Science</a></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="sched" OnClick="mjimg1_Click" runat="server" /></h2>
                                                    <span class="date-one new-data-one"><a>
                                                        <asp:Label ID="scdate" runat="server" /></a> <small><a href="Author-<%=scaut.Text %>">by
                                                            <asp:Label ID="scaut" runat="server" /></a></small></span>
                                                    <asp:Label ID="sccod" Visible="false" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="people">
                                        <asp:Image ID="spimg" runat="server" />
                                        <div class="people-text">
                                            <div class="people-wrap">
                                                <div class="people-text-wrap">
                                                    <h3 class="heading-center">
                                                        <a href="Sports">Sports</a></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="sphed" OnClick="mjimg1_Click" runat="server" /></h2>
                                                    <span class="date-one new-data-one"><a>
                                                        <asp:Label ID="spdate" runat="server" /></a> <small><a href="Author-<%=spaut.Text %>">by
                                                            <asp:Label ID="spaut" runat="server" /></a></small></span>
                                                    <asp:Label ID="spcod" Visible="false" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="sticker">
                                    <div class="sticker-content">
                                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                        <!-- banner1 -->
                                        <ins class="adsbygoogle"
                                            style="display: block"
                                            data-ad-client="ca-pub-6572699499693151"
                                            data-ad-slot="6918032621"
                                            data-ad-format="auto"></ins>
                                        <script>
                                            (adsbygoogle = window.adsbygoogle || []).push({});
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="check-now news-item">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <h2 class="text-center h2">Check it Now</h2>
                                </div>
                                <div class="filter-section">
                                    <div class="filter-head">
                                        <div class="filter-btn-grp">
                                        </div>
                                    </div>
                                    <div class="filter-content filter-one filter-content-one active clearfix">
                                        <div class="filter-item zoom">
                                            <figure class="filter-img-item">
                                                <asp:LinkButton ID="mjlkimg1" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg1" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="filter-item-text">
                                                <h3 class="heading">
                                                    <asp:Label ID="mjcat1" runat="server" /></h3>
                                                <h2>
                                                    <asp:LinkButton ID="mjhed1" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                    <asp:LinkButton CssClass="sm-para" OnClick="mjimg1_Click" ID="mjdis1" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate1" runat="server" /></a> <small>by<a href="Author-<%=mjaut1.Text %>">
                                                        <asp:Label ID="mjaut1" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod1" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                        <div class="filter-item zoom">
                                            <figure class="filter-img-item">
                                                <asp:LinkButton ID="mjlkimg2" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg2" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="filter-item-text">
                                                <h3 class="heading">
                                                    <asp:Label ID="mjcat2" runat="server" /></h3>
                                                <h2>
                                                    <asp:LinkButton ID="mjhed2" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                    <asp:LinkButton CssClass="sm-para" OnClick="mjimg1_Click" ID="mjdis2" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate2" runat="server" /></a> <small>by<a href="Author-<%=mjaut2.Text %>">
                                                        <asp:Label ID="mjaut2" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod2" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                        <div class="filter-item zoom">
                                            <figure class="filter-img-item">
                                                <asp:LinkButton ID="mjlkimg3" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg3" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="filter-item-text">
                                                <h3 class="heading">
                                                    <asp:Label ID="mjcat3" runat="server" /></h3>
                                                <h2>
                                                    <asp:LinkButton ID="mjhed3" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                    <asp:LinkButton CssClass="sm-para" OnClick="mjimg1_Click" ID="mjdis3" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate3" runat="server" /></a> <small>by<a href="Author-<%=mjaut3.Text %>">
                                                        <asp:Label ID="mjaut3" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod3" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                        <div class="filter-item large-item">
                                            <div class="filter-item-text">
                                                <h2>
                                                    <asp:LinkButton ID="mjhed4" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate4" runat="server" /></a> <small>by<a href="Author-<%=mjaut4.Text %>">
                                                        <asp:Label ID="mjaut4" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod4" runat="server" Visible="false" />
                                                <asp:Label ID="mjcat4" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                        <div class="filter-item small-item">
                                            <div class="filter-item-text">
                                                <h2>
                                                    <asp:LinkButton ID="mjhed5" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate5" runat="server" /></a> <small>by<a href="Author-<%=mjaut5.Text %>">
                                                        <asp:Label ID="mjaut5" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod5" Visible="false" runat="server" />
                                                <asp:Label ID="mjcat5" Visible="false" runat="server" />
                                            </div>
                                        </div>
                                        <div class="filter-item small-item">
                                            <div class="filter-item-text">
                                                <h2>
                                                    <asp:LinkButton ID="mjhed6" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate6" runat="server" /></a> <small>by<a href="Author-<%=mjaut6.Text %>">
                                                        <asp:Label ID="mjaut6" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod6" Visible="false" runat="server" />
                                                <asp:Label ID="mjcat6" Visible="false" runat="server" />
                                            </div>
                                        </div>
                                        <div class="filter-item zoom">
                                            <figure class="filter-img-item">
                                                <asp:LinkButton ID="mjlkimg7" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg7" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="filter-item-text">
                                                <h3 class="heading">
                                                    <asp:Label ID="mjcat7" runat="server" /></h3>
                                                <h2>
                                                    <asp:LinkButton ID="mjhed7" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                    <asp:LinkButton CssClass="sm-para" OnClick="mjimg1_Click" ID="mjdis7" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate7" runat="server" /></a> <small>by<a href="Author-<%=mjaut7.Text %>">
                                                        <asp:Label ID="mjaut7" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod7" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                        <div class="filter-item zoom">
                                            <figure class="filter-img-item">
                                                <asp:LinkButton ID="mjlkimg8" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg8" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="filter-item-text">
                                                <h3 class="heading">
                                                    <asp:Label ID="mjcat8" runat="server" /></h3>
                                                <h2>
                                                    <asp:LinkButton ID="mjhed8" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                    <asp:LinkButton CssClass="sm-para" OnClick="mjimg1_Click" ID="mjdis8" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate8" runat="server" /></a> <small>by<a href="Author-<%=mjaut8.Text %>">
                                                        <asp:Label ID="mjaut8" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod8" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                        <div class="filter-item zoom">
                                            <figure class="filter-img-item">
                                                <asp:LinkButton ID="mjlkimg9" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg9" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="filter-item-text">
                                                <h3 class="heading">
                                                    <asp:Label ID="mjcat9" runat="server" /></h3>
                                                <h2>
                                                    <asp:LinkButton ID="mjhed9" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                    <asp:LinkButton CssClass="sm-para" OnClick="mjimg1_Click" ID="mjdis9" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate9" runat="server" /></a> <small>by<a href="Author-<%=mjaut9.Text %>">
                                                        <asp:Label ID="mjaut9" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod9" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                        <div class="filter-item large-item">
                                            <div class="filter-item-text">
                                                <h2>
                                                    <asp:LinkButton ID="mjhed10" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate10" runat="server" /></a> <small>by<a href="Author-<%=mjaut10.Text %>">
                                                        <asp:Label ID="mjaut10" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod10" runat="server" Visible="false" />
                                                <asp:Label ID="mjcat10" Visible="false" runat="server" />
                                            </div>
                                        </div>
                                        <div class="filter-item small-item">
                                            <div class="filter-item-text">
                                                <h2>
                                                    <asp:LinkButton ID="mjhed11" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate11" runat="server" /></a> <small>by<a href="Author-<%=mjaut11.Text %>">
                                                        <asp:Label ID="mjaut11" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod11" Visible="false" runat="server" />
                                                <asp:Label ID="mjcat11" Visible="false" runat="server" />
                                            </div>
                                        </div>
                                        <div class="filter-item small-item">
                                            <div class="filter-item-text">
                                                <h2>
                                                    <asp:LinkButton ID="mjhed12" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                </h2>
                                                <span class="date-one new-data-one"><a>
                                                    <asp:Label ID="mjdate12" runat="server" /></a> <small>by<a href="Author-<%=mjaut12.Text %>">
                                                        <asp:Label ID="mjaut12" runat="server" /></a></small></span>
                                                <asp:Label ID="mjcod12" Visible="false" runat="server" />
                                                <asp:Label ID="mjcat12" Visible="false" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="more-news">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <h2 class="text-center h2">More News</h2>
                                </div>
                                <div class="news-blog-one">
                                    <div class="col-xs-12">
                                        <span class="line"></span>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="news-blog stared zoom">
                                            <figure>
                                                <asp:Image ID="fimg5" runat="server" />
                                            </figure>
                                            <div class="news-blog-text clearfix">
                                                <div class="share">
                                                    <span class="share-head"><small><i class="fa fa-retweet"></i></small><strong>share</strong> </span>
                                                    <ul class="clearfix">
                                                        <li>
                                                            <a href="http://www.facebook.com/sharer.php?u=http://www.kninevox.com/<%=fhed5.Text.Replace(" ","-") %>-<%=fcod5.Text %>" target="_blank"><i class="fa fa-facebook"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="https://twitter.com/share?url=http://www.kninevox.com/<%=fhed5.Text.Replace(" ","-") %>-<%=fcod5.Text %>;text=<%=fhed5.Text %>&amp;hashtags=KNineVox" target="_blank"><i class="fa fa-twitter"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="https://plusone.google.com/_/+1/confirm?hl=en&url=http://www.kninevox.com/<%=fhed5.Text.Replace(" ","-") %>-<%=fcod5.Text %>" target="_blank"><i class="fa fa-google-plus"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=http://www.kninevox.com/<%=fhed5.Text.Replace(" ","-") %>-<%=fcod5.Text %>" target="_blank"><i class="fa fa-linkedin"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());"><i class="fa fa-pinterest-p"></i></a>
                                                        </li>
                                                        <li>
                                                            <a href="http://www.reddit.com/submit?url=http://www.kninevox.com/<%=fhed5.Text.Replace(" ","-") %>-<%=fcod5.Text %>&title=<%=fhed5.Text %>" target="_blank"><i class="fa fa-reddit"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="money-content">
                                                    <div class="news-blog-text-content">
                                                        <h3 class="heading">
                                                            <asp:Label ID="fcat5" runat="server" /></h3>
                                                        <h2>
                                                            <asp:LinkButton CssClass="sm-para" ID="fhed5" OnClick="mjimg1_Click" runat="server" />
                                                        </h2>
                                                        <span class="date-one new-data-one"><a>
                                                            <asp:Label ID="fdate5" runat="server" /></a> <small><a href="Author-<%=faut5.Text %>">by
                                                                <asp:Label ID="faut5" runat="server" /></a></small></span>
                                                        <asp:Label ID="fcod5" Visible="false" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="design"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="news-blog">
                                            <div class="video">
                                                <img src="../PostImages/s8 vs g6.jpg" data-video="https://www.youtube.com/embed/a_zQTrFzWDA" alt="" />
                                                <div class="play-video">
                                                    <a href="#" class="play"><span><i class="fa fa-youtube-play"></i>Play </span></a>
                                                </div>
                                            </div>
                                            <div class="news-blog-text video-blog-text">
                                                <div class="news-blog-text-content">
                                                    <h3 class="heading">Technology</h3>
                                                    <h2>
                                                        <a class="sm-para" href="http://kninevox.com/Samsung-Galaxy-S8-vs-LG-G6-camera-comparison-1057">Samsung Galaxy S8 vs LG G6 camera comparison.</a>
                                                    </h2>
                                                    <span class="date-one new-data-one"><a>May 13, 2017</a> <small>by <a href="Author-Rishav">Rishav</a></small></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12">
                                        <div class="news-blog news-banner-one">
                                            <div class="news-blog-fig zoom long-figure">
                                                <figure>
                                                    <asp:Image ID="mjimg13" runat="server" />
                                                </figure>
                                                <div class="news-blog-text">
                                                    <div class="news-blog-text-content">
                                                        <h3 class="heading">
                                                            <asp:Label ID="mjcat13" runat="server" /></h3>
                                                        <h2>
                                                            <asp:LinkButton ID="mjhed13" CssClass="head-para" OnClick="mjimg1_Click" runat="server" />
                                                            <asp:LinkButton ID="mjdis13" OnClick="mjimg1_Click" CssClass="head-para" runat="server" /></h2>
                                                        <span class="date-one new-data-one"><a>
                                                            <asp:Label ID="mjdate13" runat="server" /></a> <small><a href="Author-<%=mjaut13.Text %>">by
                                                                <asp:Label ID="mjaut13" runat="server" /></a></small></span>
                                                        <asp:Label ID="mjcod13" runat="server" Visible="false" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-4">
                                        <div class="news-blog zoom">
                                            <figure>
                                                <asp:LinkButton ID="mjlkimg14" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg14" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="news-blog-text video-blog-text">
                                                <div class="news-blog-text-content">
                                                    <h3 class="heading">
                                                        <asp:Label ID="mjcat14" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="mjhed14" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                    </h2>
                                                    <span class="date-one new-data-one"><a>
                                                        <asp:Label ID="mjdate14" runat="server" /></a> <small>by<a href="Author-<%=mjaut14.Text %>">
                                                            <asp:Label ID="mjaut14" runat="server" /></a></small></span>
                                                    <asp:Label ID="mjcod14" runat="server" Visible="false" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-4">
                                        <div class="news-blog zoom">
                                            <figure>
                                                <asp:LinkButton ID="mjlkimg15" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg15" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="news-blog-text video-blog-text">
                                                <div class="news-blog-text-content">
                                                    <h3 class="heading">
                                                        <asp:Label ID="mjcat15" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="mjhed15" CssClass="sm-para" OnClick="mjimg1_Click" runat="server" />
                                                    </h2>
                                                    <span class="date-one new-data-one"><a>
                                                        <asp:Label ID="mjdate15" runat="server" /></a> <small>by<a href="Author-<%=mjaut15.Text %>">
                                                            <asp:Label ID="mjaut15" runat="server" /></a></small></span>
                                                    <asp:Label ID="mjcod15" Visible="false" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-4">
                                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                        <!-- Banner rectangle -->
                                        <ins class="adsbygoogle"
                                            style="display: inline-block; width: 336px; height: 280px"
                                            data-ad-client="ca-pub-6572699499693151"
                                            data-ad-slot="7975963421"></ins>
                                        <script>
                                            (adsbygoogle = window.adsbygoogle || []).push({});
                                        </script>
                                    </div>
                                    <div class="col-xs-12 hidden-xs">
                                        <div class="special-sticker clearfix">
                                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                            <!-- banner4 -->
                                            <ins class="adsbygoogle"
                                                style="display: inline-block; width: 728px; height: 90px"
                                                data-ad-client="ca-pub-6572699499693151"
                                                data-ad-slot="2348232229"></ins>
                                            <script>
                                                (adsbygoogle = window.adsbygoogle || []).push({});
                                            </script>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="news-blog">
                                            <div class="news-blog-fig zoom long-figure">
                                                <figure>
                                                    <asp:Image ID="mjimg16" runat="server" />
                                                </figure>
                                                <div class="news-blog-text news-blog-text-2 people-news">
                                                    <div class="news-blog-text-content">
                                                        <h3 class="heading">
                                                            <asp:Label ID="mjcat16" runat="server" /></h3>
                                                        <h2>
                                                            <asp:LinkButton ID="mjhed16" OnClick="mjimg1_Click" runat="server" />
                                                            <asp:LinkButton ID="mjdis16" OnClick="mjimg1_Click" runat="server" /></h2>
                                                        <span class="date-one new-data-one"><a>
                                                            <asp:Label ID="mjdate16" runat="server" /></a> <small><a href="Author-<%=mjaut16.Text %>">by
                                                                <asp:Label ID="mjaut16" runat="server" /></a></small></span>
                                                        <asp:Label ID="mjcod16" runat="server" Visible="false" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="news-blog">
                                            <div class="news-blog-fig zoom long-figure">
                                                <figure>
                                                    <asp:Image ID="mjimg17" runat="server" />
                                                </figure>
                                                <div class="news-blog-text news-blog-text-2 people-news">
                                                    <div class="news-blog-text-content">
                                                        <h3 class="heading">
                                                            <asp:Label ID="mjcat17" runat="server" /></h3>
                                                        <h2>
                                                            <asp:LinkButton ID="mjhed17" OnClick="mjimg1_Click" runat="server" />
                                                            <asp:LinkButton ID="mjdis17" OnClick="mjimg1_Click" runat="server" /></h2>
                                                        <span class="date-one new-data-one"><a>
                                                            <asp:Label ID="mjdate17" runat="server" /></a> <small><a href="Author-<%=mjaut17.Text %>">by
                                                                <asp:Label ID="mjaut17" runat="server" /></a></small></span>
                                                        <asp:Label ID="mjcod17" Visible="false" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-4">
                                        <div class="side-sticker news-blog">
                                            <div class="news-blog-fig">
                                                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                                <!-- banner3 -->
                                                <ins class="adsbygoogle"
                                                    style="display: block"
                                                    data-ad-client="ca-pub-6572699499693151"
                                                    data-ad-slot="9871499029"
                                                    data-ad-format="auto"></ins>
                                                <script>
                                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-4">
                                        <div class="news-blog zoom">
                                            <figure>
                                                <asp:LinkButton ID="mjlkimg18" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg18" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="news-blog-text video-blog-text">
                                                <div class="news-blog-text-content">
                                                    <h3 class="heading">
                                                        <asp:Label ID="mjcat18" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton CssClass="sm-para" ID="mjhed18" OnClick="mjimg1_Click" runat="server" />
                                                    </h2>
                                                    <span class="date-one new-data-one"><a>
                                                        <asp:Label ID="mjdate18" runat="server" /></a> <small>by<a href="Author-<%=mjaut18.Text %>">
                                                            <asp:Label ID="mjaut18" runat="server" /></a></small></span>
                                                    <asp:Label ID="mjcod18" Visible="false" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-4">
                                        <div class="news-blog zoom">
                                            <figure>
                                                <asp:LinkButton ID="mjlkimg19" OnClick="mjimg1_Click" runat="server">
                                                    <asp:Image ID="mjimg19" runat="server" />
                                                </asp:LinkButton>
                                            </figure>
                                            <div class="news-blog-text video-blog-text">
                                                <div class="news-blog-text-content">
                                                    <h3 class="heading">
                                                        <asp:Label ID="mjcat19" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton CssClass="sm-para" ID="mjhed19" OnClick="mjimg1_Click" runat="server" />
                                                    </h2>
                                                    <span class="date-one new-data-one"><a>
                                                        <asp:Label ID="mjdate19" runat="server" /></a> <small>by<a href="Author-<%=mjaut19.Text %>">
                                                            <asp:Label ID="mjaut19" runat="server" /></a></small></span>
                                                    <asp:Label ID="mjcod19" Visible="false" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12">
                                        <div class="load-more">
                                            <a href="All-news"><i class="fa fa-refresh"></i><span>load more news</span> </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="stay-updated" id="newsletter_id">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="stay-updated-text">
                                        <h2 class="h2">Stay Updated</h2>
                                        <span>Get weekly reports to keep yourself updated with latest news.</span><br />
                                        <br />
                                        <div name="signupForm" novalidate="" onclick="add()">
                                            <asp:Panel ID="panel2" CssClass="col-sm-8 col-xs-12" runat="server" DefaultButton="newsletter" Style="float: right">
                                                <span class="col-sm-6 col-xs-12">
                                                    <input type="email" id="email1" class="form-control" name="email" placeholder="YOUR EMAIL ADDRESS" required data-ng-model="contactdata.email" data-ng-pattern="/^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/" data-ng-class="{'error':signupForm.email.$invalid && submit}" runat="server" />
                                                </span>
                                                <asp:Button ID="newsletter" Style="float: left" Text="Sign Up" OnClick="newsletter_Click" runat="server" data-ng-click="userRegister(signupForm.$valid)" />
                                            </asp:Panel>
                                        </div>
                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="load-more" style="visibility: hidden">
                        <a></a>
                    </div>
                </div>
                <div class="shop-now">
                    <div class="container">

                        <div class="shop-now-wrap">
                            <h2 class="h2">Shop Now</h2>
                            <div class="shop-now-slides clearfix">
                                <div class="shop-now-item">
                                    <div class="shop-now-fig">
                                        <img src="Shop/op3t-a.JPG" alt="" />
                                        <div class="shop-icon">
                                            <ul class="clearfix">
                                                <li>
                                                    <a href="http://amzn.to/2rQZ8ob"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="shop-now-text">
                                        <%--<small>$160.00 <del>$320.00</del></small>--%>
                                        <h4>OnePlus 3T</h4>
                                        <%--<span class="heart"><a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><i class="fa fa-heart-o"></i><i class="fa fa-heart"></i></a></span>--%>
                                    </div>
                                </div>
                                <div class="shop-now-item">
                                    <div class="shop-now-fig">
                                        <img src="Shop/op5.JPG" alt="" />
                                        <div class="shop-icon">
                                            <ul class="clearfix">
                                                <li>
                                                    <a href="http://amzn.to/2tAMCoV"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="shop-now-text">
                                        <h4>OnePlus 5</h4>
                                    </div>
                                </div>
                                <div class="shop-now-item">
                                    <div class="shop-now-fig">
                                        <img src="Shop/shirt paintcollar.JPG" alt="" />
                                        <div class="shop-icon">
                                            <ul class="clearfix">
                                                <li>
                                                    <a href="http://paintcollar.com/men/designer-t-shirt/kninevox-official-t-shirt/5923f2f8c64db44c4d767782?model=Unisex"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="shop-now-text">
                                        <h4>KNine Vox Shirt</h4>
                                    </div>
                                </div>
                                <div class="shop-now-item">
                                    <div class="shop-now-fig">
                                        <img src="Shop/skullcandy-a.JPG" alt="" />
                                        <div class="shop-icon">
                                            <ul class="clearfix">
                                                <li>
                                                    <a href="http://amzn.to/2sPqWZo"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="shop-now-text">
                                        <h4>Skullcandy Jib Wireless Earphones</h4>
                                    </div>
                                </div>
                                <div class="shop-now-item">
                                    <div class="shop-now-fig">
                                        <img src="Shop/samsung gear s3 - a.JPG" alt="" />
                                        <div class="shop-icon">
                                            <ul class="clearfix">
                                                <li>
                                                    <a href="http://amzn.to/2sTlTYQ"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="shop-now-text">
                                        <h4>Samsung Gear S3 Classic Smartwatch</h4>
                                    </div>
                                </div>
                                <div class="shop-now-item">
                                    <div class="shop-now-fig">
                                        <img src="Shop/omen by hp-a.JPG" alt="" />
                                        <div class="shop-icon">
                                            <ul class="clearfix">
                                                <li>
                                                    <a href="http://amzn.to/2rQFpoE"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="shop-now-text">
                                        <h4>Omen by HP</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="all-products">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <footer>
                <div class="footer">
                    <div class="important-links">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12 col-sm-4">
                                    <div class="about-chronical">
                                        <div class="footer-logo">
                                            <a href="..">
                                                <img src="images/K logo only1.png" alt="KNine Vox" /></a>
                                        </div>
                                        <p>Copyright © 2017 KNine Vox</p>
                                        <p>
                                            All materials must be used with the permission of the right holder and link of the resource.
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-2">
                                    <div class="partners important-links-list">
                                        <h4>Categories</h4>
                                        <ul>
                                            <li>
                                                <a href="Technology">Technology</a>
                                            </li>
                                            <li>
                                                <a href="Science">Science</a>
                                            </li>
                                            <li>
                                                <a href="Entertainment">Entertainment</a>
                                            </li>
                                            <li>
                                                <a href="Games">Games</a>
                                            </li>
                                            <li>
                                                <a href="App">App and Software</a>
                                            </li>
                                            <li>
                                                <a href="Sports">Sports</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-2">
                                    <div class="categories important-links-list">
                                        <h4>Information</h4>
                                        <ul>
                                            <li>
                                                <a href="AboutUs">About Us</a>
                                            </li>
                                            <li>
                                                <a href="Privacy-Policy">Privacy Policy</a>
                                            </li>
                                            <li>
                                                <a href="Advertise">Advertise with us</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-2">
                                    <div class="stay-with important-links-list">
                                        <h4>stay with us</h4>
                                        <ul>
                                            <li>
                                                <a href="ContactUs">Contact Us</a>
                                            </li>
                                            <li>
                                                <a href="#newsletter_id">Newsletters &amp; Alerts</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-sticker">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="sticker">
                                        <div class="sticker-content">
                                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                            <!-- banner1 -->
                                            <ins class="adsbygoogle"
                                                style="display: block"
                                                data-ad-client="ca-pub-6572699499693151"
                                                data-ad-slot="6918032621"
                                                data-ad-format="auto"></ins>
                                            <script>
                                                (adsbygoogle = window.adsbygoogle || []).push({});
                                            </script>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="company-links">
                        <div class="container">
                            <div class="row">
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <script type="text/javascript" src="assets/js/jquery-1.12.2.min.js"></script>
        <script src="assets/js/less.js"></script>
        <script type="text/javascript" src="assets/js/angular-1.4.7.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery.countdown.js"></script>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="assets/js/angular.js"></script>
        <script type="text/javascript" src="assets/js/less.js"></script>
        <script type="text/javascript" src="assets/js/jquery.appear.js"></script>
        <script type="text/javascript" src="assets/js/jquery.countTo.js"></script>
        <script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
        <script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
        <script type="text/javascript" src="revolution/js/revolution.js"></script>
        <script type="text/javascript" src="assets/js/jquery.selectbox-0.2.min.js"></script>
        <script type="text/javascript" src="assets/js/owl.carousel.js"></script>
        <script type="text/javascript" src="assets/js/site.js"></script>
    </form>
</body>
</html>

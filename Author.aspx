<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Author.aspx.cs" Inherits="Author" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Author - <%=nam.Text %> | KNine Vox</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link href='https://fonts.googleapis.com/css?family=Domine:400,700%7CMontserrat:400,700' rel='stylesheet' type='text/css'>
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
    <script>(function (i, s, o, g, r, a, m) { i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o), m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m) })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga'); ga('create', 'UA-90582009-1', 'auto'); ga('send', 'pageview');</script>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
        (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-6572699499693151",
            enable_page_level_ads: true
        });
    </script>
</head>
<body>
    <form runat="server">
        <div class="blog-inner-page blog-category-page author-page" id="wrapper">
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
                                            <span class="search-box"><i class="fa fa-search"></i></span>
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
            <div class="banner blog-inner-banner"></div>
            <div id="content">
                <section class="blog-inner-description">
                    <div class="container">
                        <div class="row white">
                            <div class="our-blog-block clearfix">
                                <h3 class="in-block-heading">
                                    <asp:Label ID="pos" runat="server" /></h3>
                                <ul class="social-link-block clearfix">
                                    <li>
                                        <asp:LinkButton ID="face" OnClick="face_Click" runat="server"><i class="fa fa-facebook"></i></asp:LinkButton>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="twit" OnClick="face_Click" runat="server"><i class="fa fa-twitter"></i></asp:LinkButton>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="insta" OnClick="face_Click" runat="server"><i class="fa fa-instagram"></i></asp:LinkButton>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="gplus" OnClick="face_Click" runat="server"><i class="fa fa-google-plus"></i></asp:LinkButton>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="linked" OnClick="face_Click" runat="server"><i class="fa fa-linkedin-square"></i></asp:LinkButton>
                                    </li>
                                </ul>
                                <blockquote class="our-blog-content">
                                    <header>
                                        <figure>
                                            <asp:Image ID="img" Width="220px" Height="220px" runat="server" />
                                        </figure>
                                        <h4>
                                            <asp:Label ID="nam" runat="server" /></h4>
                                    </header>
                                    <p>
                                        <asp:Label ID="dis" runat="server" />
                                    </p>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="news-sec news-inner-page">
                    <div class="container">
                        <div class="row news-inner-wrapper news-item news-feed-section">
                            <div class="col-xs-12 col-sm-12">
                                <div class="row">
                                    <div class="filter-section">
                                        <div class="filter-content filter-one filter-content-one active clearfix">

                                            <asp:DataList ID="DataList1" DataKeyField="mjcod" OnItemDataBound="DataList1_ItemDataBound" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" runat="server">
                                                <ItemTemplate>
                                                    <div class="filter-item large-item">
                                                        <div class="filter-item-text" style="min-height: 150px">
                                                            <h2>
                                                                <asp:LinkButton ID="ahed" CssClass="sm-para" CommandName="Select" Text='<%#Eval("mjhed") %>' runat="server" />
                                                            </h2>
                                                            <span class="date-one new-data-one">
                                                                <asp:LinkButton ID="adate" Text='<%#Eval("mjdate") %>' runat="server"></asp:LinkButton>
                                                                <small><a>by</a><asp:LinkButton ID="aaut" OnClick="aaut_Click" Text='<%#Eval("mjautcod") %>' runat="server" /></small></span>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
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
        <script type="text/javascript" src="assets/js/less.js"></script>
        <script type="text/javascript" src="assets/js/jquery.selectbox-0.2.min.js"></script>
        <script type="text/javascript" src="assets/js/owl.carousel.js"></script>
        <script type="text/javascript" src="assets/js/site.js"></script>
    </form>
</body>
</html>

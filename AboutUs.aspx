<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>About Us | KNine Vox</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link href='https://fonts.googleapis.com/css?family=Domine:400,700%7CMontserrat:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/css/owl.carousel.css" />
    <link rel="stylesheet" href="assets/css/global.css" />
    <link rel="stylesheet" type="text/css" href="revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
    <link rel="stylesheet" type="text/css" href="revolution/css/navigation.css">
    <link rel="stylesheet" href="assets/css/style.css" />
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
    <div class="blog-inner-page special-projects-page about-us-page" id="wrapper">
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
                            <form class="search-here" runat="server">
                                <asp:Panel ID="Panel1" runat="server" DefaultButton="search_button">
                                    <input id="inpt_search" type="text" placeholder="Search" runat="server" />
                                    <asp:Button ID="search_button" type="submit" value="" CausesValidation="false" OnClick="search_button_Click" runat="server" />
                                </asp:Panel>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="banner">
            <div>
                <img src="images/wlfiflXresized.png" alt="abc" />
            </div>
        </div>
        <div id="content">
            <section class="blog-inner-description special-projects-heading">
                <div class="container">
                    <div class="row white">
                        <div class="col-xs-12">
                            <h2 class="h2">About «KNine Vox»</h2>
                            <div class="about-banner">
                                <img src="images/social media back.jpg" alt="about-us-banner" />
                            </div>
                            <div class="col-sm-10 our-office col-sm-offset-1">
                                <h2>Let the content speak for itself</h2>
                            </div>
                            <div class="about-content col-sm-12 ">
                                <div class="about-text clearfix">
                                    <span>K</span>
                                    <p>
                                        Nine Vox is an emerging news/media website, we cover vast category of topics whether it is technology, sports or entertainment, we cover it all!. With every article we try to provide our readers with an immersive experience which not only entertains them but also educate them.
                                    </p>
                                </div>
                                <h2>How we started and where are we now?</h2>
                                <p>
                                    KNine Vox started as a platform for all tech enthusiasts to get the latest information regarding everything related to tech world, whether it was new mobile releases, amazing gadgets, or reviews
                                    of different mobiles and laptops. We recceived overhelming response from our readers and so we decided it was time to step up and we created a bigger news/media website that not only covers tech news but also 
                                    provides you with updates on different topics.
                                </p>
                                <h2>Why KNine Vox?</h2>
                                <p>
                                    Founded in January 2017 has now reached over hundred thousand people all across the world providing the users with latest and best coverage of everything happening in the world.
                                    It is very important in today’s world to stay updated with the current news. To enhance your knowledge and to keep you updated with the daily news and information, here we are: KNine Vox.
KNine Vox is complete doze of your daily needs. We give you latest news in the field of Technology, Sports, Science and most of the other stuff that you need to know that are related to your life directly or indirectly.
After hard working reseach our young powerful team of experts give you a detailed and critical view on each event.
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <div class="our-correspondents our-correspondents">
                <div class="container">
                    <div class="row">
                        <div class="our-correspondents-wrap">
                            <h2 class="h2">Our Team</h2>
                            <div class="correspondents-slides">
                                <div class="correspondents-item">
                                    <div class="correspondents-fig">
                                        <img src="Author/Akshay1.jpg" alt="" />
                                        <div class="correspondents-social">
                                            <ul>
                                                <li>
                                                    <a href="https://twitter.com/AkshayBH23"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li>
                                                    <a href="https://www.linkedin.com/in/akshayBhardwaj-23"><i class="fa fa-linkedin"></i></a>
                                                </li>
                                                <li>
                                                    <a href="https://plus.google.com/u/0/+AkshayBhardwaj_23"><i class="fa fa-google-plus"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="correspondents-text">
                                        <strong class="correspondent-name">Akshay Bhardwaj</strong>
                                        <span class="proffetion">Founder and Developer</span>
                                    </div>
                                </div>
                                <div class="correspondents-item">
                                    <div class="correspondents-fig">
                                        <img src="Author/Harry1.jpg" alt="" />
                                        <div class="correspondents-social">
                                            <ul>
                                                <li>
                                                    <a href="https://plus.google.com/u/0/+RishavBhardwaj26"><i class="fa fa-google-plus"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="correspondents-text">
                                        <strong class="correspondent-name">Rishav Bhardwaj</strong>
                                        <span class="proffetion">Co-Founder, Senior Editor</span>
                                    </div>
                                </div>
                                <div class="correspondents-item">
                                    <div class="correspondents-fig">
                                        <img src="Author/Godra1.jpg" alt="" />
                                        <div class="correspondents-social">
                                            <ul>
                                                <li>
                                                    <a href="https://www.facebook.com/gaurav.kapil.5"><i class="fa fa-facebook"></i></a>
                                                </li>
                                                <li>
                                                    <a href="https://twitter.com/IamGauravKapil"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li>
                                                    <a href="https://www.instagram.com/traveller_kapil/"><i class="fa fa-instagram"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="correspondents-text">
                                        <strong class="correspondent-name">Gaurav Kapil</strong>
                                        <span class="proffetion">Co-founder, Marketing Head</span>
                                    </div>
                                </div>
                                <div class="correspondents-item">
                                    <div class="correspondents-fig">
                                        <img src="Author/Richie1.jpeg" alt="" />
                                        <div class="correspondents-social">
                                            <ul>
                                                <li>
                                                    <a href="https://www.facebook.com/parneet.singh.775"><i class="fa fa-facebook"></i></a>
                                                </li>
                                                <li>
                                                    <a href="https://twitter.com/Parneetsingh41?s=08"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li>
                                                    <a href="https://plus.google.com/114109119494044958953"><i class="fa fa-google-plus"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="correspondents-text">
                                        <strong class="correspondent-name">Parneet Singh</strong>
                                        <span class="proffetion">Editor</span>
                                    </div>
                                </div>
                            </div>
                            <div class="correspondents-border"></div>
                        </div>
                    </div>
                </div>
            </div>
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
    <script type="text/javascript" src="assets/js/jquery.appear.js"></script>
    <script type="text/javascript" src="assets/js/jquery.countTo.js"></script>
    <script type="text/javascript" src="assets/js/site.js"></script>
</body>
</html>

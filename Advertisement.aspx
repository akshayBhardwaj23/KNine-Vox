<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advertisement.aspx.cs" Inherits="Advertisement" %>

<!DOCTYPE html>
<html data-ng-app="cronical">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Advertisement | KNine Vox</title>
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
    <script>
        function remove() {
            document.getElementById("Name1").removeAttribute("required");
            document.getElementById("Email1").removeAttribute("required");
            document.getElementById("Message1").removeAttribute("required");
            document.getElementById("Subject1").removeAttribute("required");
            document.getElementById("Company1").removeAttribute("required");
            document.getElementById("Email1").type = 'text';
        }
        function add() {
            var e = document.getElementById("Name1");
            e.setAttribute("required", "true");
            e = document.getElementById("Email1");
            e.setAttribute("required", "true");
            e.type = 'Email1';
            e = document.getElementById("Message1");
            e.setAttribute("required", "true");
            e = document.getElementById("Subject1");
            e.setAttribute("required", "true");
            e = document.getElementById("Company1");
            e.setAttribute("required", "true");
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
        <div class="blog-inner-page blog-category-page" id="wrapper">
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
                                            <span class="search-box" onclick="remove()"><i class="fa fa-search"></i></span>
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
                <div class="contact-about-us">
                    <div class="container">
                        <h3><strong>Advertise</strong></h3>
                        <div class="row contact-about-us-section">
                            <div class="col-md-3 col-sm-5">
                                <h2>Find Us Here:</h2>
                                <span><a href="mailto:kninevox@gmail.com"><i class="fa fa-envelope"></i>kninevox@gmail.com</a></span>
                            </div>
                            <div class="col-md-9 col-sm-7">
                                <p>
                                    KNine Vox is an independent and dedicated online web platform that acts as a catalyst to connect the readers and knowledge seekers to the world. Starting from Mobiles and technology we now cover almost everything including sports and entertainment, our readers and viewers rely on our information and updates.
                                </p>
                                <br />
                                <p>
                                    Month after month, we have been reaching thousands of viewers who have heavily trusted our vast information compiled by a group of passionate young experts.
                                </p>
                                <br />
                                <p>
                                    Our readers have been heavily dependent on our accurate and practical expert advice, recommendations and critical analysis of very single field. This gives us a competitive edge and gives us a platform for a immense growth in coming years. We believe that we are in the race to be a fastest growing web platform in the world this has been supported by our beloved audience.
                                </p>
                                <br />
                                <p>
                                    Hence, you are welcome to advertise with us and our team will rest ensure how to use a magic formula of innovation and advertising skills to take your product to new heights.

                                </p>
                                <br />
                                <br />
                                <h2>Opportunities</h2>
                                <p>
                                    We have various options by which you can advertise on our platform.
                                </p>
                                <ul class="default-list list-style-one">
                                    <li>Sponsored Posts</li>
                                    <li>Banner Advertising</li>
                                    <li>Takeovers/Site Skins</li>
                                    <li>Video</li>
                                    <li>Giveaways</li>
                                    <li>Newsletter Sponsorships</li>
                                </ul>
                                <p>
                                    For more information contact us using the form given below.
                                </p>
                            </div>
                        </div>

                        <h3><strong>Fill this up</strong></h3>

                        <div class="leave-reply-section contact-us-section">
                            <div name="contactForm" novalidate="" onclick="add()">
                                <asp:Panel ID="Panel2" runat="server">
                                    <div class="row">
                                        <span class="col-sm-4 reply-field">
                                            <input type="text" id="Name1" name="name" placeholder="Your Name" class="form-control" required data-ng-model="contactdata.name" data-ng-pattern="/^[a-zA-Z]+$/" data-ng-class="{'error':contactForm.name.$invalid && submit}" runat="server" />
                                        </span>
                                        <span class="col-sm-4 reply-field">
                                            <input type="email" name="email" id="Email1" placeholder="Your Email" class="form-control" required data-ng-model="contactdata.email" data-ng-pattern="/^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/" data-ng-class="{'error':contactForm.email.$invalid && submit}" runat="server" />
                                        </span>
                                        <span class="col-sm-4 reply-field">
                                            <input type="text" name="website" id="Website1" placeholder="Your Website(if any)" class="form-control" data-ng-model="contactdata.website" data-ng-class="{'error':contactForm.website.$invalid && submit}" runat="server" />
                                        </span>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="row">
                                        <span class="col-sm-8 reply-field">
                                            <input type="text" id="Subject1" name="subject" placeholder="Subject" class="form-control" required data-ng-model="contactdata.subject" data-ng-pattern="/^[a-zA-Z]+$/" data-ng-class="{'error':contactForm.subject.$invalid && submit}" runat="server" />
                                        </span>
                                        <span class="col-sm-4 reply-field">
                                            <input type="text" id="Company1" name="company" placeholder="Company Name" class="form-control" required data-ng-model="contactdata.company" data-ng-pattern="/^[a-zA-Z]+$/" data-ng-class="{'error':contactForm.company.$invalid && submit}" runat="server" />
                                        </span>
                                    </div>
                                    <br />
                                    <br />
                                    <span class="reply-field">
                                        <textarea placeholder="Message Text" name="message" id="Message1" cols="30" rows="10" class="form-control" required data-ng-model="contactdata.message" data-ng-pattern="/^[a-zA-Z0-9]/" data-ng-class="{'error':contactForm.message.$invalid && submit}" runat="server"></textarea>
                                    </span>
                                    <asp:Button ID="Button1" CssClass="btn btn-custom" Text="Send Message" OnClick="Button1_Click" runat="server"></asp:Button>
                                </asp:Panel>
                            </div>
                            <br />
                            <br />
                            <asp:Label ID="Label3" runat="server" />
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
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js"></script>
        <script type="text/javascript" src="assets/js/jquery.countdown.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="assets/js/less.js"></script>
        <script type="text/javascript" src="assets/js/jquery.selectbox-0.2.min.js"></script>
        <script type="text/javascript" src="assets/js/owl.carousel.js"></script>
        <script type="text/javascript" src="assets/js/map.js"></script>
        <script type="text/javascript" src="assets/js/angular.js"></script>
        <script type="text/javascript" src="assets/js/site.js"></script>
    </form>
</body>
</html>

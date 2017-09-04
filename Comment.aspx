<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Comment.aspx.cs" Inherits="Comment" %>

<!DOCTYPE html>
<html data-ng-app="cronical">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Comment Policy | KNine Vox</title>
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
</head>
<body data-ng-controller="cronicalCnt">
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
        <div class="banner blog-inner-banner"></div>
        <div id="content">
            <div class="contact-about-us">
                <div class="container">
                    <h3><strong>Comment Policy</strong></h3>
                    <div class="row contact-about-us-section">
                        <div class="col-md-3 col-sm-5">
                            <h2>Find Us Here:</h2>
                            <%--<span class="add"><i class="fa fa-map-marker"></i>Baker Street, NewYork, Colden</span>--%>
                            <span><a href="mailto:kninevox@gmail.com"><i class="fa fa-envelope"></i>kninevox@gmail.com</a></span>
                            <%--<span><a href="tel:88001234567"><i class="fa fa-phone"></i>(8 800) 123 45 67</a></span>--%>
                        </div>
                        <div class="col-md-9 col-sm-7">

                            <p>We’ve put together a set of universal guidelines that we believe this community can benefit from and moderators can adopt. Our goal is to ensure that these set of guidelines are easy to understand and widely applicable. It’s not meant to be comprehensive, rather focusing on the most commonly shared principles we believe are critical for setting a foundation in a community to enable it to thrive.</p>
                            <br />
                            <br />
                            <h2>Keep it civil aka don’t be a jerk</h2>

                            <p>We’re going to get into the thick of a lot of heated discussions and that’s okay. These discussions often entail topics that we all personally care a lot about and will passionately defend. But in order for discussions to thrive here, we need to remember to <strong>criticize ideas, not people</strong>.</p>
                            <p>So, remember to avoid:</p>
                            <ul class="default-list list-style-one">
                                <li>name-calling</li>
                                <li>ad hominem attacks</li>
                                <li>Responding to a post’s tone instead of its actual content.</li>
                                <li>PD pixel area by 100%</li>
                                <li>Low light Large aperture (t/1.7) (lower the aperture number, larger the angle) </li>
                                <li>knee-jerk contradiction</li>
                            </ul>
                            <p>Comments that we find to be hateful, inflammatory, or harassing may be removed. If you don’t have something nice to say about another user, don't say it. Treat others the way you’d like to be treated.</p>
                            <br />
                            <br />
                            <h2>Always strive to add value to every interaction and discussion you participate in</h2>
                            <p>There are a lot of discussions that happen every day on Disqus. Before joining in a discussion, browse through some of the most recent and active discussions happening in the community, especially if you’re new there.</p>
                            <p>If you are not sure your post adds to the conversation, think over what you want to say and try again later.</p>
                            <br />
                            <br />
                            <h2>Keep it tidy</h2>
                            <p>Help make moderators’ lives easier by taking a moment to ensure that what you’re about to post is in the right place. That means:</p>
                            <ul class="default-list list-style-one">
                                <li>don’t post off-topic comments or discussions</li>
                                <li>don’t cross-post the same thing multiple times</li>
                                <li>review any specific posting guidelines for the community</li>                                
                            </ul>                            
                            <br />
                            <br />
                            <h2>If you see something, say something</h2>

                            <p>Moderators are at the forefront of combatting spam, mediating disputes and enforcing community guidelines and, so are you.</p>
                            <p>If you see an issue, contact the moderators if possible or flag any comments for review. If you believe someone has violated the Basic Rules, report it to Disqus by flagging the user's profile.</p>
                            <br />
                            <br />
                            <h2>Choose Your (Curse) Words Wisely</h2>

                            <p>Comments that contain profanity are automatically held for moderator review before being posted. Depending on the context of the comment, it may be removed. Profanity used to insult, antagonize, or inflame will always be removed.</p>
                            <br />
                            <br />
                            <h2>Don’t Be a Jerk</h2>

                            <p>Personal attacks and harassment will not be tolerated. Sexist, racist, misogynist, homophobic, and broad, offensive generalizations about groups of people are simply not allowed. Comments or discussions written intentionally to provoke will also be removed.</p>
                            <br />
                            <br />
                            <h2>Don’t Copy and Paste</h2>

                            <p>If you didn’t write it, or haven’t properly cited the article you’re quoting, don’t post it.</p>
                            <br />
                            <br />                           

                            <p>This document was last updated on July 12, 2017</p>
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
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js"></script>
    <script type="text/javascript" src="assets/js/jquery.countdown.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/less.js"></script>
    <script type="text/javascript" src="assets/js/jquery.selectbox-0.2.min.js"></script>
    <script type="text/javascript" src="assets/js/owl.carousel.js"></script>
    <script type="text/javascript" src="assets/js/map.js"></script>
    <script type="text/javascript" src="assets/js/angular.js"></script>
    <script type="text/javascript" src="assets/js/site.js"></script>
</body>
</html>

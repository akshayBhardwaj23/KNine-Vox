<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Privacy.aspx.cs" Inherits="Privacy" %>

<!DOCTYPE html>
<html data-ng-app="cronical">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Privacy Policy | KNine Vox</title>
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
                    <h3><strong>Privacy Policy</strong></h3>
                    <div class="row contact-about-us-section">
                        <div class="col-md-3 col-sm-5">
                            <h2>Find Us Here:</h2>
                            <%--<span class="add"><i class="fa fa-map-marker"></i>Baker Street, NewYork, Colden</span>--%>
                            <span><a href="mailto:kninevox@gmail.com"><i class="fa fa-envelope"></i>kninevox@gmail.com</a></span>
                            <%--<span><a href="tel:88001234567"><i class="fa fa-phone"></i>(8 800) 123 45 67</a></span>--%>
                        </div>
                        <div class="col-md-9 col-sm-7">

                            <p>This privacy policy ("Policy") describes how we collect, protect and use the personally identifiable information ("Personal Information") you ("User", "you" or "your") provided on the http://www.kninevox.com website and any of its products or services (collectively, "Website" or "Services"). It also describes the choices available to you regarding our use of your personal information and how you can access and update this information. This Policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage.</p>
                            <br />
                            <br />
                            <h2>Collection of personal information</h2>

                            <p>We receive and store any information you knowingly provide to us when you fill any online forms on the Website.  You can choose not to provide us with certain information, but then you may not be able to take advantage of some of the Website's features.</p>
                            <br />
                            <br />
                            <h2>Collection of non-personal information</h2>

                            <p>When you visit the Website our servers automatically record information that your browser sends. This data may include information such as your computer's IP address, browser type and version, operating system type and version, language preferences or the webpage you were visiting before you came to our Website, pages of our Website that you visit, the time spent on those pages, information you search for on our Website, access times and dates, and other statistics.</p>
                            <br />
                            <br />
                            <h2>Use of collected information</h2>

                            <p>Any of the information we collect from you may be used to  send notification emails such as password reminders, updates, etc;  run and operate our Website and Services. Non-personal information collected is used only to identify potential cases of abuse and establish statistical information regarding Website traffic and usage. This statistical information is not otherwise aggregated in such a way that would identify any particular user of the system.</p>
                            <br />
                            <br />
                            <h2>Children</h2>

                            <p>We do not knowingly collect any personal information from children under the age of 13. If you are under the age of 13, please do not submit any personal information through our Website or Service. We encourage parents and legal guardians to monitor their children's Internet usage and to help enforce this Policy by instructing their children never to provide personal information through our Website or Service without their permission. If you have reason to believe that a child under the age of 13 has provided personal information to us through our Website or Service, please contact us.</p>
                            <br />
                            <br />
                            <h2>Newsletters</h2>

                            <p>We offer electronic newsletters to which you may voluntarily subscribe at any time. You may choose to stop receiving our newsletter or marketing emails by following the unsubscribe instructions included in these emails or by contacting us.</p>
                            <br />
                            <br />
                            <h2>Cookies</h2>

                            <p>The Website uses "cookies" to help personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you. We may use cookies to collect, store, and track information for statistical purposes to operate our Website and Services. You have the ability to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer.</p>
                            <br />
                            <br />
                            <h2>Advertisement</h2>

                            <p>We may display online advertisements and we may share aggregated and non-identifying information about our customers that we collect through the registration process or through online surveys and promotions with certain advertisers. We do not share personally identifiable information about individual customers with advertisers. In some instances, we may use this aggregated and non-identifying information to deliver tailored advertisements to the intended audience.</p>
                            <br />
                            <br />
                            <h2>Links to other websites</h2>

                            <p>Our Website contains links to other websites that are not owned or controlled by us. Please be aware that we are not responsible for the privacy practices of such other websites or third parties. We encourage you to be aware when you leave our Website and to read the privacy statements of each and every website that may collect personal information.</p>
                            <br />
                            <br />
                            <h2>Information security</h2>

                            <p>We secure information you provide on computer servers in a controlled, secure environment, protected from unauthorized access, use, or disclosure. We maintain reasonable administrative, technical, and physical safeguards in an effort to protect against unauthorized access, use, modification, and disclosure of personal information in its control and custody. However, no data transmission over the Internet or wireless network can be guaranteed. Therefore, while we strive to protect your personal information, you acknowledge that (i) there are security and privacy limitations of the Internet which are beyond our control; (ii) the security, integrity, and privacy of any and all information and data exchanged between you and our Website cannot be guaranteed; and (iii) any such information and data may be viewed or tampered with in transit by a third party, despite best efforts.</p>
                            <br />
                            <br />
                            <h2>Data breach</h2>

                            <p>In the event we become aware that the security of the Website has been compromised or users Personal Information has been disclosed to unrelated third parties as a result of external activity, including, but not limited to, security attacks or fraud, we reserve the right to take reasonably appropriate measures, including, but not limited to, investigation and reporting, as well as notification to and cooperation with law enforcement authorities. In the event of a data breach, we will make reasonable efforts to notify affected individuals if we believe that there is a reasonable risk of harm to the user as a result of the breach or if notice is otherwise required by law. When we do we will post a notice on the Website, send you an email.</p>
                            <br />
                            <br />
                            <h2>Legal disclosure</h2>

                            <p>We will disclose any information we collect, use or receive if required or permitted by law, such as to comply with a subpoena, or similar legal process, and when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request. In the event we go through a business transition, such as a merger or acquisition by another company, or sale of all or a portion of its assets, your user account and personal data will likely be among the assets transferred.</p>
                            <br />
                            <br />
                            <h2>Changes and amendments</h2>

                            <p>We reserve the right to modify this privacy policy relating to the Website or Services at any time, effective upon posting of an updated version of this privacy policy on the Website. When we do we will  revise the updated date at the bottom of this page. Continued use of the Website after any such changes shall constitute your consent to such changes. Policy was created with <a style="color: #222" target="_blank" title="Generate privacy policy" href="https://www.websitepolicies.com/privacy-policy-generator">WebsitePolicies.com</a></p>
                            <br />
                            <br />
                            <h2>Acceptance of this policy</h2>

                            <p>You acknowledge that you have read this Policy and agree to all its terms and conditions. By using the Website or its Services you agree to be bound by this Policy. If you do not agree to abide by the terms of this Policy, you are not authorized to use or access the Website and its Services.</p>
                            <br />
                            <br />
                            <h2>Contacting us</h2>

                            <p>If you have any questions about this Policy, please <a href="ContactUs" style="color: #bc8847 !important">contact us</a>.</p>

                            <p>This document was last updated on June 18, 2017</p>
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

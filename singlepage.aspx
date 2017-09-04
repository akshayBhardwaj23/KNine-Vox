<%@ Page Language="C#" AutoEventWireup="true" CodeFile="singlepage.aspx.cs" Inherits="singlepage" %>

<!DOCTYPE html>
<html data-ng-app="cronical">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="<%=ddis1.Text %>">
    <title><%=dhed.Text %> - KNine Vox</title>
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@KNineVox" />
    <meta name="twitter:title" content="<%=dhed.Text %>" />
    <meta name="twitter:description" content="<%=ddis1.Text %>" />
    <meta name="twitter:image" content="http://kninevox.com/<%=dimg.ImageUrl.Substring(3) %>" />
    <meta itemprop="name" content="<%=dhed.Text %>">
    <meta itemprop="description" content="<%=ddis1.Text %>">
    <meta itemprop="image" content="http://kninevox.com/<%=dimg.ImageUrl.Substring(3) %>">
    <meta property="og:title" content="<%=dhed.Text %>" />
    <meta property="og:description" content="<%=ddis1.Text %>" />
    <meta property="og:url" content="<%=HttpContext.Current.Request.Url.AbsoluteUri %>" />
    <meta property="og:image" content="http://kninevox.com/<%=dimg.ImageUrl.Substring(3) %>" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <link href='https://fonts.googleapis.com/css?family=Domine:400,700%7CMontserrat:400,700' rel='stylesheet' type='text/css' />
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
    <link rel="stylesheet" type="text/css" href="assets/css/table.css">
    <link href="//cdn-images.mailchimp.com/embedcode/classic-10_7.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        #mc_embed_signup {
            background: #fff;
            clear: left;
            font: 14px Helvetica,Arial,sans-serif;
        }
    </style>
    <style>
        a {
            color: #bc8847;
        }
    </style>
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
        <div class="blog-inner-page" id="wrapper">
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
                <div class="blog-inner-description">
                    <div class="container">
                        <div class="row white">
                            <div class="social-feed-back clearfix">
                                <ul class="social-feedback-link clearfix">
                                    <li>
                                        <a href="http://www.facebook.com/sharer.php?u=<%=HttpContext.Current.Request.Url.AbsoluteUri %>"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="https://twitter.com/share?url=<%=HttpContext.Current.Request.Url.AbsoluteUri %>;text=<%=dhed.Text %>&amp;hashtags=KNineVox"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="https://plusone.google.com/_/+1/confirm?hl=en&url=<%=HttpContext.Current.Request.Url.AbsoluteUri %>" target="_blank"><i class="fa fa-google-plus"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div>
                                <div class="hidden-sm hidden-xs" style="margin: 0 auto; position: relative; width: 83.1%;">
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
                            </div>
                        </div>
                    </div>
                </div>
                <section class="news-sec news-inner-page">
                    <div class="container">
                        <div class="row news-inner-wrapper">
                            <div class="col-xs-12 col-sm-8">
                                <div class="news-blog news-banner-one">
                                    <div class="news-blog-fig">
                                        <asp:Image CssClass="flipboard-image" itemprop="image" ID="dimg" runat="server" Width="100%" />
                                    </div>
                                </div>
                                <div class="profile-content">
                                    <div class="profile-info-block">
                                        <span class="profile-info-text"><a>
                                            <asp:Label CssClass="flipboard-date" ID="date" runat="server" /></a></span>
                                        <span class="profile-info-text">
                                            <asp:Label CssClass="flipboard-remove" ID="cat" runat="server" /><i class="fa fa-thumb-tack"></i></span>
                                    </div>
                                    <h1 style="color: black; padding-bottom: 27px; font-weight: bold; font-size: xx-large;">
                                        <asp:Label CssClass="flipboard-title" ID="dhed" runat="server" /></h1>
                                    <asp:Literal ID="ddis" runat="server"></asp:Literal>
                                    <asp:Label CssClass="flipboard-keep" itemprop="description" ID="ddis1" Visible="false" runat="server" />
                                </div>
                                <div class="profile-icon-wrapper">
                                    <div class="profile-icon">
                                        <figure>
                                            <a href="Author-<%=autname.Text %>">
                                                <asp:Image CssClass="flipboard-remove" ID="autimg" Width="80px" runat="server" /></a>
                                        </figure>
                                        <h3><a href="Author-<%=autname.Text %>">
                                            <asp:Label CssClass="flipboard-author" ID="autname" runat="server" /></a></h3>
                                    </div>
                                    <div class="share">
                                        <span class="share-head"><small><i class="fa fa-retweet"></i></small><strong>share</strong> </span>
                                        <ul class="clearfix">
                                            <li>
                                                <a href="http://www.facebook.com/sharer.php?u=<%=HttpContext.Current.Request.Url.AbsoluteUri %>" target="_blank"><i class="fa fa-facebook"></i></a>
                                            </li>
                                            <li>
                                                <a href="https://twitter.com/share?url=<%=HttpContext.Current.Request.Url.AbsoluteUri %>;text=<%=dhed.Text %>&amp;hashtags=KNineVox" target="_blank"><i class="fa fa-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="https://plusone.google.com/_/+1/confirm?hl=en&url=<%=HttpContext.Current.Request.Url.AbsoluteUri %>" target="_blank"><i class="fa fa-google-plus"></i></a>
                                            </li>
                                            <li>
                                                <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=<%=HttpContext.Current.Request.Url.AbsoluteUri %>" target="_blank"><i class="fa fa-linkedin"></i></a>
                                            </li>
                                            <li>
                                                <a href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());"><i class="fa fa-pinterest-p"></i></a>
                                            </li>
                                            <li>
                                                <a href="http://www.reddit.com/submit?url=<%=HttpContext.Current.Request.Url.AbsoluteUri %>&title=<%=dhed.Text %>" target="_blank"><i class="fa fa-reddit"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <figure class="aside-long-img">
                                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                        <!-- banner5 -->
                                        <ins class="adsbygoogle"
                                            style="display: inline-block; width: 120px; height: 600px"
                                            data-ad-client="ca-pub-6572699499693151"
                                            data-ad-slot="3824965425"></ins>
                                        <script>
                                            (adsbygoogle = window.adsbygoogle || []).push({});
                                        </script>
                                    </figure>
                                </div>
                                <div id="disqus_thread"></div>
                                <script>
                                    var disqus_config = function () {
                                        this.page.url = "<%=HttpContext.Current.Request.Url.AbsoluteUri %>";
                                        this.page.identifier = <%=RouteData.Values["queryValues"].ToString() %>;
                                    };                                    
                                    (function () {
                                        var d = document, s = d.createElement('script');
                                        s.src = 'https://http-www-kninevox-com.disqus.com/embed.js';
                                        s.setAttribute('data-timestamp', +new Date());
                                        (d.head || d.body).appendChild(s);
                                    })();                                    
                                </script>
                                <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
                                <div class="load-wrap" style="visibility: hidden">
                                    <a></a>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <div class="aside-sec-wrap">
                                    <div class="aside-sec">
                                        <figure>
                                            <asp:Image ID="limg" runat="server" />
                                        </figure>
                                        <div class="live-news-feed-wrap">
                                            <div class="span-wrapper">
                                                <span class="live-news">Latest News Feed</span>
                                            </div>
                                        </div>
                                    </div>
                                    <ul>
                                        <li>
                                            <asp:LinkButton ID="lhed1" OnClick="lhed1_Click" runat="server" />
                                            <asp:Label ID="lcod1" runat="server" Visible="false" />
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lhed2" OnClick="lhed1_Click" runat="server" />
                                            <asp:Label ID="lcod2" runat="server" Visible="false" />
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lhed3" OnClick="lhed1_Click" runat="server" />
                                            <asp:Label ID="lcod3" runat="server" Visible="false" />
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lhed4" OnClick="lhed1_Click" runat="server" />
                                            <asp:Label ID="lcod4" runat="server" Visible="false" />
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lhed5" OnClick="lhed1_Click" runat="server" />
                                            <asp:Label ID="lcod5" runat="server" Visible="false" />
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lhed6" OnClick="lhed1_Click" runat="server" />
                                            <asp:Label ID="lcod6" runat="server" Visible="false" />
                                        </li>
                                        <li>
                                            <asp:LinkButton ID="lhed7" OnClick="lhed1_Click" runat="server" />
                                            <asp:Label ID="lcod7" runat="server" Visible="false" />
                                        </li>
                                    </ul>
                                </div>
                                <div class="most-popular-block">
                                    <h2>Most Popular</h2>
                                    <ul class="most-popular">
                                        <li class="most-popular-bg-one" style="background: #3e3e3e;">
                                            <div class="most-popular-wrapper">
                                                <span>01</span>
                                                <h3>
                                                    <asp:LinkButton ID="mhed1" OnClick="lhed1_Click" runat="server" /></h3>
                                                <asp:Label ID="mcod1" Visible="false" runat="server" />
                                            </div>
                                        </li>
                                        <li class="most-popular-bg-two" style="background: #3e3e3e;">
                                            <div class="most-popular-wrapper">
                                                <span>02</span>
                                                <h3>
                                                    <asp:LinkButton ID="mhed2" OnClick="lhed1_Click" runat="server" /></h3>
                                                <asp:Label ID="mcod2" Visible="false" runat="server" />
                                            </div>
                                        </li>
                                        <li class="most-popular-bg-three" style="background: #3e3e3e;">
                                            <div class="most-popular-wrapper">
                                                <span>03</span>
                                                <h3>
                                                    <asp:LinkButton ID="mhed3" OnClick="lhed1_Click" runat="server" /></h3>
                                                <asp:Label ID="mcod3" Visible="false" runat="server" />
                                            </div>
                                        </li>
                                        <li class="most-popular-bg-four" style="background: #3e3e3e;">
                                            <div class="most-popular-wrapper">
                                                <span>04</span>
                                                <h3>
                                                    <asp:LinkButton ID="mhed4" OnClick="lhed1_Click" runat="server" /></h3>
                                                <asp:Label ID="mcod4" Visible="false" runat="server" />
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div id="mc_embed_signup">
                                    <form action="//kninevox.us16.list-manage.com/subscribe/post?u=332a3275fb4c3192a0c12b172&amp;id=a1eafafbcc" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                        <div id="mc_embed_signup_scroll">
                                            <h2>Get weekly reports to keep yourself updated with latest news.</h2>
                                            <div class="indicates-required"><span class="asterisk">*</span> indicates required</div>
                                            <div class="mc-field-group">
                                                <label for="mce-EMAIL">
                                                    Email Address  <span class="asterisk">*</span>
                                                </label>
                                                <input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
                                            </div>
                                            <div id="mce-responses" class="clear">
                                                <div class="response" id="mce-error-response" style="display: none"></div>
                                                <div class="response" id="mce-success-response" style="display: none"></div>
                                            </div>
                                            <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                            <div style="position: absolute; left: -5000px;" aria-hidden="true">
                                                <input type="text" name="b_332a3275fb4c3192a0c12b172_a1eafafbcc" tabindex="-1" value="">
                                            </div>
                                            <div class="clear">
                                                <input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script>
                                <script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='FNAME';ftypes[1]='text';fnames[2]='LNAME';ftypes[2]='text';}(jQuery));var $mcj = jQuery.noConflict(true);</script>
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
                </section>
                <section class="related-post-section news-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 related-post-header clearfix">
                                <h2>Related Posts</h2>
                            </div>
                            <div class="related-post-block clearfix">
                                <div class="filter-item zoom">
                                    <figure class="filter-img-item">
                                        <asp:LinkButton ID="rlkimg1" OnClick="lhed1_Click" runat="server">
                                            <asp:Image ID="rimg1" runat="server" />
                                        </asp:LinkButton>
                                    </figure>
                                    <div class="filter-item-text">
                                        <h3 class="heading">
                                            <asp:Label ID="rcat1" runat="server" /></h3>
                                        <h2>
                                            <asp:LinkButton ID="rhed1" CssClass="sm-para" OnClick="lhed1_Click" runat="server" />
                                            <asp:LinkButton CssClass="sm-para" OnClick="lhed1_Click" ID="rdis1" runat="server" />
                                        </h2>
                                        <span class="date-one new-data-one"><a>
                                            <asp:Label ID="rdate1" runat="server" /></a> <small>by
												<asp:LinkButton OnClick="raut1_Click" ID="raut1" runat="server" />
                                            </small></span>
                                        <asp:Label ID="rcod1" Visible="false" runat="server" />
                                    </div>
                                </div>
                                <div class="filter-item zoom">
                                    <figure class="filter-img-item">
                                        <asp:LinkButton ID="rlkimg2" OnClick="lhed1_Click" runat="server">
                                            <asp:Image ID="rimg2" runat="server" />
                                        </asp:LinkButton>
                                    </figure>
                                    <div class="filter-item-text">
                                        <h3 class="heading">
                                            <asp:Label ID="rcat2" runat="server" /></h3>
                                        <h2>
                                            <asp:LinkButton ID="rhed2" CssClass="sm-para" OnClick="lhed1_Click" runat="server" />
                                            <asp:LinkButton CssClass="sm-para" OnClick="lhed1_Click" ID="rdis2" runat="server" />
                                        </h2>
                                        <span class="date-one new-data-one"><a>
                                            <asp:Label ID="rdate2" runat="server" /></a> <small>by
												<asp:LinkButton ID="raut2" OnClick="raut1_Click" runat="server" />
                                            </small></span>
                                        <asp:Label ID="rcod2" Visible="false" runat="server" />
                                    </div>
                                </div>
                                <div class="filter-item zoom">
                                    <figure class="filter-img-item">
                                        <asp:LinkButton ID="rlkimg3" OnClick="lhed1_Click" runat="server">
                                            <asp:Image ID="rimg3" runat="server" />
                                        </asp:LinkButton>
                                    </figure>
                                    <div class="filter-item-text">
                                        <h3 class="heading">
                                            <asp:Label ID="rcat3" runat="server" /></h3>
                                        <h2>
                                            <asp:LinkButton ID="rhed3" CssClass="sm-para" OnClick="lhed1_Click" runat="server" />
                                            <asp:LinkButton CssClass="sm-para" OnClick="lhed1_Click" ID="rdis3" runat="server" />
                                        </h2>
                                        <span class="date-one new-data-one"><a>
                                            <asp:Label ID="rdate3" runat="server" /></a> <small>by
												<asp:LinkButton OnClick="raut1_Click" ID="raut3" runat="server" />
                                            </small></span>
                                        <asp:Label ID="rcod3" Visible="false" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div>
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
                <div class="inner-blog-section">
                    <div class="container-fluid">
                        <div class="row no-gutter">
                            <div class="inner-blog-slides">
                                <div class="inner-blog-item">
                                    <div class="people">
                                        <asp:Image ID="timg1" runat="server" />
                                        <div class="people-text">
                                            <div class="people-wrap">
                                                <div class="people-text-wrap">
                                                    <h3 class="heading-center">
                                                        <asp:Label ID="tcat1" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="thed1" OnClick="lhed1_Click" runat="server" /></h2>
                                                </div>
                                                <asp:Label ID="tcod1" Visible="false" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="inner-blog-item">
                                    <div class="people">
                                        <asp:Image ID="timg2" runat="server" />
                                        <div class="people-text">
                                            <div class="people-wrap">
                                                <div class="people-text-wrap">
                                                    <h3 class="heading-center">
                                                        <asp:Label ID="tcat2" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="thed2" OnClick="lhed1_Click" runat="server" /></h2>
                                                </div>
                                                <asp:Label ID="tcod2" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="inner-blog-item">
                                    <div class="people">
                                        <asp:Image ID="timg3" runat="server" />
                                        <div class="people-text">
                                            <div class="people-wrap">
                                                <div class="people-text-wrap">
                                                    <h3 class="heading-center">
                                                        <asp:Label ID="tcat3" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="thed3" OnClick="lhed1_Click" runat="server" /></h2>
                                                </div>
                                                <asp:Label ID="tcod3" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="inner-blog-item">
                                    <div class="people">
                                        <asp:Image ID="timg4" runat="server" />
                                        <div class="people-text">
                                            <div class="people-wrap">
                                                <div class="people-text-wrap">
                                                    <h3 class="heading-center">
                                                        <asp:Label ID="tcat4" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="thed4" OnClick="lhed1_Click" runat="server" /></h2>
                                                </div>
                                                <asp:Label ID="tcod4" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="inner-blog-item">
                                    <div class="people">
                                        <asp:Image ID="timg5" runat="server" />
                                        <div class="people-text">
                                            <div class="people-wrap">
                                                <div class="people-text-wrap">
                                                    <h3 class="heading-center">
                                                        <asp:Label ID="tcat5" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="thed5" OnClick="lhed1_Click" runat="server" /></h2>
                                                </div>
                                                <asp:Label ID="tcod5" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="inner-blog-item">
                                    <div class="people">
                                        <asp:Image ID="timg6" runat="server" />
                                        <div class="people-text">
                                            <div class="people-wrap">
                                                <div class="people-text-wrap">
                                                    <h3 class="heading-center">
                                                        <asp:Label ID="tcat6" runat="server" /></h3>
                                                    <h2>
                                                        <asp:LinkButton ID="thed6" OnClick="lhed1_Click" runat="server" /></h2>
                                                </div>
                                                <asp:Label ID="tcod6" runat="server" Visible="false" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
            <!-- Footer Ends Here -->
        </div>
        <!--banner ends Here -->
        <!--Wrapper Ends Here -->
        <script type="text/javascript" src="assets/js/jquery-1.12.2.min.js"></script>
        <script src="assets/js/less.js"></script>
        <script type="text/javascript" src="assets/js/angular-1.4.7.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery.countdown.js"></script>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="assets/js/less.js"></script>
        <script type="text/javascript" src="assets/js/jquery.selectbox-0.2.min.js"></script>
        <script type="text/javascript" src="assets/js/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="assets/js/owl.carousel.js"></script>
        <script type="text/javascript" src="assets/js/angular.js"></script>
        <script type="text/javascript" src="assets/js/site.js"></script>
    </form>
</body>
</html>

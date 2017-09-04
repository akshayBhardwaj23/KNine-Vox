<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<!DOCTYPE html>
<html data-ng-app="cronical">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title><%=category.Text %> - KNine Vox</title>
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
	<script>
		function remove() {
			document.getElementById("email1").removeAttribute("required");
		}
		function add() {
			var e = document.getElementById("email1");
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
				<section class="blog-inner-description">
					<div class="container">
						<div class="row white">
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
							<div class="post-block clearfix">
								<h2 class="h2">All Posts From:
								<asp:Label ID="category" ForeColor="Black" runat="server" />
									<span>
										<asp:Label ID="num" Text="(33)" runat="server" /></span></h2>
							</div>
						</div>
					</div>
				</section>
				<section class="news-sec news-inner-page">
					<div class="container">
						<div class="row news-inner-wrapper news-item news-feed-section">
							<div class="col-xs-12 col-sm-8">
								<div class="row">
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched1.Text.Replace(" ","-") %>-<%=ccod1.Text %>">
														<asp:Image ID="cimg1" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat1" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched1.Text.Replace(" ","-") %>-<%=ccod1.Text %>"><%=ched1.Text %>
															<asp:Label ID="cdis1" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched1" Visible="false" runat="server"></asp:Label>
													<span class="date-one"><a>
														<asp:Label ID="cdate1" runat="server" /></a> <small><a href="Author-<%=caut1.Text %>">by
															<asp:Label ID="caut1" runat="server" /></a></small></span>
													<asp:Label ID="ccod1" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched2.Text.Replace(" ","-") %>-<%=ccod2.Text %>">
														<asp:Image ID="cimg2" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat2" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched2.Text.Replace(" ","-") %>-<%=ccod2.Text %>"><%=ched2.Text %>
															<asp:Label ID="cdis2" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched2" Visible="false" runat="server" />
													<span class="date-one"><a>
														<asp:Label ID="cdate2" runat="server" /></a> <small><a href="Author-<%=caut2.Text %>">by
															<asp:Label ID="caut2" runat="server" /></a></small></span>
													<asp:Label ID="ccod2" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched3.Text.Replace(" ","-") %>-<%=ccod3.Text %>">
														<asp:Image ID="cimg3" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat3" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched3.Text.Replace(" ","-") %>-<%=ccod3.Text %>"><%=ched3.Text %>
															<asp:Label ID="cdis3" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched3" Visible="false" runat="server" />
													<span class="date-one"><a>
														<asp:Label ID="cdate3" runat="server" /></a> <small><a href="Author-<%=caut3.Text %>">by
															<asp:Label ID="caut3" runat="server" /></a></small></span>
													<asp:Label ID="ccod3" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched4.Text.Replace(" ","-") %>-<%=ccod4.Text %>">
														<asp:Image ID="cimg4" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat4" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched4.Text.Replace(" ","-") %>-<%=ccod4.Text %>"><%=ched4.Text %>
															<asp:Label ID="cdis4" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched4" runat="server" Visible="false" />
													<span class="date-one"><a>
														<asp:Label ID="cdate4" runat="server" /></a> <small><a href="Author-<%=caut4.Text %>">by
															<asp:Label ID="caut4" runat="server" /></a></small></span>
													<asp:Label ID="ccod4" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched5.Text.Replace(" ","-") %>-<%=ccod5.Text %>">
														<asp:Image ID="cimg5" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat5" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched5.Text.Replace(" ","-") %>-<%=ccod5.Text %>"><%=ched5.Text %>
															<asp:Label ID="cdis5" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched5" Visible="false" runat="server" />
													<span class="date-one"><a>
														<asp:Label ID="cdate5" runat="server" /></a> <small><a href="Author-<%=caut5.Text %>">by
															<asp:Label ID="caut5" runat="server" /></a></small></span>
													<asp:Label ID="ccod5" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched6.Text.Replace(" ","-") %>-<%=ccod6.Text %>">
														<asp:Image ID="cimg6" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat6" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched6.Text.Replace(" ","-") %>-<%=ccod6.Text %>"><%=ched6.Text %>
															<asp:Label ID="cdis6" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched6" Visible="false" runat="server" />
													<span class="date-one"><a>
														<asp:Label ID="cdate6" runat="server" /></a> <small><a href="Author-<%=caut6.Text %>">by
															<asp:Label ID="caut6" runat="server" /></a></small></span>
													<asp:Label ID="ccod6" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched7.Text.Replace(" ","-") %>-<%=ccod7.Text %>">
														<asp:Image ID="cimg7" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat7" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched7.Text.Replace(" ","-") %>-<%=ccod7.Text %>"><%=ched7.Text %>
															<asp:Label ID="cdis7" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched7" Visible="false" runat="server" />
													<span class="date-one"><a>
														<asp:Label ID="cdate7" runat="server" /></a> <small><a href="Author-<%=caut7.Text %>">by
															<asp:Label ID="caut7" runat="server" /></a></small></span>
													<asp:Label ID="ccod7" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched8.Text.Replace(" ","-") %>-<%=ccod8.Text %>">
														<asp:Image ID="cimg8" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat8" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched8.Text.Replace(" ","-") %>-<%=ccod8.Text %>"><%=ched8.Text %>
															<asp:Label ID="cdis8" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched8" Visible="false" runat="server" />
													<span class="date-one"><a>
														<asp:Label ID="cdate8" runat="server" /></a> <small><a href="Author-<%=caut8.Text %>">by
															<asp:Label ID="caut8" runat="server" /></a></small></span>
													<asp:Label ID="ccod8" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched9.Text.Replace(" ","-") %>-<%=ccod9.Text %>">
														<asp:Image ID="cimg9" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat9" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched9.Text.Replace(" ","-") %>-<%=ccod9.Text %>"><%=ched9.Text %>
															<asp:Label ID="cdis9" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched9" Visible="false" runat="server" />
													<span class="date-one"><a>
														<asp:Label ID="cdate9" runat="server" /></a> <small><a href="Author-<%=caut9.Text %>">by
															<asp:Label ID="caut9" runat="server" /></a></small></span>
													<asp:Label ID="ccod9" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-xs-12 col-sm-6">
										<div class="filter-content check-now clearfix">
											<div class="filter-item zoom">
												<figure>
													<a href="<%=ched10.Text.Replace(" ","-") %>-<%=ccod10.Text %>">
														<asp:Image ID="cimg10" runat="server" /></a>
												</figure>
												<div class="filter-item-text">
													<h3 class="heading">
														<asp:Label ID="ccat10" runat="server" /></h3>
													<h2>
														<a class="sm-para" href="<%=ched10.Text.Replace(" ","-") %>-<%=ccod10.Text %>"><%=ched10.Text %>
															<asp:Label ID="cdis10" runat="server" />
														</a>
													</h2>
													<asp:Label ID="ched10" runat="server" Visible="false" />
													<span class="date-one"><a>
														<asp:Label ID="cdate10" runat="server" /></a> <small><a href="Author-<%=caut10.Text %>">by
															<asp:Label ID="caut10" runat="server" /></a></small></span>
													<asp:Label ID="ccod10" runat="server" Visible="false" />
													<div class="design"></div>
												</div>
											</div>
										</div>
									</div>
									<asp:Label ID="load" runat="server" Visible="false" />
									<div class="col-xs-12 col-sm-12">
										<div class="load-wrap">
											<a href="<%=load.Text %>-news">Load more news</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="aside-sec-wrap">
									<div class="aside-sec">
										<figure>
											<asp:Image ID="limg" ImageUrl="~/AR.JPG" runat="server" />
										</figure>
										<div class="live-news-feed-wrap">
											<div class="span-wrapper">
												<span class="live-news">Latest News Feed</span>
											</div>
										</div>
									</div>
									<ul>
										<li>
											<a href="<%=lhed1.Text.Replace(" ","-") %>-<%=lcod1.Text %>"><%=lhed1.Text %></a>
											<asp:Label ID="lhed1" Visible="false" runat="server" />
											<asp:Label ID="lcod1" runat="server" Visible="false" />
										</li>
										<li>
											<a href="<%=lhed2.Text.Replace(" ","-") %>-<%=lcod2.Text %>"><%=lhed2.Text %></a>
											<asp:Label ID="lhed2" Visible="false" runat="server" />
											<asp:Label ID="lcod2" runat="server" Visible="false" />
										</li>
										<li>
											<a href="<%=lhed3.Text.Replace(" ","-") %>-<%=lcod3.Text %>"><%=lhed3.Text %></a>
											<asp:Label ID="lhed3" Visible="false" runat="server" />
											<asp:Label ID="lcod3" runat="server" Visible="false" />
										</li>
										<li>
											<a href="<%=lhed4.Text.Replace(" ","-") %>-<%=lcod4.Text %>"><%=lhed4.Text %></a>
											<asp:Label ID="lhed4" Visible="false" runat="server" />
											<asp:Label ID="lcod4" runat="server" Visible="false" />
										</li>
										<li>
											<a href="<%=lhed5.Text.Replace(" ","-") %>-<%=lcod5.Text %>"><%=lhed5.Text %></a>
											<asp:Label ID="lhed5" Visible="false" runat="server" />
											<asp:Label ID="lcod5" runat="server" Visible="false" />
										</li>
										<li>
											<a href="<%=lhed6.Text.Replace(" ","-") %>-<%=lcod6.Text %>"><%=lhed6.Text %></a>
											<asp:Label ID="lhed6" Visible="false" runat="server" />
											<asp:Label ID="lcod6" runat="server" Visible="false" />
										</li>
										<li>
											<a href="<%=lhed7.Text.Replace(" ","-") %>-<%=lcod7.Text %>"><%=lhed7.Text %></a>
											<asp:Label ID="lhed7" Visible="false" runat="server" />
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
													<a href="<%=mhed1.Text.Replace(" ","-") %>-<%=mcod1.Text %>"><%=mhed1.Text %></a></h3>
												<asp:Label ID="mhed1" Visible="false" runat="server" />
												<asp:Label ID="mcod1" Visible="false" runat="server" />
											</div>
										</li>
										<li class="most-popular-bg-two" style="background: #3e3e3e;">
											<div class="most-popular-wrapper">
												<span>02</span>
												<h3><a href="<%=mhed2.Text.Replace(" ","-") %>-<%=mcod2.Text %>"><%=mhed2.Text %></a></h3>
												<asp:Label ID="mhed2" Visible="false" runat="server" />
												<asp:Label ID="mcod2" Visible="false" runat="server" />
											</div>
										</li>
										<li class="most-popular-bg-three" style="background: #3e3e3e;">
											<div class="most-popular-wrapper">
												<span>03</span>
												<h3>
													<a href="<%=mhed3.Text.Replace(" ","-") %>-<%=mcod3.Text %>"><%=mhed3.Text %></a>
													<asp:Label ID="mhed3" Visible="false" runat="server" /></h3>
												<asp:Label ID="mcod3" Visible="false" runat="server" />
											</div>
										</li>
										<li class="most-popular-bg-four" style="background: #3e3e3e;">
											<div class="most-popular-wrapper">
												<span>04</span>
												<h3>
													<a href="<%=mhed4.Text.Replace(" ","-") %>-<%=mcod4.Text %>"><%=mhed4.Text %></a>
													<asp:Label ID="mhed4" Visible="false" runat="server" /></h3>
												<asp:Label ID="mcod4" Visible="false" runat="server" />
											</div>
										</li>
									</ul>
								</div>
								<div class="aside-stay-update" id="newsletter_id">
									<h2>Stay Updated</h2>
									<span>Get weekly reports to keep yourself updated with latest news.</span>
									<div novalidate="" name="signup" onclick="add()">
										<asp:Panel ID="Panel2" DefaultButton="newsletter" runat="server">
											<input type="text" class="email" id="email1" name="email" placeholder="YOUR EMAIL ADDRESS" data-ng-model="contactdata.email" data-ng-pattern="/^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/" required data-ng-class="{'error':signup.email.$invalid && submit}" runat="server" /><br />
											<br />
											<asp:Button ID="newsletter" CssClass="form-control" Text="Subscribe" runat="server" OnClick="newsletter_Click" />
										</asp:Panel>
										<asp:Label ID="Label3" runat="server"></asp:Label>
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
		<script type="text/javascript" src="assets/js/less.js"></script>
		<script type="text/javascript" src="assets/js/jquery.selectbox-0.2.min.js"></script>
		<script type="text/javascript" src="assets/js/owl.carousel.js"></script>
		<script type="text/javascript" src="assets/js/angular.js"></script>
		<script type="text/javascript" src="assets/js/site.js"></script>
	</form>
</body>
</html>

<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs
        var serverError = Server.GetLastError() as HttpException;

        if (null != serverError)
        {
            int errorCode = serverError.GetHttpCode();

            if (404 == errorCode)
            {
                Server.ClearError();
                Server.Transfer("~/404.aspx");
            }
        }
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    void RegisterRoutes(RouteCollection routes)
    {                
        routes.MapPageRoute("routeHome",
            "Home",
            "~/Home.aspx");
        routes.MapPageRoute("routePrivacy",
            "Privacy-Policy",
            "~/Privacy.aspx");
        routes.MapPageRoute("routeComment",
            "Comment-Policy",
            "~/Comment.aspx");
        routes.MapPageRoute("routeAdvertise",
            "Advertise",
            "~/Advertisement.aspx");
        routes.MapPageRoute("routeContactUs",
            "ContactUs",
            "~/ContactUs.aspx");
        routes.MapPageRoute("routeAboutUs",
            "AboutUs",
            "~/AboutUs.aspx");
        routes.MapPageRoute("routeSearch",
            "Search-{txt}",
            "~/Search.aspx");
        routes.MapPageRoute("routeAuthor",
            "Author-{aut}",
            "~/Author.aspx");
        routes.MapPageRoute("routeMoreNews",
            "{cat}-news",
            "~/loadMore.aspx");
        routes.MapPageRoute("routeSinglePage",
            "{name}-{queryValues}",
            "~/singlepage.aspx");
        routes.MapPageRoute("routeCategory",
            "{cat}",
            "~/Category.aspx");
    }
</script>

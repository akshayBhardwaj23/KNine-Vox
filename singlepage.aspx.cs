using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nsknine;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class singlepage : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (Page.IsPostBack != true)
        {
            Main_Bind();
            Top();
            Latest();
            mostPopular();
        }
    }
    private void Main_Bind()
    {
        string Format = "MMMM d, yyyy";
        string a = RouteData.Values["queryValues"].ToString();
        try
        {
            if (a[0] == '1')
            {
                clstech obj = new clstech();
                List<clstechprp> k = obj.Tech(Convert.ToInt32(a));
                if (k != null)
                {
                    dhed.Text = k[0].techhed;
                    cat.Text = k[0].techcat;
                    ddis.Text = k[0].techdis;
                    ddis1.Text = k[0].techdis1;
                    dimg.ImageUrl = k[0].techimg;
                    dimg.AlternateText = dhed.Text + " - KNine Vox";
                    var date1 = k[0].techdate;
                    date.Text = date1.ToString(Format);
                    Author(k[0].techautcod);
                    Related(cat.Text, k[0].techcod);
                }
            }
            else if (a[0] == '2')
            {
                clssci obj = new clssci();
                List<clssciprp> k = obj.Sci(Convert.ToInt32(a));
                if (k != null)
                {
                    dhed.Text = k[0].scihed;
                    cat.Text = k[0].scicat;
                    ddis.Text = k[0].scidis;
                    ddis1.Text = k[0].scidis1;
                    dimg.ImageUrl = k[0].sciimg;
                    dimg.AlternateText = dhed.Text + " - KNine Vox";
                    var date1 = k[0].scidate;
                    date.Text = date1.ToString(Format);
                    Author(k[0].sciautcod);
                    Related(cat.Text, k[0].scicod);
                }
            }
            else if (a[0] == '3')
            {
                clsgam obj = new clsgam();
                List<clsgamprp> k = obj.Gam(Convert.ToInt32(a));
                if (k != null)
                {
                    dhed.Text = k[0].gamhed;
                    cat.Text = k[0].gamcat;
                    ddis.Text = k[0].gamdis;
                    ddis1.Text = k[0].gamdis1;
                    dimg.ImageUrl = k[0].gamimg;
                    dimg.AlternateText = dhed.Text + " - KNine Vox";
                    var date1 = k[0].gamdate;
                    date.Text = date1.ToString(Format);
                    Author(k[0].gamautcod);
                    Related(cat.Text, k[0].gamcod);
                }
            }
            else if (a[0] == '4')
            {
                clssport obj = new clssport();
                List<clssportprp> k = obj.Sport(Convert.ToInt32(a));
                if (k != null)
                {
                    dhed.Text = k[0].sphed;
                    cat.Text = k[0].spcat;
                    ddis.Text = k[0].spdis;
                    ddis1.Text = k[0].spdis1;
                    dimg.ImageUrl = k[0].spimg;
                    dimg.AlternateText = dhed.Text + " - KNine Vox";
                    var date1 = k[0].spdate;
                    date.Text = date1.ToString(Format);
                    Author(k[0].spautcod);
                    Related(cat.Text, k[0].spcod);
                }
            }
            else if (a[0] == '5')
            {
                clsenter obj = new clsenter();
                List<clsenterprp> k = obj.Enter(Convert.ToInt32(a));
                if (k != null)
                {
                    dhed.Text = k[0].enterhed;
                    cat.Text = k[0].entercat;
                    ddis.Text = k[0].enterdis;
                    ddis1.Text = k[0].enterdis1;
                    dimg.ImageUrl = k[0].enterimg;
                    dimg.AlternateText = dhed.Text + " - KNine Vox";
                    var date1 = k[0].enterdate;
                    date.Text = date1.ToString(Format);
                    Author(k[0].enterautcod);
                    Related(cat.Text, k[0].entercod);
                }
            }
            else if (a[0] == '7')
            {
                clsapp obj = new clsapp();
                List<clsappprp> k = obj.App(Convert.ToInt32(a));
                if (k != null)
                {
                    dhed.Text = k[0].apphed;
                    cat.Text = k[0].appcat;
                    ddis.Text = k[0].appdis;
                    ddis1.Text = k[0].appdis1;
                    dimg.ImageUrl = k[0].appimg;
                    dimg.AlternateText = dhed.Text + " - KNine Vox";
                    var date1 = k[0].appdate;
                    date.Text = date1.ToString(Format);
                    Author(k[0].appautcod);
                    Related(cat.Text, k[0].appcod);
                }
            }
            else
            {
                Server.Transfer("404.aspx");
            }
        }
        catch (Exception ex)
        {
            Server.Transfer("404.aspx");
        }
    }
    private void Author(int autcod)
    {
        String qry1 = "select name, img1 from author where cod = " + autcod;
        SqlDataAdapter adp1 = new SqlDataAdapter(qry1, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        DataRowView r1;
        r1 = ds1.Tables[0].DefaultView[0];
        autname.Text = r1["name"].ToString();
        autimg.ImageUrl = r1["img1"].ToString();
    }
    private string Author1(int autcod)
    {
        String qry1 = "select name from author where cod = " + autcod;
        SqlDataAdapter adp1 = new SqlDataAdapter(qry1, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        DataRowView r1;
        r1 = ds1.Tables[0].DefaultView[0];
        String name = r1["name"].ToString();
        return name;        
    }
    private void Latest()
    {
        String qry = "select TOP 7 mjcod, mjhed, mjimg, mjdate, mjcat FROM ( select TOP 7 techcod mjcod, techhed mjhed, techimg mjimg, techdate mjdate, techcat mjcat from tech order by techdate DESC UNION ALL select TOP 7 scicod mjcod, scihed mjhed, sciimg mjimg, scidate mjdate, scicat mjcat from sci order by scidate DESC UNION ALL select TOP 7 gamcod mjcod, gamhed mjhed, gamimg mjimg, gamdate mjdate, gamcat mjcat from games order by gamdate DESC UNION ALL select TOP 7 spcod mjcod, sphed mjhed, spimg mjimg, spdate mjdate, spcat mjcat from sports order by spdate DESC UNION ALL select TOP 7 entercod mjcod, enterhed mjhed, enterimg mjimg, enterdate mjdate, entercat mjcat from enter order by enterdate DESC UNION ALL select TOP 7 appcod mjcod, apphed mjhed, appimg mjimg, appdate mjdate, appcat mjcat from app order by appdate DESC) T order by mjdate DESC";
        SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataRowView r;
        r = ds.Tables[0].DefaultView[0];
        lcod1.Text = r["mjcod"].ToString();
        limg.ImageUrl = r["mjimg"].ToString();
        lhed1.Text = r["mjhed"].ToString();
        limg.AlternateText = lhed1.Text + " - KNine Vox";
        lhed1.CommandArgument = lhed1.Text + ";" + lcod1.Text;
        r = ds.Tables[0].DefaultView[1];
        lcod2.Text = r["mjcod"].ToString();
        lhed2.Text = r["mjhed"].ToString();        
        lhed2.CommandArgument = lhed2.Text + ";" + lcod2.Text;
        r = ds.Tables[0].DefaultView[2];
        lcod3.Text = r["mjcod"].ToString();
        lhed3.Text = r["mjhed"].ToString();
        lhed3.CommandArgument = lhed3.Text + ";" + lcod3.Text;
        r = ds.Tables[0].DefaultView[3];
        lcod4.Text = r["mjcod"].ToString();
        lhed4.Text = r["mjhed"].ToString();
        lhed4.CommandArgument = lhed4.Text + ";" + lcod4.Text;
        r = ds.Tables[0].DefaultView[4];
        lcod5.Text = r["mjcod"].ToString();
        lhed5.Text = r["mjhed"].ToString();
        lhed5.CommandArgument = lhed5.Text + ";" + lcod5.Text;
        r = ds.Tables[0].DefaultView[5];
        lcod6.Text = r["mjcod"].ToString();
        lhed6.Text = r["mjhed"].ToString();
        lhed6.CommandArgument = lhed6.Text + ";" + lcod6.Text;
        r = ds.Tables[0].DefaultView[6];
        lcod7.Text = r["mjcod"].ToString();
        lhed7.Text = r["mjhed"].ToString();
        lhed7.CommandArgument = lhed7.Text + ";" + lcod7.Text;
    }
    private void mostPopular()
    {
        string qry = "select Top 4 fecod, fehed, fecat, tcod, fcat FROM(select techcod fecod, techhed fehed, techcat fecat from tech UNION ALL select scicod fecod, scihed fehed, scicat fecat from sci UNION ALL select gamcod fecod, gamhed fehed, gamcat fecat from games UNION ALL select spcod fecod, sphed fehed, spcat fecat from sports UNION ALL select entercod fecod, enterhed fehed, entercat fecat from enter UNION ALL select appcod fecod, apphed fehed, appcat fecat from app) T, featured where tcod = fecod AND fcat = fecat order by fcod ASC";
        SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataRowView r;
        r = ds.Tables[0].DefaultView[0];
        mcod1.Text = r["fecod"].ToString();
        mhed1.Text = r["fehed"].ToString();
        mhed1.CommandArgument = mhed1.Text + ";" + mcod1.Text;
        r = ds.Tables[0].DefaultView[1];
        mcod2.Text = r["fecod"].ToString();
        mhed2.Text = r["fehed"].ToString();
        mhed2.CommandArgument = mhed2.Text + ";" + mcod2.Text;
        r = ds.Tables[0].DefaultView[2];
        mcod3.Text = r["fecod"].ToString();
        mhed3.Text = r["fehed"].ToString();
        mhed3.CommandArgument = mhed3.Text + ";" + mcod3.Text;
        r = ds.Tables[0].DefaultView[3];
        mcod4.Text = r["fecod"].ToString();
        mhed4.Text = r["fehed"].ToString();
        mhed4.CommandArgument = mhed4.Text + ";" + mcod4.Text;        
    }
    private void Related(String cat, Int32 cod)
    {
        if (cat == "Technology")
        {
            string Format = "MMMM d, yyyy";
            String qry = "select TOP 3 techcod, techhed, techdis2, techimg, techcat, techdate, techautcod from tech where techcod != " + cod + " order by techdate DESC";                        
            SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataRowView r;
            r = ds.Tables[0].DefaultView[0];
            rcod1.Text = r["techcod"].ToString();
            rimg1.ImageUrl = r["techimg"].ToString();
            rhed1.Text = r["techhed"].ToString();
            rdis1.Text = "<span>«" + r["techdis2"].ToString() + "»</span>";
            rcat1.Text = r["techcat"].ToString();
            rimg1.AlternateText = rhed1.Text + " - KNine Vox";
            var date = Convert.ToDateTime(r["techdate"]);
            rdate1.Text = date.ToString(Format);
            raut1.Text = Author1(Convert.ToInt32(r["techautcod"]));
            rlkimg1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rhed1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rdis1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            r = ds.Tables[0].DefaultView[1];
            rcod2.Text = r["techcod"].ToString();
            rimg2.ImageUrl = r["techimg"].ToString();
            rhed2.Text = r["techhed"].ToString();
            rdis2.Text = "<span>«" + r["techdis2"].ToString() + "»</span>";
            rcat2.Text = r["techcat"].ToString();
            rimg2.AlternateText = rhed2.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["techdate"]);
            rdate2.Text = date.ToString(Format);
            raut2.Text = Author1(Convert.ToInt32(r["techautcod"]));
            rlkimg2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rhed2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rdis2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            r = ds.Tables[0].DefaultView[2];
            rcod3.Text = r["techcod"].ToString();
            rimg3.ImageUrl = r["techimg"].ToString();
            rhed3.Text = r["techhed"].ToString();
            rdis3.Text = "<span>«" + r["techdis2"].ToString() + "»</span>";
            rcat3.Text = r["techcat"].ToString();
            rimg3.AlternateText = rhed3.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["techdate"]);
            rdate3.Text = date.ToString(Format);
            raut3.Text = Author1(Convert.ToInt32(r["techautcod"]));
            rlkimg3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rhed3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rdis3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
        }
        else if (cat == "Science")
        {
            string Format = "MMMM d, yyyy";
            String qry = "select TOP 3 scicod, scihed, scidis2, sciimg, scicat, scidate, sciautcod from sci where scicod != " + cod + " order by scidate DESC";
            SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataRowView r;
            r = ds.Tables[0].DefaultView[0];
            rcod1.Text = r["scicod"].ToString();
            rimg1.ImageUrl = r["sciimg"].ToString();
            rhed1.Text = r["scihed"].ToString();
            rdis1.Text = "<span>«" + r["scidis2"].ToString() + "»</span>";
            rcat1.Text = r["scicat"].ToString();
            rimg1.AlternateText = rhed1.Text + " - KNine Vox";
            var date = Convert.ToDateTime(r["scidate"]);
            rdate1.Text = date.ToString(Format);
            raut1.Text = Author1(Convert.ToInt32(r["sciautcod"]));
            rlkimg1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rhed1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rdis1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            r = ds.Tables[0].DefaultView[1];
            rcod2.Text = r["scicod"].ToString();
            rimg2.ImageUrl = r["sciimg"].ToString();
            rhed2.Text = r["scihed"].ToString();
            rdis2.Text = "<span>«" + r["scidis2"].ToString() + "»</span>";
            rcat2.Text = r["scicat"].ToString();
            rimg2.AlternateText = rhed2.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["scidate"]);
            rdate2.Text = date.ToString(Format);
            raut2.Text = Author1(Convert.ToInt32(r["sciautcod"]));
            rlkimg2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rhed2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rdis2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            r = ds.Tables[0].DefaultView[2];
            rcod3.Text = r["scicod"].ToString();
            rimg3.ImageUrl = r["sciimg"].ToString();
            rhed3.Text = r["scihed"].ToString();
            rdis3.Text = "<span>«" + r["scidis2"].ToString() + "»</span>";
            rcat3.Text = r["scicat"].ToString();
            rimg3.AlternateText = rhed3.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["scidate"]);
            rdate3.Text = date.ToString(Format);
            raut3.Text = Author1(Convert.ToInt32(r["sciautcod"]));
            rlkimg3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rhed3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rdis3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
        }
        else if (cat == "Games")
        {
            string Format = "MMMM d, yyyy";
            String qry = "select TOP 3 gamcod, gamhed, gamdis2, gamimg, gamcat, gamdate, gamautcod from games where gamcod != " + cod + " order by gamdate DESC";
            SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataRowView r;
            r = ds.Tables[0].DefaultView[0];
            rcod1.Text = r["gamcod"].ToString();
            rimg1.ImageUrl = r["gamimg"].ToString();
            rhed1.Text = r["gamhed"].ToString();
            rdis1.Text = "<span>«" + r["gamdis2"].ToString() + "»</span>";
            rcat1.Text = r["gamcat"].ToString();
            rimg1.AlternateText = rhed1.Text + " - KNine Vox";
            var date = Convert.ToDateTime(r["gamdate"]);
            rdate1.Text = date.ToString(Format);
            raut1.Text = Author1(Convert.ToInt32(r["gamautcod"]));
            rlkimg1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rhed1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rdis1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            r = ds.Tables[0].DefaultView[1];
            rcod2.Text = r["gamcod"].ToString();
            rimg2.ImageUrl = r["gamimg"].ToString();
            rhed2.Text = r["gamhed"].ToString();
            rdis2.Text = "<span>«" + r["gamdis2"].ToString() + "»</span>";
            rcat2.Text = r["gamcat"].ToString();
            rimg2.AlternateText = rhed2.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["gamdate"]);
            rdate2.Text = date.ToString(Format);
            raut2.Text = Author1(Convert.ToInt32(r["gamautcod"]));
            rlkimg2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rhed2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rdis2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            r = ds.Tables[0].DefaultView[2];
            rcod3.Text = r["gamcod"].ToString();
            rimg3.ImageUrl = r["gamimg"].ToString();
            rhed3.Text = r["gamhed"].ToString();
            rdis3.Text = "<span>«" + r["gamdis2"].ToString() + "»</span>";
            rcat3.Text = r["gamcat"].ToString();
            rimg3.AlternateText = rhed3.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["gamdate"]);
            rdate3.Text = date.ToString(Format);
            raut3.Text = Author1(Convert.ToInt32(r["gamautcod"]));
            rlkimg3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rhed3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rdis3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
        }
        else if (cat == "Sports")
        {
            string Format = "MMMM d, yyyy";
            String qry = "select TOP 3 spcod, sphed, spdis2, spimg, spcat, spdate, spautcod from sports where spcod != " + cod + " order by spdate DESC";
            SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataRowView r;
            r = ds.Tables[0].DefaultView[0];
            rcod1.Text = r["spcod"].ToString();
            rimg1.ImageUrl = r["spimg"].ToString();
            rhed1.Text = r["sphed"].ToString();
            rdis1.Text = "<span>«" + r["spdis2"].ToString() + "»</span>";
            rcat1.Text = r["spcat"].ToString();
            rimg1.AlternateText = rhed1.Text + " - KNine Vox";
            var date = Convert.ToDateTime(r["spdate"]);
            rdate1.Text = date.ToString(Format);
            raut1.Text = Author1(Convert.ToInt32(r["spautcod"]));
            rlkimg1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rhed1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rdis1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            r = ds.Tables[0].DefaultView[1];
            rcod2.Text = r["spcod"].ToString();
            rimg2.ImageUrl = r["spimg"].ToString();
            rhed2.Text = r["sphed"].ToString();
            rdis2.Text = "<span>«" + r["spdis2"].ToString() + "»</span>";
            rcat2.Text = r["spcat"].ToString();
            rimg2.AlternateText = rhed2.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["spdate"]);
            rdate2.Text = date.ToString(Format);
            raut2.Text = Author1(Convert.ToInt32(r["spautcod"]));
            rlkimg2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rhed2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rdis2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            r = ds.Tables[0].DefaultView[2];
            rcod3.Text = r["spcod"].ToString();
            rimg3.ImageUrl = r["spimg"].ToString();
            rhed3.Text = r["sphed"].ToString();
            rdis3.Text = "<span>«" + r["spdis2"].ToString() + "»</span>";
            rcat3.Text = r["spcat"].ToString();
            rimg3.AlternateText = rhed3.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["spdate"]);
            rdate3.Text = date.ToString(Format);
            raut3.Text = Author1(Convert.ToInt32(r["spautcod"]));
            rlkimg3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rhed3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rdis3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
        }
        else if (cat == "Entertainment")
        {
            string Format = "MMMM d, yyyy";
            String qry = "select TOP 3 entercod, enterhed, enterdis2, enterimg, entercat, enterdate, enterautcod from enter where entercod != " + cod + " order by enterdate DESC";
            SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataRowView r;
            r = ds.Tables[0].DefaultView[0];
            rcod1.Text = r["entercod"].ToString();
            rimg1.ImageUrl = r["enterimg"].ToString();
            rhed1.Text = r["enterhed"].ToString();
            rdis1.Text = "<span>«" + r["enterdis2"].ToString() + "»</span>";
            rcat1.Text = r["entercat"].ToString();
            rimg1.AlternateText = rhed1.Text + " - KNine Vox";
            var date = Convert.ToDateTime(r["enterdate"]);
            rdate1.Text = date.ToString(Format);
            raut1.Text = Author1(Convert.ToInt32(r["enterautcod"]));
            rlkimg1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rhed1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rdis1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            r = ds.Tables[0].DefaultView[1];
            rcod2.Text = r["entercod"].ToString();
            rimg2.ImageUrl = r["enterimg"].ToString();
            rhed2.Text = r["enterhed"].ToString();
            rdis2.Text = "<span>«" + r["enterdis2"].ToString() + "»</span>";
            rcat2.Text = r["entercat"].ToString();
            rimg2.AlternateText = rhed2.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["enterdate"]);
            rdate2.Text = date.ToString(Format);
            raut2.Text = Author1(Convert.ToInt32(r["enterautcod"]));
            rlkimg2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rhed2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rdis2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            r = ds.Tables[0].DefaultView[2];
            rcod3.Text = r["entercod"].ToString();
            rimg3.ImageUrl = r["enterimg"].ToString();
            rhed3.Text = r["enterhed"].ToString();
            rdis3.Text = "<span>«" + r["enterdis2"].ToString() + "»</span>";
            rcat3.Text = r["entercat"].ToString();
            rimg3.AlternateText = rhed3.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["enterdate"]);
            rdate3.Text = date.ToString(Format);
            raut3.Text = Author1(Convert.ToInt32(r["enterautcod"]));
            rlkimg3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rhed3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rdis3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
        }
        else if (cat == "App & Software")
        {
            string Format = "MMMM d, yyyy";
            String qry = "select TOP 3 appcod, apphed, appdis2, appimg, appcat, appdate, appautcod from app where appcod != " + cod + " order by appdate DESC";
            SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataRowView r;
            r = ds.Tables[0].DefaultView[0];
            rcod1.Text = r["appcod"].ToString();
            rimg1.ImageUrl = r["appimg"].ToString();
            rhed1.Text = r["apphed"].ToString();
            rdis1.Text = "<span>«" + r["appdis2"].ToString() + "»</span>";
            rcat1.Text = r["appcat"].ToString();
            rimg1.AlternateText = rhed1.Text + " - KNine Vox";
            var date = Convert.ToDateTime(r["appdate"]);
            rdate1.Text = date.ToString(Format);
            raut1.Text = Author1(Convert.ToInt32(r["appautcod"]));
            raut1.CommandArgument = raut1.Text;
            rlkimg1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rhed1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            rdis1.CommandArgument = rhed1.Text + ";" + rcod1.Text;
            r = ds.Tables[0].DefaultView[1];
            rcod2.Text = r["appcod"].ToString();
            rimg2.ImageUrl = r["appimg"].ToString();
            rhed2.Text = r["apphed"].ToString();
            rdis2.Text = "<span>«" + r["appdis2"].ToString() + "»</span>";
            rcat2.Text = r["appcat"].ToString();
            rimg2.AlternateText = rhed2.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["appdate"]);
            rdate2.Text = date.ToString(Format);
            raut2.Text = Author1(Convert.ToInt32(r["appautcod"]));
            raut2.CommandArgument = raut2.Text;
            rlkimg2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rhed2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            rdis2.CommandArgument = rhed2.Text + ";" + rcod2.Text;
            r = ds.Tables[0].DefaultView[2];
            rcod3.Text = r["appcod"].ToString();
            rimg3.ImageUrl = r["appimg"].ToString();
            rhed3.Text = r["apphed"].ToString();
            rdis3.Text = "<span>«" + r["appdis2"].ToString() + "»</span>";
            rcat3.Text = r["appcat"].ToString();
            rimg3.AlternateText = rhed3.Text + " - KNine Vox";
            date = Convert.ToDateTime(r["appdate"]);
            rdate3.Text = date.ToString(Format);
            raut3.Text = Author1(Convert.ToInt32(r["appautcod"]));
            raut3.CommandArgument = raut3.Text;
            rlkimg3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rhed3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
            rdis3.CommandArgument = rhed3.Text + ";" + rcod3.Text;
        }
    }
    private void Top()
    {
        string qry = "select TOP 1 techcod, techhed, techimg, techcat from tech order by techdate DESC; select TOP 1 scicod, scihed, sciimg, scicat from sci order by scidate DESC; select TOP 1 entercod, enterhed, enterimg, entercat from enter order by enterdate DESC; select TOP 1 spcod, sphed, spimg, spcat from sports order by spdate DESC; select TOP 1 gamcod, gamhed, gamimg, gamcat from games order by gamdate DESC; select TOP 1 appcod, apphed, appimg, appcat from app order by appdate DESC";
        SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataRowView r;
        r = ds.Tables[0].DefaultView[0];
        tcod1.Text = r["techcod"].ToString();
        timg1.ImageUrl = r["techimg"].ToString();
        thed1.Text = r["techhed"].ToString();
        tcat1.Text = r["techcat"].ToString();
        timg1.AlternateText = thed1.Text + " - KNine Vox";
        thed1.CommandArgument = thed1.Text + ";" + tcod1.Text;
        r = ds.Tables[1].DefaultView[0];
        tcod2.Text = r["scicod"].ToString();
        timg2.ImageUrl = r["sciimg"].ToString();
        thed2.Text = r["scihed"].ToString();
        tcat2.Text = r["scicat"].ToString();
        timg2.AlternateText = thed2.Text + " - KNine Vox";
        thed2.CommandArgument = thed2.Text + ";" + tcod2.Text;
        r = ds.Tables[2].DefaultView[0];
        tcod3.Text = r["entercod"].ToString();
        timg3.ImageUrl = r["enterimg"].ToString();
        thed3.Text = r["enterhed"].ToString();
        tcat3.Text = r["entercat"].ToString();
        timg3.AlternateText = thed3.Text + " - KNine Vox";
        thed3.CommandArgument = thed3.Text + ";" + tcod3.Text;
        r = ds.Tables[3].DefaultView[0];
        tcod4.Text = r["spcod"].ToString();
        timg4.ImageUrl = r["spimg"].ToString();
        thed4.Text = r["sphed"].ToString();
        tcat4.Text = r["spcat"].ToString();
        timg4.AlternateText = thed4.Text + " - KNine Vox";
        thed4.CommandArgument = thed4.Text + ";" + tcod4.Text;
        r = ds.Tables[4].DefaultView[0];
        tcod5.Text = r["gamcod"].ToString();
        timg5.ImageUrl = r["gamimg"].ToString();
        thed5.Text = r["gamhed"].ToString();
        tcat5.Text = r["gamcat"].ToString();
        timg5.AlternateText = thed5.Text + " - KNine Vox";
        thed5.CommandArgument = thed5.Text + ";" + tcod5.Text;
        r = ds.Tables[5].DefaultView[0];
        tcod6.Text = r["appcod"].ToString();
        timg6.ImageUrl = r["appimg"].ToString();
        thed6.Text = r["apphed"].ToString();
        tcat6.Text = r["appcat"].ToString();
        timg6.AlternateText = thed6.Text + " - KNine Vox";
        thed6.CommandArgument = thed6.Text + ";" + tcod6.Text;
    }
    protected void lhed1_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;
        string[] commandArgs = lk.CommandArgument.ToString().Split(';');
        string hed = commandArgs[0].Replace(" ", "-");
        string cod = commandArgs[1];
        Response.Redirect(hed + "-" + cod);
    }

    protected void raut1_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;
        string name = lk.CommandArgument.ToString();
        Response.Redirect("Author-" + name);
    }
    protected void search_button_Click(object sender, EventArgs e)
    {
        string txt = inpt_search.Value;
        Response.Redirect("Search" + "-" + txt);
    }
    protected void newsletter_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        try
        {
            SqlCommand cmd = new SqlCommand("insnws", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email1.Value;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Label3.Text = "Successfully scbscribed";
            newsletter.Visible = false;
            email1.Visible = false;
        }
        catch (Exception ex)
        {
            Label3.Text = "Sorry, something went wrong, please try again later";
        }
        finally
        {
            con.Close();
        }
    }
}
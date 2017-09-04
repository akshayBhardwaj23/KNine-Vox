using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       
        if (!Page.IsPostBack)
        {
            Major();
            Featured();
            SciLat();
            SportsLat();
        }
        newsletter.Visible = true;
        email1.Visible = true;
    }
    private void Major()
    {
        string Format = "MMMM d, yyyy";
        String qry = "select TOP 19 mjcod, mjhed, mjdis2, mjimg, mjsimg, mjdate, mjcat, mjautcod FROM ( select TOP 19 techcod mjcod, techhed mjhed, techdis2 mjdis2, techimg mjimg, techsimg mjsimg, techdate mjdate, techcat mjcat, techautcod mjautcod from tech order by techdate DESC UNION ALL select TOP 19 scicod mjcod, scihed mjhed, scidis2 mjdis2, sciimg mjimg, scisimg mjsimg, scidate mjdate, scicat mjcat, sciautcod mjautcod from sci order by scidate DESC UNION ALL select TOP 19 gamcod mjcod, gamhed mjhed, gamdis2 mjdis2, gamimg mjimg, gamsimg mjsimg, gamdate mjdate, gamcat mjcat, gamautcod mjautcod from games order by gamdate DESC UNION ALL select TOP 19 spcod mjcod, sphed mjhed, spdis2 mjdis2, spimg mjimg, spsimg mjsimg, spdate mjdate, spcat mjcat, spautcod mjautcod from sports order by spdate DESC UNION ALL select TOP 19 entercod mjcod, enterhed mjhed, enterdis2 mjdis2, enterimg mjimg, entersimg mjsimg, enterdate mjdate, entercat mjcat, enterautcod mjautcod from enter order by enterdate DESC UNION ALL select TOP 19 appcod mjcod, apphed mjhed, appdis2 mjdis2, appimg mjimg, appsimg mjsimg, appdate mjdate, appcat mjcat, appautcod mjautcod from app order by appdate DESC) T order by mjdate DESC";
        SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataRowView r;
        r = ds.Tables[0].DefaultView[0];
        mjcod1.Text = r["mjcod"].ToString();
        mjimg1.ImageUrl = r["mjsimg"].ToString();
        mjhed1.Text = r["mjhed"].ToString();
        mjdis1.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat1.Text = r["mjcat"].ToString();
        mjimg1.AlternateText = mjhed1.Text + " - KNine Vox";
        var date = Convert.ToDateTime(r["mjdate"]);
        mjdate1.Text = date.ToString(Format);
        mjaut1.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjlkimg1.CommandArgument = mjhed1.Text + ";" + mjcod1.Text;
        mjhed1.CommandArgument = mjhed1.Text + ";" + mjcod1.Text;
        mjdis1.CommandArgument = mjhed1.Text + ";" + mjcod1.Text;
        r = ds.Tables[0].DefaultView[1];
        mjcod2.Text = r["mjcod"].ToString();
        mjimg2.ImageUrl = r["mjsimg"].ToString();
        mjhed2.Text = r["mjhed"].ToString();
        mjdis2.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat2.Text = r["mjcat"].ToString();
        mjimg2.AlternateText = mjhed2.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate2.Text = date.ToString(Format);
        mjaut2.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjlkimg2.CommandArgument = mjhed2.Text + ";" + mjcod2.Text;
        mjhed2.CommandArgument = mjhed2.Text + ";" + mjcod2.Text;
        mjdis2.CommandArgument = mjhed2.Text + ";" + mjcod2.Text;
        r = ds.Tables[0].DefaultView[2];
        mjimg3.ImageUrl = r["mjsimg"].ToString();
        mjhed3.Text = r["mjhed"].ToString();
        mjdis3.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat3.Text = r["mjcat"].ToString();
        mjimg3.AlternateText = mjhed3.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate3.Text = date.ToString(Format);
        mjaut3.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcod3.Text = r["mjcod"].ToString();
        mjlkimg3.CommandArgument = mjhed3.Text + ";" + mjcod3.Text;
        mjhed3.CommandArgument = mjhed3.Text + ";" + mjcod3.Text;
        mjdis3.CommandArgument = mjhed3.Text + ";" + mjcod3.Text;
        r = ds.Tables[0].DefaultView[3];
        mjhed4.Text = r["mjhed"].ToString();
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate4.Text = date.ToString(Format);
        mjaut4.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcat4.Text = r["mjcat"].ToString();
        mjcod4.Text = r["mjcod"].ToString();
        mjhed4.CommandArgument = mjhed4.Text + ";" + mjcod4.Text;
        r = ds.Tables[0].DefaultView[4];
        mjhed5.Text = r["mjhed"].ToString();
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate5.Text = date.ToString(Format);
        mjaut5.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcat5.Text = r["mjcat"].ToString();
        mjcod5.Text = r["mjcod"].ToString();
        mjhed5.CommandArgument = mjhed5.Text + ";" + mjcod5.Text;
        r = ds.Tables[0].DefaultView[5];
        mjhed6.Text = r["mjhed"].ToString();
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate6.Text = date.ToString(Format);
        mjaut6.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcat6.Text = r["mjcat"].ToString();
        mjcod6.Text = r["mjcod"].ToString();
        mjhed6.CommandArgument = mjhed6.Text + ";" + mjcod6.Text;
        r = ds.Tables[0].DefaultView[6];
        mjimg7.ImageUrl = r["mjsimg"].ToString();
        mjhed7.Text = r["mjhed"].ToString();
        mjdis7.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat7.Text = r["mjcat"].ToString();
        mjimg7.AlternateText = mjhed7.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate7.Text = date.ToString(Format);
        mjaut7.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcod7.Text = r["mjcod"].ToString();
        mjlkimg7.CommandArgument = mjhed7.Text + ";" + mjcod7.Text;
        mjhed7.CommandArgument = mjhed7.Text + ";" + mjcod7.Text;
        mjdis7.CommandArgument = mjhed7.Text + ";" + mjcod7.Text;
        r = ds.Tables[0].DefaultView[7];
        mjimg8.ImageUrl = r["mjsimg"].ToString();
        mjhed8.Text = r["mjhed"].ToString();
        mjdis8.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat8.Text = r["mjcat"].ToString();
        mjimg8.AlternateText = mjhed8.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate8.Text = date.ToString(Format);
        mjaut8.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcod8.Text = r["mjcod"].ToString();
        mjlkimg8.CommandArgument = mjhed8.Text + ";" + mjcod8.Text;
        mjhed8.CommandArgument = mjhed8.Text + ";" + mjcod8.Text;
        mjdis8.CommandArgument = mjhed8.Text + ";" + mjcod8.Text;
        r = ds.Tables[0].DefaultView[8];
        mjimg9.ImageUrl = r["mjsimg"].ToString();
        mjhed9.Text = r["mjhed"].ToString();
        mjdis9.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat9.Text = r["mjcat"].ToString();
        mjimg9.AlternateText = mjhed9.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate9.Text = date.ToString(Format);
        mjaut9.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcod9.Text = r["mjcod"].ToString();
        mjlkimg9.CommandArgument = mjhed9.Text + ";" + mjcod9.Text;
        mjhed9.CommandArgument = mjhed9.Text + ";" + mjcod9.Text;
        mjdis9.CommandArgument = mjhed9.Text + ";" + mjcod9.Text;
        r = ds.Tables[0].DefaultView[9];
        mjhed10.Text = r["mjhed"].ToString();
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate10.Text = date.ToString(Format);
        mjaut10.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcat10.Text = r["mjcat"].ToString();
        mjcod10.Text = r["mjcod"].ToString();
        mjhed10.CommandArgument = mjhed10.Text + ";" + mjcod10.Text;
        r = ds.Tables[0].DefaultView[10];
        mjhed11.Text = r["mjhed"].ToString();
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate11.Text = date.ToString(Format);
        mjaut11.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcat11.Text = r["mjcat"].ToString();
        mjcod11.Text = r["mjcod"].ToString();
        mjhed11.CommandArgument = mjhed11.Text + ";" + mjcod11.Text;
        r = ds.Tables[0].DefaultView[11];
        mjhed12.Text = r["mjhed"].ToString();
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate12.Text = date.ToString(Format);
        mjaut12.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcat12.Text = r["mjcat"].ToString();
        mjcod12.Text = r["mjcod"].ToString();
        mjhed12.CommandArgument = mjhed12.Text + ";" + mjcod12.Text;
        r = ds.Tables[0].DefaultView[12];
        mjimg13.ImageUrl = r["mjimg"].ToString();
        mjhed13.Text = r["mjhed"].ToString();
        mjdis13.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat13.Text = r["mjcat"].ToString();
        mjimg13.AlternateText = mjhed13.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate13.Text = date.ToString(Format);
        mjaut13.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcod13.Text = r["mjcod"].ToString();
        mjhed13.CommandArgument = mjhed13.Text + ";" + mjcod13.Text;
        mjdis13.CommandArgument = mjhed13.Text + ";" + mjcod13.Text;
        r = ds.Tables[0].DefaultView[13];
        mjimg14.ImageUrl = r["mjsimg"].ToString();
        mjhed14.Text = r["mjhed"].ToString();
        mjcat14.Text = r["mjcat"].ToString();
        mjimg14.AlternateText = mjhed14.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate14.Text = date.ToString(Format);
        mjaut14.Text = Author(Convert.ToInt32(r["mjautcod"]));        
        mjcod14.Text = r["mjcod"].ToString();
        mjlkimg14.CommandArgument = mjhed14.Text + ";" + mjcod14.Text;
        mjhed14.CommandArgument = mjhed14.Text + ";" + mjcod14.Text;
        r = ds.Tables[0].DefaultView[14];
        mjimg15.ImageUrl = r["mjsimg"].ToString();
        mjhed15.Text = r["mjhed"].ToString();
        mjcat15.Text = r["mjcat"].ToString();
        mjimg15.AlternateText = mjhed15.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate15.Text = date.ToString(Format);
        mjaut15.Text = Author(Convert.ToInt32(r["mjautcod"]));        
        mjcod15.Text = r["mjcod"].ToString();
        mjlkimg15.CommandArgument = mjhed15.Text + ";" + mjcod15.Text;
        mjhed15.CommandArgument = mjhed15.Text + ";" + mjcod15.Text;
        r = ds.Tables[0].DefaultView[15];
        mjimg16.ImageUrl = r["mjimg"].ToString();
        mjhed16.Text = r["mjhed"].ToString();
        mjdis16.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat16.Text = r["mjcat"].ToString();
        mjimg16.AlternateText = mjhed16.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate16.Text = date.ToString(Format);
        mjaut16.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcod16.Text = r["mjcod"].ToString();
        mjdis16.CommandArgument = mjhed16.Text + ";" + mjcod16.Text;
        mjhed16.CommandArgument = mjhed16.Text + ";" + mjcod16.Text;
        r = ds.Tables[0].DefaultView[16];
        mjimg17.ImageUrl = r["mjimg"].ToString();
        mjhed17.Text = r["mjhed"].ToString();
        mjdis17.Text = "<span>«" + r["mjdis2"].ToString() + "»</span>";
        mjcat17.Text = r["mjcat"].ToString();
        mjimg17.AlternateText = mjhed17.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate17.Text = date.ToString(Format);
        mjaut17.Text = Author(Convert.ToInt32(r["mjautcod"]));
        mjcod17.Text = r["mjcod"].ToString();
        mjdis17.CommandArgument = mjhed17.Text + ";" + mjcod17.Text;
        mjhed17.CommandArgument = mjhed17.Text + ";" + mjcod17.Text;
        r = ds.Tables[0].DefaultView[17];
        mjimg18.ImageUrl = r["mjsimg"].ToString();
        mjhed18.Text = r["mjhed"].ToString();
        mjcat18.Text = r["mjcat"].ToString();
        mjimg18.AlternateText = mjhed18.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate18.Text = date.ToString(Format);
        mjaut18.Text = Author(Convert.ToInt32(r["mjautcod"]));        
        mjcod18.Text = r["mjcod"].ToString();
        mjlkimg18.CommandArgument = mjhed18.Text + ";" + mjcod18.Text;
        mjhed18.CommandArgument = mjhed18.Text + ";" + mjcod18.Text;
        r = ds.Tables[0].DefaultView[18];
        mjimg19.ImageUrl = r["mjsimg"].ToString();
        mjhed19.Text = r["mjhed"].ToString();
        mjcat19.Text = r["mjcat"].ToString();
        mjimg19.AlternateText = mjhed19.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["mjdate"]);
        mjdate19.Text = date.ToString(Format);
        mjaut19.Text = Author(Convert.ToInt32(r["mjautcod"]));        
        mjcod19.Text = r["mjcod"].ToString();
        mjlkimg19.CommandArgument = mjhed19.Text + ";" + mjcod19.Text;
        mjhed19.CommandArgument = mjhed19.Text + ";" + mjcod19.Text;
    }
    private void Featured()
    {
        string Format = "MMMM d, yyyy";
        string qry = "select fecod, fehed, feimg, fedate, fecat, feaut, tcod, fcat FROM(select techcod fecod, techhed fehed, techimg feimg, techdate fedate, techcat fecat, techautcod feaut from tech UNION ALL select scicod fecod, scihed fehed, sciimg feimg, scidate fedate, scicat fecat, sciautcod feaut from sci UNION ALL select gamcod fecod, gamhed fehed, gamimg feimg, gamdate fedate, gamcat fecat, gamautcod feaut from games UNION ALL select spcod fecod, sphed fehed, spimg feimg, spdate fedate, spcat fecat, spautcod feaut from sports UNION ALL select entercod fecod, enterhed fehed, enterimg feimg, enterdate fedate, entercat fecat, enterautcod feaut from enter UNION ALL select appcod fecod, apphed fehed, appimg feimg, appdate fedate, appcat fecat, appautcod feaut from app) T, featured where tcod = fecod AND fcat = fecat";
        SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataRowView r;
        r = ds.Tables[0].DefaultView[0];
        fcod1.Text = r["fecod"].ToString();
        fimg1.ImageUrl = r["feimg"].ToString();
        fhed1.Text = r["fehed"].ToString();
        fcat1.Text = r["fecat"].ToString();
        fimg1.AlternateText = fhed1.Text + " - KNine Vox";
        var date = Convert.ToDateTime(r["fedate"]);
        fdate1.Text = date.ToString(Format);
        faut1.Text = Author(Convert.ToInt32(r["feaut"]));
        fhed1.CommandArgument = fhed1.Text + ";" + fcod1.Text;
        r = ds.Tables[0].DefaultView[1];
        fcod2.Text = r["fecod"].ToString();
        fimg2.ImageUrl = r["feimg"].ToString();
        fhed2.Text = r["fehed"].ToString();
        fcat2.Text = r["fecat"].ToString();
        fimg2.AlternateText = fhed2.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["fedate"]);
        fdate2.Text = date.ToString(Format);
        faut2.Text = Author(Convert.ToInt32(r["feaut"]));
        fhed2.CommandArgument = fhed2.Text + ";" + fcod2.Text;
        r = ds.Tables[0].DefaultView[2];
        fcod3.Text = r["fecod"].ToString();
        fimg3.ImageUrl = r["feimg"].ToString();
        fhed3.Text = r["fehed"].ToString();
        fcat3.Text = r["fecat"].ToString();
        fimg3.AlternateText = fhed3.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["fedate"]);
        fdate3.Text = date.ToString(Format);
        faut3.Text = Author(Convert.ToInt32(r["feaut"]));
        fhed3.CommandArgument = fhed3.Text + ";" + fcod3.Text;
        r = ds.Tables[0].DefaultView[3];
        fcod4.Text = r["fecod"].ToString();
        fimg4.ImageUrl = r["feimg"].ToString();
        fhed4.Text = r["fehed"].ToString();
        fcat4.Text = r["fecat"].ToString();
        fimg4.AlternateText = fhed4.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["fedate"]);
        fdate4.Text = date.ToString(Format);
        faut4.Text = Author(Convert.ToInt32(r["feaut"]));
        fhed4.CommandArgument = fhed4.Text + ";" + fcod4.Text;
        r = ds.Tables[0].DefaultView[4];
        fcod5.Text = r["fecod"].ToString();
        fimg5.ImageUrl = r["feimg"].ToString();
        fhed5.Text = r["fehed"].ToString();
        fcat5.Text = r["fecat"].ToString();
        fimg5.AlternateText = fhed4.Text + " - KNine Vox";
        date = Convert.ToDateTime(r["fedate"]);
        fdate5.Text = date.ToString(Format);
        faut5.Text = Author(Convert.ToInt32(r["feaut"]));
        fhed5.CommandArgument = fhed5.Text + ";" + fcod5.Text;
    }
    private void SciLat()
    {
        string Format = "MMMM d, yyyy";
        string qry = "select TOP 1 scicod, scihed, sciimg, scidate, sciautcod FROM sci order by scidate DESC";
        SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataRowView r;
        r = ds.Tables[0].DefaultView[0];
        sccod.Text = r["scicod"].ToString();
        scimg.ImageUrl = r["sciimg"].ToString();
        sched.Text = r["scihed"].ToString();
        scimg.AlternateText = sched.Text + " - KNine Vox";
        var date = Convert.ToDateTime(r["scidate"]);
        scdate.Text = date.ToString(Format);
        scaut.Text = Author(Convert.ToInt32(r["sciautcod"]));
        sched.CommandArgument = sched.Text + ";" + sccod.Text;
    }
    private void SportsLat()
    {
        string Format = "MMMM d, yyyy";
        string qry = "select TOP 1 spcod, sphed, spimg, spdate, spautcod FROM sports order by spdate DESC";
        SqlDataAdapter adp = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataRowView r;
        r = ds.Tables[0].DefaultView[0];
        spcod.Text = r["spcod"].ToString();
        spimg.ImageUrl = r["spimg"].ToString();
        sphed.Text = r["sphed"].ToString();        
        spimg.AlternateText = sched.Text + " - KNine Vox";
        var date = Convert.ToDateTime(r["spdate"]);
        spdate.Text = date.ToString(Format);
        spaut.Text = Author(Convert.ToInt32(r["spautcod"]));
        sphed.CommandArgument = sphed.Text + ";" + spcod.Text;
    }
    private string Author(int autcod)
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

    protected void mjimg1_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;
        string[] commandArgs = lk.CommandArgument.ToString().Split(';');
        string hed = commandArgs[0].Replace(" ", "-");
        string cod = commandArgs[1];
        Response.Redirect(hed + "-" + cod);
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
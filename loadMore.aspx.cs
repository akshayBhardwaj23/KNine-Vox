using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loadMore : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (!Page.IsPostBack)
        {
            List_Bind(1);
            mostPopular();
            Latest();
        }
    }
    private void List_Bind(Int32 pno)
    {
        string text = RouteData.Values["cat"].ToString();
        if (text =="App")
        {
            category.Text = "App & Software";
        }
        else if (text == "All")
        {
            category.Text = "All Posts";
        }
        else
        {
            category.Text = text;
        }
        try
        {
            SqlCommand cmd = new SqlCommand("catall", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = text;
            cmd.Parameters.Add("@pagenumber", SqlDbType.Int).Value = pno;
            cmd.Parameters.Add("@pagesize", SqlDbType.Int).Value = 10;

            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            Int32 totrec = Convert.ToInt32(dr[0]);
            Int32 totpage = (totrec - 1) / 10 + 1;
            Label3.Text = pno.ToString();
            if (dr.NextResult())
            {
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
            dr.Close();
            cmd.Dispose();
            nxt.Visible = true;
            prev.Visible = true;

            if (pno == 1)
            {
                nxt.Visible = false;
            }
            if (pno == totpage)
            {
                prev.Visible = false;
            }
        }
        catch (Exception ex)
        {
            Server.Transfer("~/404.aspx");
        }
        finally
        {
            con.Close();
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Int32 cod = Convert.ToInt32(DataList1.DataKeys[DataList1.SelectedIndex]);
        string hed = ((LinkButton)(DataList1.SelectedItem.FindControl("ahed"))).Text.Replace(" ","-");
        Response.Redirect(hed + "-" + cod);
    }

    protected void nxt_Click(object sender, EventArgs e)
    {
        List_Bind(Convert.ToInt32(Label3.Text) - 1);
    }

    protected void prev_Click(object sender, EventArgs e)
    {
        List_Bind(Convert.ToInt32(Label3.Text) + 1);
    }

    protected void aaut_Click(object sender, EventArgs e)
    {
        DataListItem dat = (DataListItem)((LinkButton)sender).NamingContainer;
        string name = ((LinkButton)(dat.FindControl("aaut"))).Text;
        Response.Redirect("Author-" + name);
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

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        string autcod = ((LinkButton)(e.Item.FindControl("aaut"))).Text;
        ((LinkButton)(e.Item.FindControl("aaut"))).Text = Author1(Convert.ToInt32(autcod));
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
        r = ds.Tables[0].DefaultView[1];
        lcod2.Text = r["mjcod"].ToString();
        lhed2.Text = r["mjhed"].ToString();
        r = ds.Tables[0].DefaultView[2];
        lcod3.Text = r["mjcod"].ToString();
        lhed3.Text = r["mjhed"].ToString();
        r = ds.Tables[0].DefaultView[3];
        lcod4.Text = r["mjcod"].ToString();
        lhed4.Text = r["mjhed"].ToString();
        r = ds.Tables[0].DefaultView[4];
        lcod5.Text = r["mjcod"].ToString();
        lhed5.Text = r["mjhed"].ToString();
        r = ds.Tables[0].DefaultView[5];
        lcod6.Text = r["mjcod"].ToString();
        lhed6.Text = r["mjhed"].ToString();
        r = ds.Tables[0].DefaultView[6];
        lcod7.Text = r["mjcod"].ToString();
        lhed7.Text = r["mjhed"].ToString();
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
        r = ds.Tables[0].DefaultView[1];
        mcod2.Text = r["fecod"].ToString();
        mhed2.Text = r["fehed"].ToString();
        r = ds.Tables[0].DefaultView[2];
        mcod3.Text = r["fecod"].ToString();
        mhed3.Text = r["fehed"].ToString();
        r = ds.Tables[0].DefaultView[3];
        mcod4.Text = r["fecod"].ToString();
        mhed4.Text = r["fehed"].ToString();
    }
    protected void search_button_Click(object sender, EventArgs e)
    {
        string txt = inpt_search.Value;
        Response.Redirect("Search" + "-" + txt);
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Author : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        face.Visible = true;
        twit.Visible = true;
        insta.Visible = true;
        gplus.Visible = true;
        linked.Visible = true;

        List_Bind();
    }
    private void List_Bind()
    {
        string name = RouteData.Values["aut"].ToString();

        SqlCommand cmd = new SqlCommand("disaut", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.Add("@aut", SqlDbType.VarChar).Value = name;

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
        else
        {
            Server.Transfer("~/404.aspx");
        }
        dr.Close();
        cmd.Dispose();
        con.Close();
    }

    protected void aaut_Click(object sender, EventArgs e)
    {
        DataListItem dat = (DataListItem)((LinkButton)sender).NamingContainer;
        string name = ((LinkButton)(dat.FindControl("aaut"))).Text;
        Response.Redirect("Author-" + name);
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Int32 cod = Convert.ToInt32(DataList1.DataKeys[DataList1.SelectedIndex]);
        string hed = ((LinkButton)(DataList1.SelectedItem.FindControl("ahed"))).Text.Replace(" ", "-");
        Response.Redirect(hed + "-" + cod);
    }
    private string Author1(int autcod)
    {
        String qry1 = "select name, dname, img1, pos, dis, face, twit, insta, gplus, linked from author where cod = " + autcod;
        SqlDataAdapter adp1 = new SqlDataAdapter(qry1, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        DataRowView r1;
        r1 = ds1.Tables[0].DefaultView[0];
        String name = r1["name"].ToString();
        img.ImageUrl = r1["img1"].ToString();
        nam.Text = r1["dname"].ToString();
        dis.Text = r1["dis"].ToString();
        pos.Text = r1["pos"].ToString();
        if (r1["face"].ToString() == String.Empty)
        {
            face.Visible = false;
        }
        if (r1["twit"].ToString() == String.Empty)
        {
            twit.Visible = false;
        }
        if (r1["insta"].ToString() == String.Empty)
        {
            insta.Visible = false;
        }
        if (r1["gplus"].ToString() == String.Empty)
        {
            gplus.Visible = false;
        }
        if (r1["linked"].ToString() == String.Empty)
        {
            linked.Visible = false;
        }
        face.CommandArgument = autcod.ToString();
        twit.CommandArgument = autcod.ToString();
        insta.CommandArgument = autcod.ToString();
        gplus.CommandArgument = autcod.ToString();
        linked.CommandArgument = autcod.ToString();
        
        return name;
    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        string autcod = ((LinkButton)(e.Item.FindControl("aaut"))).Text;
        ((LinkButton)(e.Item.FindControl("aaut"))).Text = Author1(Convert.ToInt32(autcod));
    }

    protected void face_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;
        string qry = "select name, dname, img1, pos, dis, face, insta, twit, gplus, linked from author where cod = " + lk.CommandArgument;
        SqlDataAdapter adp1 = new SqlDataAdapter(qry, ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataSet ds1 = new DataSet();
        adp1.Fill(ds1);
        DataRowView r1;
        r1 = ds1.Tables[0].DefaultView[0];
        if (lk.ID == "face")
        {
            Response.Redirect(r1["face"].ToString());
        }
        else if (lk.ID == "twit")
        {
            Response.Redirect(r1["twit"].ToString());
        }
        else if (lk.ID == "insta")
        {
            Response.Redirect(r1["insta"].ToString());
        }
        else if (lk.ID == "gplus")
        {
            Response.Redirect(r1["gplus"].ToString());
        }
        else if (lk.ID == "linked")
        {
            Response.Redirect(r1["linked"].ToString());
        }
    }
    protected void search_button_Click(object sender, EventArgs e)
    {
        string txt = inpt_search.Value;
        Response.Redirect("Search" + "-" + txt);
    }
}
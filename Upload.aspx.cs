using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Upload : System.Web.UI.Page
{
    nsknine.clstechprp techprp = new nsknine.clstechprp();
    nsknine.clstech tech = new nsknine.clstech();
    nsknine.clssciprp sciprp = new nsknine.clssciprp();
    nsknine.clssci sci = new nsknine.clssci();
    nsknine.clsenterprp enterprp = new nsknine.clsenterprp();
    nsknine.clsenter enter = new nsknine.clsenter();
    nsknine.clsgamprp gamprp = new nsknine.clsgamprp();
    nsknine.clsgam gam = new nsknine.clsgam();
    nsknine.clsappprp appprp = new nsknine.clsappprp();
    nsknine.clsapp app = new nsknine.clsapp();
    nsknine.clssportprp spprp = new nsknine.clssportprp();
    nsknine.clssport sp = new nsknine.clssport();

    SqlConnection con = new SqlConnection();    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        string st = "Select TOP 1 techcod from tech order by techdate DESC";
        SqlCommand cmd = new SqlCommand(st, con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        Techcod.Text = dr["techcod"].ToString();
        dr.Close();
                
        st = "Select TOP 1 spcod from sports order by spdate DESC";
        cmd = new SqlCommand(st, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        Spcod.Text = dr["spcod"].ToString();
        dr.Close();

        st = "Select TOP 1 scicod from sci order by scidate DESC";
        cmd = new SqlCommand(st, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        Scicod.Text = dr["scicod"].ToString();
        dr.Close();

        st = "Select TOP 1 gamcod from games order by gamdate DESC";
        cmd = new SqlCommand(st, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        Gamcod.Text = dr["gamcod"].ToString();
        dr.Close();

        st = "Select TOP 1 entercod from enter order by enterdate DESC";
        cmd = new SqlCommand(st, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        Entercod.Text = dr["entercod"].ToString();
        dr.Close();

        st = "Select TOP 1 appcod from app order by appdate DESC";
        cmd = new SqlCommand(st, con);
        dr = cmd.ExecuteReader();
        dr.Read();
        Appcod.Text = dr["appcod"].ToString();
        dr.Close();

        cmd.Dispose();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == String.Empty)
        {
            Label9.Text = "Heading not specified";
        }
        else if (TextBox1.Text.Length > 100)
        {
            Label9.Text = "Heading length exceeding 100 characters";
        }
        else if (TextBox3.Text == String.Empty)
        {
            Label9.Text = "Code not specified";
        }
        else if (TextBox4.Text == String.Empty)
        {
            Label9.Text = "Discription1 not specified";
        }
        else if (TextBox4.Text.Length > 400)
        {
            Label9.Text = "Discription1 length exceeding 400 characters";
        }
        else if (TextBox5.Text == String.Empty)
        {
            Label9.Text = "Discription2 not specified";
        }
        else if (TextBox5.Text.Length > 100)
        {
            Label9.Text = "Discription2 length exceeding 100 characters";
        }
        else if (TextBox6.Text == String.Empty)
        {
            Label9.Text = "Image not specified";
        }
        else if (TextBox6.Text.Length > 200)
        {
            Label9.Text = "Image URL length exceeding 200 characters";
        }
        else if (TextBox7.Text == String.Empty)
        {
            Label9.Text = "Author code not specified";
        }
        else if (TextBox8.Text.Length > 200)
        {
            Label9.Text = "Small Image URL length exceeding 200 characters";
        }
        else if (CkEditor1.Text == String.Empty)
        {
            Label9.Text = "Discription not specified";
        }
        else if (RadioButtonList1.SelectedItem == null)
        {
            Label9.Text = "No category selected";
        }
        else
        {
            string cat = RadioButtonList1.SelectedItem.Text;
            if (cat == "Technology")
            {
                techprp.techcod = Convert.ToInt32(TextBox3.Text);
                techprp.techhed = TextBox1.Text;
                techprp.techdis = CkEditor1.Text;
                techprp.techdis1 = TextBox4.Text;
                techprp.techdis2 = TextBox5.Text;
                techprp.techimg = TextBox6.Text;
                techprp.techsimg = TextBox8.Text;
                techprp.techcat = "Technology";
                techprp.techdate = DateTime.Now.AddHours(5).AddMinutes(30);
                techprp.techautcod = Convert.ToInt32(TextBox7.Text);
                tech.Sub_Tech(techprp);
                Label9.Text = "Submitted";
                Empty_Boxes();
            }
            else if (cat == "Science")
            {
                sciprp.scicod = Convert.ToInt32(TextBox3.Text);
                sciprp.scihed = TextBox1.Text;
                sciprp.scidis = CkEditor1.Text;
                sciprp.scidis1 = TextBox4.Text;
                sciprp.scidis2 = TextBox5.Text;
                sciprp.sciimg = TextBox6.Text;
                sciprp.scisimg = TextBox8.Text;
                sciprp.scicat = "Science";
                sciprp.scidate = DateTime.Now.AddHours(5).AddMinutes(30);
                sciprp.sciautcod = Convert.ToInt32(TextBox7.Text);
                sci.Sub_Sci(sciprp);
                Label9.Text = "Submitted";
                Empty_Boxes();
            }
            else if (cat == "Entertainment")
            {
                enterprp.entercod = Convert.ToInt32(TextBox3.Text);
                enterprp.enterhed = TextBox1.Text;
                enterprp.enterdis = CkEditor1.Text;
                enterprp.enterdis1 = TextBox4.Text;
                enterprp.enterdis2 = TextBox5.Text;
                enterprp.enterimg = TextBox6.Text;
                enterprp.entersimg = TextBox8.Text;
                enterprp.entercat = "Entertainment";
                enterprp.enterdate = DateTime.Now.AddHours(5).AddMinutes(30);
                enterprp.enterautcod = Convert.ToInt32(TextBox7.Text);
                enter.Sub_Enter(enterprp);
                Label9.Text = "Submitted";
                Empty_Boxes();
            }
            else if (cat == "Games")
            {
                gamprp.gamcod = Convert.ToInt32(TextBox3.Text);
                gamprp.gamhed = TextBox1.Text;
                gamprp.gamdis = CkEditor1.Text;
                gamprp.gamdis1 = TextBox4.Text;
                gamprp.gamdis2 = TextBox5.Text;
                gamprp.gamimg = TextBox6.Text;
                gamprp.gamsimg = TextBox8.Text;
                gamprp.gamcat = "Games";
                gamprp.gamdate = DateTime.Now.AddHours(5).AddMinutes(30);
                gamprp.gamautcod = Convert.ToInt32(TextBox7.Text);
                gam.Sub_Gam(gamprp);
                Label9.Text = "Submitted";
                Empty_Boxes();
            }
            else if (cat == "Apps and Software")
            {
                appprp.appcod = Convert.ToInt32(TextBox3.Text);
                appprp.apphed = TextBox1.Text;
                appprp.appdis = CkEditor1.Text;
                appprp.appdis1 = TextBox4.Text;
                appprp.appdis2 = TextBox5.Text;
                appprp.appimg = TextBox6.Text;
                appprp.appsimg = TextBox8.Text;
                appprp.appcat = "App & Software";
                appprp.appdate = DateTime.Now.AddHours(5).AddMinutes(30);
                appprp.appautcod = Convert.ToInt32(TextBox7.Text);
                app.Sub_App(appprp);
                Label9.Text = "Submitted";
                Empty_Boxes();
            }
            else if (cat == "Sports")
            {
                spprp.spcod = Convert.ToInt32(TextBox3.Text);
                spprp.sphed = TextBox1.Text;
                spprp.spdis = CkEditor1.Text;
                spprp.spdis1 = TextBox4.Text;
                spprp.spdis2 = TextBox5.Text;
                spprp.spimg = TextBox6.Text;
                spprp.spsimg = TextBox8.Text;
                spprp.spcat = "Sports";
                spprp.spdate = DateTime.Now.AddHours(5).AddMinutes(30);
                spprp.spautcod = Convert.ToInt32(TextBox7.Text);
                sp.Sub_Sport(spprp);
                Label9.Text = "Submitted";
                Empty_Boxes();
            }
        }        
    }

    private void Empty_Boxes()
    {
        TextBox1.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        TextBox5.Text = String.Empty;
        TextBox6.Text = String.Empty;
        TextBox7.Text = String.Empty;
        TextBox8.Text = String.Empty;
        CkEditor1.Text = String.Empty;
        RadioButtonList1.ClearSelection();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Empty_Boxes();
    }
}
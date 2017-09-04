using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace nsknine
{
    public class clstechprp
    {
        public int techcod { get; set; }
        public string techhed { get; set; }
        public string techdis { get; set; }
        public string techdis1 { get; set; }
        public string techdis2 { get; set; }
        public string techimg { get; set; }
        public string techsimg { get; set; }
        public string techcat { get; set; }
        public DateTime techdate { get; set; }
        public int techautcod { get; set; }
    }
    public class clssciprp
    {
        public int scicod { get; set; }
        public string scihed { get; set; }
        public string scidis { get; set; }
        public string scidis1 { get; set; }
        public string scidis2 { get; set; }
        public string sciimg { get; set; }
        public string scisimg { get; set; }
        public string techimg { get; set; }
        public string scicat { get; set; }
        public DateTime scidate { get; set; }
        public int sciautcod { get; set; }
    }
    public class clsenterprp
    {
        public int entercod { get; set; }
        public string enterhed { get; set; }
        public string enterdis { get; set; }
        public string enterdis1 { get; set; }
        public string enterdis2 { get; set; }
        public string enterimg { get; set; }
        public string entersimg { get; set; }
        public string entercat { get; set; }
        public DateTime enterdate { get; set; }
        public int enterautcod { get; set; }
    }
    public class clsgamprp
    {
        public int gamcod { get; set; }
        public string gamhed { get; set; }
        public string gamdis { get; set; }
        public string gamdis1 { get; set; }
        public string gamdis2 { get; set; }
        public string gamimg { get; set; }
        public string gamsimg { get; set; }
        public string gamcat { get; set; }
        public DateTime gamdate { get; set; }
        public int gamautcod { get; set; }
    }
    public class clsappprp
    {
        public int appcod { get; set; }
        public string apphed { get; set; }
        public string appdis { get; set; }
        public string appdis1 { get; set; }
        public string appdis2 { get; set; }
        public string appimg { get; set; }
        public string appsimg { get; set; }
        public string appcat { get; set; }
        public DateTime appdate { get; set; }
        public int appautcod { get; set; }
    }
    public class clssportprp
    {
        public int spcod { get; set; }
        public string sphed { get; set; }
        public string spdis { get; set; }
        public string spdis1 { get; set; }
        public string spdis2 { get; set; }
        public string spimg { get; set; }
        public string spsimg { get; set; }
        public string spcat { get; set; }
        public DateTime spdate { get; set; }
        public int spautcod { get; set; }
    }
    public abstract class clscon
    {
        protected SqlConnection con = new SqlConnection();
        public clscon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        }
    }
    public class clstech:clscon
    {
        public void Sub_Tech(clstechprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("instech", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = p.techcod;
            cmd.Parameters.Add("@hed", SqlDbType.VarChar).Value = p.techhed;
            cmd.Parameters.Add("@dis", SqlDbType.NVarChar).Value = p.techdis;
            cmd.Parameters.Add("@dis1", SqlDbType.VarChar).Value = p.techdis1;
            cmd.Parameters.Add("@dis2", SqlDbType.VarChar).Value = p.techdis2;
            cmd.Parameters.Add("@img", SqlDbType.VarChar).Value = p.techimg;
            cmd.Parameters.Add("@simg", SqlDbType.VarChar).Value = p.techsimg;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = p.techcat;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = p.techdate;
            cmd.Parameters.Add("@aut", SqlDbType.Int).Value = p.techautcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clstechprp> Tech(Int32 cod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("distech", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = cod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clstechprp> obj = new List<clstechprp>();
            while (dr.Read())
            {
                clstechprp k = new clstechprp();
                k.techcod = Convert.ToInt32(dr[0]);
                k.techhed = dr[1].ToString();
                k.techdis = dr[2].ToString();
                k.techdis1 = dr[3].ToString();
                k.techdis2 = dr[4].ToString();
                k.techimg = dr[5].ToString();
                k.techcat = dr[6].ToString();
                k.techdate = Convert.ToDateTime(dr[7]);
                k.techautcod = Convert.ToInt32(dr[8]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clssci : clscon
    {
        public void Sub_Sci(clssciprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("inssci", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = p.scicod;
            cmd.Parameters.Add("@hed", SqlDbType.VarChar).Value = p.scihed;
            cmd.Parameters.Add("@dis", SqlDbType.NVarChar).Value = p.scidis;
            cmd.Parameters.Add("@dis1", SqlDbType.VarChar).Value = p.scidis1;
            cmd.Parameters.Add("@dis2", SqlDbType.VarChar).Value = p.scidis2;
            cmd.Parameters.Add("@img", SqlDbType.VarChar).Value = p.sciimg;
            cmd.Parameters.Add("@simg", SqlDbType.VarChar).Value = p.scisimg;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = p.scicat;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = p.scidate;
            cmd.Parameters.Add("@aut", SqlDbType.Int).Value = p.sciautcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clssciprp> Sci(Int32 cod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dissci", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = cod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clssciprp> obj = new List<clssciprp>();
            while (dr.Read())
            {
                clssciprp k = new clssciprp();
                k.scicod = Convert.ToInt32(dr[0]);
                k.scihed = dr[1].ToString();
                k.scidis = dr[2].ToString();
                k.scidis1 = dr[3].ToString();
                k.scidis2 = dr[4].ToString();
                k.sciimg = dr[5].ToString();
                k.scicat = dr[6].ToString();
                k.scidate = Convert.ToDateTime(dr[7]);
                k.sciautcod = Convert.ToInt32(dr[8]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsenter : clscon
    {
        public void Sub_Enter(clsenterprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insenter", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = p.entercod;
            cmd.Parameters.Add("@hed", SqlDbType.VarChar).Value = p.enterhed;
            cmd.Parameters.Add("@dis", SqlDbType.NVarChar).Value = p.enterdis;
            cmd.Parameters.Add("@dis1", SqlDbType.VarChar).Value = p.enterdis1;
            cmd.Parameters.Add("@dis2", SqlDbType.VarChar).Value = p.enterdis2;
            cmd.Parameters.Add("@img", SqlDbType.VarChar).Value = p.enterimg;
            cmd.Parameters.Add("@simg", SqlDbType.VarChar).Value = p.entersimg;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = p.entercat;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = p.enterdate;
            cmd.Parameters.Add("@aut", SqlDbType.Int).Value = p.enterautcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsenterprp> Enter(Int32 cod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("disenter", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = cod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsenterprp> obj = new List<clsenterprp>();
            while (dr.Read())
            {
                clsenterprp k = new clsenterprp();
                k.entercod = Convert.ToInt32(dr[0]);
                k.enterhed = dr[1].ToString();
                k.enterdis = dr[2].ToString();
                k.enterdis1 = dr[3].ToString();
                k.enterdis2 = dr[4].ToString();
                k.enterimg = dr[5].ToString();
                k.entercat = dr[6].ToString();
                k.enterdate = Convert.ToDateTime(dr[7]);
                k.enterautcod = Convert.ToInt32(dr[8]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsgam : clscon
    {
        public void Sub_Gam(clsgamprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insgame", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = p.gamcod;
            cmd.Parameters.Add("@hed", SqlDbType.VarChar).Value = p.gamhed;
            cmd.Parameters.Add("@dis", SqlDbType.NVarChar).Value = p.gamdis;
            cmd.Parameters.Add("@dis1", SqlDbType.VarChar).Value = p.gamdis1;
            cmd.Parameters.Add("@dis2", SqlDbType.VarChar).Value = p.gamdis2;
            cmd.Parameters.Add("@img", SqlDbType.VarChar).Value = p.gamimg;
            cmd.Parameters.Add("@simg", SqlDbType.VarChar).Value = p.gamsimg;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = p.gamcat;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = p.gamdate;
            cmd.Parameters.Add("@aut", SqlDbType.Int).Value = p.gamautcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsgamprp> Gam(Int32 cod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("disgam", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = cod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsgamprp> obj = new List<clsgamprp>();
            while (dr.Read())
            {
                clsgamprp k = new clsgamprp();
                k.gamcod = Convert.ToInt32(dr[0]);
                k.gamhed = dr[1].ToString();
                k.gamdis = dr[2].ToString();
                k.gamdis1 = dr[3].ToString();
                k.gamdis2 = dr[4].ToString();
                k.gamimg = dr[5].ToString();
                k.gamcat = dr[6].ToString();
                k.gamdate = Convert.ToDateTime(dr[7]);
                k.gamautcod = Convert.ToInt32(dr[8]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clsapp : clscon
    {
        public void Sub_App(clsappprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insapp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = p.appcod;
            cmd.Parameters.Add("@hed", SqlDbType.VarChar).Value = p.apphed;
            cmd.Parameters.Add("@dis", SqlDbType.NVarChar).Value = p.appdis;
            cmd.Parameters.Add("@dis1", SqlDbType.VarChar).Value = p.appdis1;
            cmd.Parameters.Add("@dis2", SqlDbType.VarChar).Value = p.appdis2;
            cmd.Parameters.Add("@img", SqlDbType.VarChar).Value = p.appimg;
            cmd.Parameters.Add("@simg", SqlDbType.VarChar).Value = p.appsimg;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = p.appcat;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = p.appdate;
            cmd.Parameters.Add("@aut", SqlDbType.Int).Value = p.appautcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clsappprp> App(Int32 cod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("disapp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = cod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clsappprp> obj = new List<clsappprp>();
            while (dr.Read())
            {
                clsappprp k = new clsappprp();
                k.appcod = Convert.ToInt32(dr[0]);
                k.apphed = dr[1].ToString();
                k.appdis = dr[2].ToString();
                k.appdis1 = dr[3].ToString();
                k.appdis2 = dr[4].ToString();
                k.appimg = dr[5].ToString();
                k.appcat = dr[6].ToString();
                k.appdate = Convert.ToDateTime(dr[7]);
                k.appautcod = Convert.ToInt32(dr[8]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
    public class clssport : clscon
    {
        public void Sub_Sport(clssportprp p)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("inssp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = p.spcod;
            cmd.Parameters.Add("@hed", SqlDbType.VarChar).Value = p.sphed;
            cmd.Parameters.Add("@dis", SqlDbType.NVarChar).Value = p.spdis;
            cmd.Parameters.Add("@dis1", SqlDbType.VarChar).Value = p.spdis1;
            cmd.Parameters.Add("@dis2", SqlDbType.VarChar).Value = p.spdis2;
            cmd.Parameters.Add("@img", SqlDbType.VarChar).Value = p.spimg;
            cmd.Parameters.Add("@simg", SqlDbType.VarChar).Value = p.spsimg;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = p.spcat;
            cmd.Parameters.Add("@date", SqlDbType.DateTime).Value = p.spdate;
            cmd.Parameters.Add("@aut", SqlDbType.Int).Value = p.spautcod;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        public List<clssportprp> Sport(Int32 cod)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("dissport", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cod", SqlDbType.Int).Value = cod;
            SqlDataReader dr = cmd.ExecuteReader();
            List<clssportprp> obj = new List<clssportprp>();
            while (dr.Read())
            {
                clssportprp k = new clssportprp();
                k.spcod = Convert.ToInt32(dr[0]);
                k.sphed = dr[1].ToString();
                k.spdis = dr[2].ToString();
                k.spdis1 = dr[3].ToString();
                k.spdis2 = dr[4].ToString();
                k.spimg = dr[5].ToString();
                k.spcat = dr[6].ToString();
                k.spdate = Convert.ToDateTime(dr[7]);
                k.spautcod = Convert.ToInt32(dr[8]);
                obj.Add(k);
            }
            dr.Close();
            cmd.Dispose();
            con.Close();
            return obj;
        }
    }
}
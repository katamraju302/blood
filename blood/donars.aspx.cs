using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace blood
{
    public partial class donars : System.Web.UI.Page
    {
        public void state()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
            string s = "pro_stadisplay";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            //create object for dataset
            DataSet ds1 = new DataSet();
            //fill data
            da.Fill(ds1, "state");
            //provid link between dropdownLI
            DropDownList1.DataSource = ds1;
            DropDownList1.DataTextField = "sname";
            DropDownList1.DataValueField = "sid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
            DropDownList2.Items.Insert(0, "--Select--");
        }
        public void blood()
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
            string s2 = "pro_displayblood";
            SqlDataAdapter da2 = new SqlDataAdapter(s2, con2);
            //create object for dataset
            DataSet ds = new DataSet();
            //fill data
            da2.Fill(ds, "blood");
            //provid link between gridview
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "bname";
            DropDownList3.DataValueField = "bid";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "--Select--");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                state();
                blood();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
            //con.Open();
            string q = "pro_donarsearch";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList3.SelectedItem.Text);
           // cmd.ExecuteReader();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "donars");
            GridView1.DataSource = ds;
            GridView1.DataBind();
         //   con.Close();


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string s = DropDownList1.SelectedValue;
            // Label1.Text = s;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
            string x = "pro_citydisplay";
            SqlCommand cmd = new SqlCommand(x, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", s);
            SqlDataAdapter dt1 = new SqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            dt1.Fill(ds1, "cities");
            DropDownList2.DataSource = ds1;
            DropDownList2.DataTextField = "cname";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select--");
        }
    }
}
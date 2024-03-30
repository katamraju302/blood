using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace blood
{
    public partial class Register : System.Web.UI.Page
    {


        public void state()
        {//disConnection 
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
            if (IsPostBack == false)
            {
                state();
                blood();
                int a = Convert.ToInt32(Session["a"]);
                if (a == 1)
                {
                    TextBox1.Text = Session["uname"].ToString();
                    TextBox2.Text = Session["pwd"].ToString();
                    DropDownList1.SelectedItem.Text = Session["state"].ToString();
                    DropDownList2.SelectedItem.Text = Session["city"].ToString();
                    DropDownList3.SelectedItem.Text = Session["bgroup"].ToString();
                    TextBox4.Text = Session["phn"].ToString();
                    TextBox5.Text = Session["email"].ToString();
                    Button1.Text = "Update";
                    Session["a"] = 0;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
            con1.Open();
            if (Button1.Text == "Register")
            {
                string q = "pro_indetails";

                SqlCommand cmd1 = new SqlCommand(q, con1);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@a", TextBox1.Text);//uname
                cmd1.Parameters.AddWithValue("@b", TextBox3.Text);//pwd
                string gender = "";
                if (RadioButton1.Checked == true)
                {
                    gender = RadioButton1.Text;
                }
                else
                {
                    gender = RadioButton2.Text;
                }

                cmd1.Parameters.AddWithValue("@c", gender);//gender
                string lang = "";
                if (CheckBox1.Checked == true)
                {
                    lang = CheckBox1.Text;

                }
                if (CheckBox2.Checked == true)
                {
                    lang = lang + " " + CheckBox2.Text;
                }
                if (CheckBox3.Checked == true)
                {
                    lang = lang + " " + CheckBox3.Text;
                }
                cmd1.Parameters.AddWithValue("@d", lang);//lang
                cmd1.Parameters.AddWithValue("@e", DropDownList1.SelectedItem.Text);//state
                cmd1.Parameters.AddWithValue("@f", DropDownList2.SelectedItem.Text);//city
                cmd1.Parameters.AddWithValue("@g", DropDownList3.SelectedItem.Text);//blood
                cmd1.Parameters.AddWithValue("@h", TextBox4.Text);//phno
                cmd1.Parameters.AddWithValue("@i", TextBox5.Text);//email
                int a = cmd1.ExecuteNonQuery();
                con1.Close();
                if (a != 0)
                {
                    Response.Write("Registred Completed");
                }
                else
                {
                    Response.Write("Registred  Not Completed");

                }
                Button1.Text = "Register";
            }
            else if (Button1.Text == "Update")
            {

                // SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
               // con1.Open();
                string u = "pro_updetails";
                SqlCommand cmd3 = new SqlCommand(u, con1);
                cmd3.CommandType = CommandType.StoredProcedure;
                cmd3.Parameters.AddWithValue("@a", Session["id"].ToString());
                cmd3.Parameters.AddWithValue("@b", TextBox1.Text);//name
                cmd3.Parameters.AddWithValue("@c", TextBox3.Text);//pswd
                string g = "";
               
                   if( RadioButton2.Checked == true)
                    g = RadioButton2.Text;
                
               
                  else  if (RadioButton1.Checked == true)
                        g = RadioButton1.Text;
                
                string lang = "";
                if (CheckBox1.Checked == true)
                {
                    lang = CheckBox1.Text;

                }
                if (CheckBox2.Checked == true)
                {
                    lang = lang + " " + CheckBox2.Text;
                }
                if (CheckBox3.Checked == true)
                {
                    lang = lang + " " + CheckBox3.Text;
                }

                cmd3.Parameters.AddWithValue("@d",g );//gender
                 cmd3.Parameters.AddWithValue("@e", lang);//lang
                cmd3.Parameters.AddWithValue("@f", DropDownList1.SelectedItem.Text);//state
                cmd3.Parameters.AddWithValue("@g", DropDownList2.SelectedItem.Text);//city
                cmd3.Parameters.AddWithValue("@h", DropDownList3.SelectedItem.Text);//bgroup
                cmd3.Parameters.AddWithValue("@i", TextBox4.Text);//phno
                cmd3.Parameters.AddWithValue("@j", TextBox5.Text);//email

                int d = cmd3.ExecuteNonQuery();
                con1.Close();
                if (d != 0)
                {
                   Response.Write("updated");
                    Response.Redirect("donarsdetails.aspx");
                }
                else
                {
                    Response.Redirect(" not updated");

                }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string s = DropDownList1.SelectedValue;
           Label1.Text = DropDownList1.SelectedItem.Text;
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

        protected void Button2_Click(object sender, EventArgs e)
        {

              TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
              RadioButton1.Checked = false;
              RadioButton2.Checked = false;
              CheckBox1.Checked = false;
              CheckBox2.Checked = false;
              CheckBox3.Checked = false;
              DropDownList1.SelectedItem.Text= "--select--";
              DropDownList2.SelectedItem.Text="--select--";
              DropDownList3.SelectedItem.Text= "--select--";


        }
    }
}
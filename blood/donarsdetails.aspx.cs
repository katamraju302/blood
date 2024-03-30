using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace blood
{//nak ippudu wsapp ledu  inak 
    public partial class dronarsdetails : System.Web.UI.Page
    {
        public void Admin()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
            string q = "pro_usdisplay";//idii admin desplay naaa kaani admi admin lo user mothham admin lo only 2 coloumns ga unnaiiiiadmin detaisl kadu areyy ma hostel daggariki raraaaaa itla ardam avvatle inko ganta unfiii chewhatsapp downlod chesinava system lo haa ayitheyvadiki call cheyyeee???/ nam pakk sare chestha gaa entiiiiiicall in sym anaali chesii okayyy
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "user");
            GridView1.DataSource = ds;
            GridView1.DataBind();//

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                Admin();
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmdDelete")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row1 = GridView1.Rows[index];
                Label l1 = (Label)row1.FindControl("Label1");//id
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
                con.Open();
                string q = "pro_deldetails";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@a", l1.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Home.aspx");
            }
            else if (e.CommandName == "cmdEdit")
            {
                int index1 = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index1];
                Label l1 = (Label)row.FindControl("Label1");//id
                Label l2 = (Label)row.FindControl("Label2");//name
                Label l3 = (Label)row.FindControl("Label3");//pwd
                Label l4 = (Label)row.FindControl("Label4");//gender
                Label l5 = (Label)row.FindControl("Label5");//lang
                Label l6 = (Label)row.FindControl("Label6");//state
                Label l7 = (Label)row.FindControl("Label7");//city
                Label l8 = (Label)row.FindControl("Label8");//bgroup
                Label l9 = (Label)row.FindControl("Label9");//phno
                Label l10 = (Label)row.FindControl("Label10");//email
                Session["id"] = l1.Text;
                Session["uname"] = l2.Text;
                Session["pwd"] = l3.Text;
                //   string gen = "";
                if (l4.Text == "Male")
                { Session["gender"] = l4.Text; }
                else { Session["gender"] = l4.Text; }

                foreach (string i in l5.Text.Split())
                {
                    if (i == "Telugu")
                    {
                        Session["Telugu"] = i;
                    }
                    else if (i == "English")
                    {
                        Session["English"] = i;

                    }
                    else if (i == "Hindi")
                    {
                        Session["Hindi"] = i;

                    }
                }
                Session["state"] = l6.Text;
                Session["city"] = l7.Text;
                Session["bgroup"] = l8.Text;
                Session["phn"] = l9.Text;
                Session["email"] = l10.Text;
                Session["a"] = 1;

                Response.Redirect("Register.aspx");
            }
        }
    }
}
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
    //sesssion===obje
    // 

    //insert -
    //update- delete nonQuery--ret- int 
    // single record= scler--- obje

    //multiput - reader-- sql data reader




    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cc"].ToString());
            con.Open();
            string q = "pro_uslong";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            object s = cmd.ExecuteScalar();
            con.Close();
            if((int)s!=0)
            {
                Session["name"] = TextBox1.Text;
                Response.Redirect("userdetails.aspx");
            }
            else
            {
                Response.Write("User NOt Found");
            }

        }
    }
}
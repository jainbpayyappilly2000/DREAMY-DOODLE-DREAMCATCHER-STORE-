using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adminclass m1 = new adminclass();
            if (TextBoxpassword == TextBoxre_password)
            {
                m1.insertsignup(TextBoxfname.Text, TextBoxlname.Text, TextBoxemail.Text, TextBoxphno.Text, TextBoxpassword.Text);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            adminclass m1 = new adminclass();
            string email = TextBoxlenamilsignin.Text;
            string password = TextBoxlpasswordsignin.Text;
            DataTable dt = new DataTable();
            dt = m1.getdatacustomer(email);
            if (dt.Rows.Count > 0)
            {
                if (password == dt.Rows[0]["password"].ToString())
                {
                    string custid = dt.Rows[0]["customerid"].ToString();
                    Session["custsession"] = custid;
                    // Response.Redirect("custIndex.aspx");
                }
            }
        }
    }
}
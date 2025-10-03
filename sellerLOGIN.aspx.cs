using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class sellerLOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }
        }
        public void getdata()
        {
            adminclass cls = new adminclass();
           

            DropDownListSTATE.DataSource = cls.getdatastate();
            DropDownListSTATE.DataTextField = "sname";
            DropDownListSTATE.DataValueField = "sid";
            DropDownListSTATE.DataBind();

            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            adminclass m1 = new adminclass();
            if (TextBoxpassword == TextBoxre_password)
            {
                m1.insertseller(TextBoxname.Text, TextBoxemail.Text,TextBoxphno1.Text, TextBoxphno2.Text, TextBoxpassword.Text,TextBoxSHOP.Text,DropDownListSTATE.SelectedValue,DropDownListDIST.SelectedValue,TextBoxplace.Text);
            }
        }

        protected void DropDownListSTATE_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            adminclass m1 = new adminclass();
            string email = TextBoxlenamilsignin.Text;
            string password = TextBoxlpasswordsignin.Text;
            DataTable dt = new DataTable();
            dt = m1.getdataaseller(email);
            if (dt.Rows.Count > 0)
            {
                if (password == dt.Rows[0]["password"].ToString())
                {
                    string seller_id = dt.Rows[0]["seller_id"].ToString();
                    Session["sellersession"] = seller_id;
                    // Response.Redirect("custIndex.aspx");
                }
            }
        }

        protected void DropDownListSTATE_SelectedIndexChanged1(object sender, EventArgs e)
        {
            adminclass cls = new adminclass();

            DropDownListDIST.DataSource = cls.getdatadistrict();
            DropDownListDIST.DataTextField = "dname";
            DropDownListDIST.DataValueField = "did";
            DropDownListDIST.DataBind();
        }
    }
}
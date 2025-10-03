using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class SELLER_REG : System.Web.UI.Page
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

            DropDownListDIST.DataSource = cls.getdatadistrict();
            DropDownListDIST.DataTextField = "dname";
            DropDownListDIST.DataValueField = "did";
            DropDownListDIST.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            adminclass m1 = new adminclass();
            m1.insertseller(TextBoxNAME.Text, TextBoxEMAIL.Text, TextBoxMOB1.Text, TextBoxMOB2.Text, TextBoxPASSWORD.Text, TextBoxREPASS.Text, DropDownListSTATE.SelectedValue, DropDownListDIST.SelectedValue, TextBoxSHOP.Text);
            getdata();
        }
    }
}
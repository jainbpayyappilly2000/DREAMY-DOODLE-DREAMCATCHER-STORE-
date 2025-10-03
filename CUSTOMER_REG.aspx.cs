using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class CUSTOMER_REG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            adminclass m1 = new adminclass();
            m1.insertsignup(TextBoxFNAME.Text, TextBoxLNAME.Text,TextBoxEMAIL.Text,TextBoxMOB.Text,TextBoxPASS.Text);            
        }

        
    }
}
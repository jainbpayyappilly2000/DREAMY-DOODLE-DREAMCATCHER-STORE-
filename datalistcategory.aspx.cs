using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class datalistcategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            adminclass obj = new adminclass();
            DataList1.DataSource = obj.getdatacate();
            DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string d = ((LinkButton)(sender)).CommandArgument.ToString();
            Response.Redirect("datalistproduct.aspx?id=" + d);

        }
    }
}
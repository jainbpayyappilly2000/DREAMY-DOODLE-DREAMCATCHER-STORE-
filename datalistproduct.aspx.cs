using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class datalistproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            adminclass obj = new adminclass();
            string str = Request.QueryString["id"];
            DataList1.DataSource = obj.getdetailsitemdatalist(str);
            DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string d = ((LinkButton)(sender)).CommandArgument.ToString();
            Response.Redirect("cart.aspx?id=" + d);
        }
    }
}
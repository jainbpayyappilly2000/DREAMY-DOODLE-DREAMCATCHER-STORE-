using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class userCart : System.Web.UI.Page
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
            Repeater1.DataSource = cls.getdataCart();
            Repeater1.DataBind();
        }
        protected void btn_order_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            adminclass cls = new adminclass();
            DataTable Dt = new DataTable();
            
        }
        protected void btn_delete_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            adminclass cls = new adminclass();
            cls.deleteCart(bt.CommandName);
            getdata();
        }
    }
}
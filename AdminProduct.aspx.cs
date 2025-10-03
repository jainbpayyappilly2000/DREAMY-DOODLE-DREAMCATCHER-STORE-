using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class AdminProduct : System.Web.UI.Page
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
            Repeater1.DataSource = cls.getdataitem();
            Repeater1.DataBind();

            DropDownList1.DataSource = cls.getdatacate();
            DropDownList1.DataTextField = "cname";
            DropDownList1.DataValueField = "cid";
            DropDownList1.DataBind();

            DropDownListseller.DataSource = cls.getdataseller();
            DropDownListseller.DataTextField = "seller_name";
            DropDownListseller.DataValueField = "seller_id";
            DropDownListseller.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adminclass m1 = new adminclass();
            byte[] dcimage = null;
            HttpPostedFile File = FileUpload1.PostedFile;
            if (File.ContentLength > 0)
            {
                dcimage = new Byte[File.ContentLength];
                File.InputStream.Read(dcimage, 0, File.ContentLength);

            }
            if (Button1.CommandName == "")
            {
                m1.insertitem(TextBox1.Text, TextBox2.Text, TextBox3.Text, dcimage, DropDownList1.SelectedValue);
            }
            else
            {
                m1.updateitem(TextBox1.Text, TextBox2.Text, TextBox3.Text, dcimage,  DropDownList1.SelectedValue, Button1.CommandName);

            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            getdata();
        }
        protected void btn_edit_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            adminclass cls = new adminclass();
            DataTable Dt = new DataTable();
            Dt = cls.getdetailsitem(bt.CommandName);
            if (Dt.Rows.Count > 0)
            {
                TextBox1.Text = Dt.Rows[0]["dcname"].ToString();
                TextBox2.Text = Dt.Rows[0]["dcdesc"].ToString();
                TextBox3.Text = Dt.Rows[0]["dcprice"].ToString();
                Image1.ImageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])Dt.Rows[0]["dcimage"], 0, ((byte[])Dt.Rows[0]["dcimage"]).Length);
               
                DropDownList1.SelectedValue = Dt.Rows[0]["cid"].ToString();
                Button1.CommandName = Dt.Rows[0]["dcid"].ToString();
            }
        }
        protected void btn_delete_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            adminclass cls = new adminclass();
            cls.deleteitem(bt.CommandName);
            getdata();
        }

    }
}
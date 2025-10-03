using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dreamydoodleProject
{
    public partial class adminCategory : System.Web.UI.Page
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
            Repeater1.DataSource = cls.getdatacate();
            Repeater1.DataBind();
        }
      

        
        protected void btn_edit_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            adminclass cls = new adminclass();
            DataTable Dt = new DataTable();
            Dt = cls.getdetailscate(bt.CommandName);
            if (Dt.Rows.Count > 0)
            {
                TextBox1.Text = Dt.Rows[0]["cname"].ToString();
                Image1.ImageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])Dt.Rows[0]["cimage"], 0, ((byte[])Dt.Rows[0]["cimage"]).Length);
                Button1.CommandName = Dt.Rows[0]["cid"].ToString();
            }
        }
        protected void btn_delete_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            adminclass cls = new adminclass();
            cls.deletecate(bt.CommandName);
            getdata();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adminclass m1 = new adminclass();
            byte[] cimage = null;
            HttpPostedFile File = FileUpload1.PostedFile;
            if (File.ContentLength > 0)
            {
                cimage = new Byte[File.ContentLength];
                File.InputStream.Read(cimage, 0, File.ContentLength);

            }
            if (Button1.CommandName == "")
            {
                m1.insertcate(TextBox1.Text, cimage);
            }
            else
            {
                m1.updatecate(TextBox1.Text, cimage, Button1.CommandName);

            }
            TextBox1.Text = "";
            getdata();
        }
    }
}
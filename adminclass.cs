using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Reflection;
using System.Xml.Linq;

namespace dreamydoodleProject
{
    public class adminclass:connectionclass
    {
        //category
        public void insertcate(string cname, byte[] cimage)
        {
            SqlCommand cmd = new SqlCommand("insert into category(cname,cimage) values(@cname,@cimage)", sqlcon);
            cmd.Parameters.AddWithValue("@cname", cname);
            cmd.Parameters.AddWithValue("@cimage", cimage);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        public void updatecate(string cname, byte[] cimage, string cid)
        {
            if (cimage != null)
            {

                SqlCommand cmd = new SqlCommand(" update category set cname = @cname , cimage = @cimage where cid = @cid ", sqlcon);
                cmd.Parameters.AddWithValue("@cname", cname);
                cmd.Parameters.AddWithValue("@cimage", cimage);
                cmd.Parameters.AddWithValue("@cid", cid);
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
            else
            {
                SqlCommand cmd = new SqlCommand(" update category set cname = @cname  where cid = @cid ", sqlcon);
                cmd.Parameters.AddWithValue("@cname", cname);
                cmd.Parameters.AddWithValue("@cid", cid);
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
        }
        public void deletecate(string cid)
        {
            SqlCommand cmd = new SqlCommand(" delete from category where cid = @cid ", sqlcon);
            cmd.Parameters.AddWithValue("@cid", cid);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        internal DataTable getdatacate()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from category ", sqlcon);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable getdetailscate(string cid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from category where cid=@cid", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@cid", cid);
            adpt.Fill(dt);
            return dt;
        }
        //product table
        public void insertitem(string dcname, string dcdesc, string dcprice, byte[] dcimage,  string cid)
        {
            SqlCommand cmd = new SqlCommand("insert into product(dcname,dcdesc,dcprice,dcimage,cid) values(@dcname,@dcdesc,@dcprice,@dcimage,@cid)", sqlcon);
            cmd.Parameters.AddWithValue("@dcname", dcname);
            cmd.Parameters.AddWithValue("@dcdesc", dcdesc);
            cmd.Parameters.AddWithValue("@dcprice", dcprice);
            cmd.Parameters.AddWithValue("@dcimage", dcimage);
            
            cmd.Parameters.AddWithValue("@cid", cid);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        public void updateitem(string dcname, string dcdesc, string dcprice, byte[] dcimage, string cid, string dcid)
        {
            if (dcimage != null)
            {

                SqlCommand cmd = new SqlCommand(" update product set dcname = @dcname,dcdesc = @dcdesc , dcprice=@dcprice , dcimage = @dcimage , cid=@cid where dcid = @dcid ", sqlcon);
                cmd.Parameters.AddWithValue("@dcname", dcname);
                cmd.Parameters.AddWithValue("@dcdesc", dcdesc);
                cmd.Parameters.AddWithValue("@dcprice", dcprice);
                cmd.Parameters.AddWithValue("@dcimage", dcimage);                
                cmd.Parameters.AddWithValue("@cid", cid);
                cmd.Parameters.AddWithValue("@dcid", dcid);
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
            else
            {
                SqlCommand cmd = new SqlCommand(" update product set dcname = @dcname,dcdesc = @dcdesc , dcprice=@dcprice , cid=@cid  where dcid = @dcid ", sqlcon);
                cmd.Parameters.AddWithValue("@dcname", dcname);
                cmd.Parameters.AddWithValue("@dcdesc", dcdesc);
                cmd.Parameters.AddWithValue("@dcprice", dcprice);             
                cmd.Parameters.AddWithValue("@cid", cid);
                cmd.Parameters.AddWithValue("@dcid", dcid);
                cmd.ExecuteNonQuery();
                sqlcon.Close();
            }
        }
        public DataTable getdataitem()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from product", sqlcon);
            adpt.Fill(dt);
            return dt;
        }

        internal DataTable getdetailsitem(string dcid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from product where dcid = @dcdcid ", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@dcid", dcid);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable getdetailsitemdatalist(string cid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from product where cid = @cid ", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@cid", cid);
            adpt.Fill(dt);
            return dt;
        }
        public void deleteitem(string dcid)
        {
            SqlCommand cmd = new SqlCommand(" delete from product where dcid = @dcid ", sqlcon);
            cmd.Parameters.AddWithValue("@dcid", dcid);
            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }





        //banner

        internal DataTable getdetailwallhanging(string cid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from product,category  where  cid.product=cid.category and  cid=101   ", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@cid", cid);
            adpt.Fill(dt);
            return dt;
        }

        //seller

        public void insertseller(string seller_name, string email, string mobile_1, string mobile_2, string password, string shopName,string sid,string did,string place)
        {
            SqlCommand cmd = new SqlCommand("insert into seller(seller_name,email,mobile_1,mobile_2,password,shopName,sid,did,place) values(@seller_name,@email,@mobile_1,@mobile_2,@password,@shopName,@sid,@did,@place)", sqlcon);
            cmd.Parameters.AddWithValue("@seller_name", seller_name);
            cmd.Parameters.AddWithValue("@email",email);
            cmd.Parameters.AddWithValue("@mobile_1", mobile_1);
            cmd.Parameters.AddWithValue("@mobile_2", mobile_2);
            cmd.Parameters.AddWithValue("@password", password );
            cmd.Parameters.AddWithValue("@shopName",shopName );
            cmd.Parameters.AddWithValue("@sid", sid);
            cmd.Parameters.AddWithValue("@did", did);
            cmd.Parameters.AddWithValue("@place", place);

            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }

        internal DataTable getdataaseller(string email)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from seller where email=@email", sqlcon);
            cmd.Parameters.AddWithValue("@email",email);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable getdataseller()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from seller", sqlcon);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable getdatastate()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from STATE ", sqlcon);
            adpt.Fill(dt);
            return dt;
        }

        internal DataTable getdatadistrict()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from DISTRICT ", sqlcon);
            adpt.Fill(dt);
            return dt;
        }

        //customer
        public void insertsignup(string fname, string lname, string email, string mobile,string password)
        {
            SqlCommand cmd = new SqlCommand("insert into customer(fname,lname,email,mobile,password) values(@fname,@lname,@email,@mobile,@password)", sqlcon);
            cmd.Parameters.AddWithValue("@fname", fname );
            cmd.Parameters.AddWithValue("@lname",lname );
            cmd.Parameters.AddWithValue("@email",email );
            cmd.Parameters.AddWithValue("@mobile",mobile );
            cmd.Parameters.AddWithValue("@password",password);


            cmd.ExecuteNonQuery();
            sqlcon.Close();
        }
        internal DataTable getdatacustomer()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from customer", sqlcon);
            adpt.Fill(dt);
            return dt;
        }
         internal DataTable getdatacustomer(string g)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from customer where email=@email", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@email", g);
            adpt.Fill(dt);
            return dt;
        }

        // CUSTOMER CART

        internal DataTable getdataCart()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from cart c,product i where c.dcid=i.dcid ", sqlcon);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable getdetailsCart(string cart_id)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select * from cart where cart_id=@cart_id", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@cart_id", cart_id);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable deleteCart(string cart_id)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("delete from cart where cart_id=@cart_id", sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@cart_id", cart_id);
            adpt.Fill(dt);
            return dt;
        }



    }
    
}
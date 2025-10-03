using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace dreamydoodleProject
{
    public class connectionclass
    {
        public SqlConnection sqlcon = new SqlConnection();
        public connectionclass()
        {
            if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon = new SqlConnection(ConfigurationManager.AppSettings["con"].ToString());
                sqlcon.Open();
            }
        }
    }
}
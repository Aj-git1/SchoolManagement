using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace SD_School_Bareilly_UP
{
    public class DataAccess
    {
        SqlConnection con = new SqlConnection();

        public DataAccess()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        }
        public DataTable ExecuteStoredProc(String SP, Hashtable ht = null)
        {
            DataTable dt = new DataTable();
            using (SqlCommand cmd = new SqlCommand(SP, con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandTimeout = 0;
                if (ht != null)
                {
                    foreach (DictionaryEntry de in ht)
                    {
                        cmd.Parameters.AddWithValue((String)de.Key, (String)de.Value);
                    }
                }
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            return dt;
        }

    }
}
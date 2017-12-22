using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_TeamProj
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //    SqlConnection conn;
            //    SqlCommand comm;
            //    SqlDataReader reader;
            //    // read the connection string from Web.config
            //    string connectionString = ConfigurationManager.ConnectionStrings["Book"].ConnectionString;

            //    // Initialize connection
            //    conn = new SqlConnection(connectionString);
            //    //create command
            //    comm = new SqlCommand("Select * from Book;", conn);
            //    try
            //    {
            //        //open connection
            //        conn.Open();
            //        //execute the command
            //        reader = comm.ExecuteReader();
            //        // bind the reader to DataList
            //        StudentList.DataSource = reader;
            //        StudentList.DataBind();
            //        //Close the reader
            //        reader.Close();

            //    }
            //    finally
            //    {
            //        //close connection
            //        conn.Close();
            //    }
        }


    }
}
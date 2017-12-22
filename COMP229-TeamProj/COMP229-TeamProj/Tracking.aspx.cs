using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace COMP229_TeamProj
{
    public partial class _Default : Page
    {
        private SqlConnection thisConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand comm;
            SqlDataReader reader;
            // read the connection string from Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["COMP229_Project"].ConnectionString;

            // Initialize connection
            conn = new SqlConnection(connectionString);
            //create command
            comm = new SqlCommand("Select BookName, AuthorName, Price, Rating from Books;", conn);
            try
            {
                //open connection
                conn.Open();
                //execute the command
                reader = comm.ExecuteReader();
                // bind the reader to DataList
                itemsList.DataSource = reader;
                itemsList.DataBind();
                //Close the reader
                reader.Close();

            }
            finally
            {
                //close connection
                conn.Close();
            }
            //// Only build the list on the initial arrival, not after button presses
            //if (!IsPostBack)
            //{
            //    GetBooks();
            //}
        }

        private void GetBooks()
        {
            // See how we can use a using statement rather than try-catch (this will close and dispose the connection similarly to a finally block
            using (thisConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["COMP229_Project"].ConnectionString))
            {
                SqlCommand comm = new SqlCommand("Select BookName, AuthorName, Price, Rating from Books;", thisConnection);
                thisConnection.Open();
                SqlDataReader reader = comm.ExecuteReader();

                itemsList.DataSource = reader;
                itemsList.DataBind();

                reader.Close();
                thisConnection.Close();
            }
        }
        protected void itemList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}
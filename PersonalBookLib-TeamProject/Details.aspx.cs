using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalBookLib_TeamProject
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int book_ISBN = Convert.ToInt32(Request.QueryString["ISBN"]);
            SqlConnection conn;
            SqlCommand comm_book;
            SqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["Comp229_Project"].ConnectionString;

            // Initialize connection
            conn = new SqlConnection(connectionString);
            //create command
            comm_book = new SqlCommand("SELECT * FROM Book WHERE ISBN= @book_ISBN", conn);
            // add parameter into command
            comm_book.Parameters.Add("@book_ISBN", System.Data.SqlDbType.Int);
            comm_book.Parameters["@book_ISBN"].Value = book_ISBN;

            try
            {
                //open connection
                conn.Open();
                //execute the command
                reader = comm_book.ExecuteReader();
                // bind the reader to DataList
                //display the detail of book
                myBook.DataSourceID = null;
                myBook.DataSource = reader;
                myBook.DataBind();
                //Close the reader
                reader.Close();


            }
            finally
            {
                //close connection
                conn.Close();
            }
        }

        protected void myBook_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}

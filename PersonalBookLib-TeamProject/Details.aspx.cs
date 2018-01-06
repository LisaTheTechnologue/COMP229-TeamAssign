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
            if (IsPostBack) return;
            BindDetails();
        }

        private void BindDetails()
        {
            int book_ISBN = Convert.ToInt32(Request.QueryString["bookID"]);
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

        protected void myBook_ModeChanging(object sender, DetailsViewModeEventArgs e)
        {
            myBook.ChangeMode(e.NewMode);
            BindDetails();

        }

        protected void myBook_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            int bookID = Convert.ToInt32(Request.QueryString["bookID"]);
            //int bookID = (int)myBook.DataKey.Value;
            TextBox newBName =
            (TextBox)myBook.FindControl("txtBName");
            TextBox newAName =
            (TextBox)myBook.FindControl("txtAName");
            string update_BName = newBName.Text;
            string update_AName = newAName.Text;
            SqlConnection conn;
            SqlCommand comm;
            string connectionString =
            ConfigurationManager.ConnectionStrings["Comp229_Project"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("UPDATE Book" +
            " SET BookName = @NewBookName, AuthorName = @NewAuthorName" +
            " WHERE ISBN = @BookID", conn);
            comm.Parameters.Add("@BookID", System.Data.SqlDbType.Int);
            comm.Parameters["@BookID"].Value = bookID;
            comm.Parameters.Add("@NewBookName", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@NewBookName"].Value = update_BName;
            comm.Parameters.Add("@NewAuthorName", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@NewAuthorName"].Value = update_AName;
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();

            }
            finally
            {
                conn.Close();
            }
            myBook.ChangeMode(DetailsViewMode.ReadOnly);
            //BindGrid();
            BindDetails();

        }
    }
}


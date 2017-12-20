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
            // Only build the list on the initial arrival, not after button presses
            if (!IsPostBack)
            {
                GetBooks();
            }
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
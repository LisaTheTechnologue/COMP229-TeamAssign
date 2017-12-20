using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
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
            
            using (SqlConnection thisConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Comp229Assign03"].ConnectionString))
            {
                int studentID = Int32.Parse(Session["currentStudentID"].ToString());
                using ( SqlCommand comm = new SqlCommand("Select BookName, AuthorName, Price, Rating from Books;", thisConnection))
                {
                    comm.Connection = thisConnection;
                    SqlDataAdapter ad = new SqlDataAdapter(comm);
                    DataSet ds = new DataSet();
                    ad.Fill(ds, "xyz");
                    itemsList.DataSource = ds.Tables[0];
                itemsList.DataBind();
                    
                }
            }
        }
        protected void itemList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}=

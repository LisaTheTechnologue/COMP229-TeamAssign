using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalBookLib_TeamProject
{
    public partial class Tracking : System.Web.UI.Page
    {
        private SqlConnection connection = new SqlConnection("Server=localhost;Initial Catalog=Comp229_Project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            GetBooks();
        }
        private void GetBooks()
        {
            SqlCommand comm = new SqlCommand("Select * from Book; ", connection);
            try
            {
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();
                //display books from database to datalist
                itemsList.DataSource = reader;
                itemsList.DataBind();
                reader.Close();
            }
            catch (Exception ex)
            {
                dbErrorMessage.Text = ex.Message;
            }
            finally
            {
                connection.Close();
            }
        }
    }
}

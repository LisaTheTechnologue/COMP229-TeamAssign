using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace PersonalBookLib_TeamProject
{
    public partial class Security : System.Web.UI.Page
    {
        private SqlConnection connection = new SqlConnection("Server=localhost;Initial Catalog=Comp229_Project;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitUser(object sender, EventArgs e)
        {
            if (ValidateUser(userID.Text, pwd.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(userID.Text, checkRemember.Checked);
            }
            else
            {
                dbErrorMessage.Text = "Incorrect User";
            }
        }
        protected Boolean ValidateUser(string username, string password)
        {
            Boolean result = false;
            SqlCommand comm = new SqlCommand("Select * from Account; ", connection);
            try
            {
                string encryptedPw = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
                connection.Open();
                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    if (reader["Username"].ToString() == username && reader["Password"].ToString() == password)
                    {
                        result = true;
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                dbErrorMessage.Text = ex.Message;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            register.Style.Add("display", "inline");
            //insert new user
            using (connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["Comp229Assign03"].ConnectionString))
            {
                SqlCommand comm = new SqlCommand(" INSERT INTO [dbo].Account(Firstname, Lastname, Password, Email, Username)  " +
                "VALUES (@Firstname, @Lastname, @Password, @Email, @Username);         ", connection);

                comm.Parameters.AddWithValue("@Firstname", Firstname.Text);
                comm.Parameters.AddWithValue("@Lastname", Lastname.Text);
                comm.Parameters.AddWithValue("@Password", Password.Text);
                comm.Parameters.AddWithValue("@Email", Email.Text);
                comm.Parameters.AddWithValue("@Username", Username.ToString());

                try
                {
                    connection.Open();
                    comm.ExecuteNonQuery();
                    dbErrorMessage.Text = "Inserted new user!";
                }
                catch (SqlException error)
                {
                    dbErrorMessage.Text += error.Message;
                }
                finally
                {
                    connection.Close();

                }
            }
        }

        protected void DisplayInfo(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("Select Firstname, Lastname, Password, Email, Username, ImgURl" +
                " from Account where Username=@username and password = @password;", connection);
            try
            {
                connection.Open();

                //display students in the course
                SqlDataReader reader = comm.ExecuteReader();
                profileInfo.DataSource = reader;
                profileInfo.DataBind();
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
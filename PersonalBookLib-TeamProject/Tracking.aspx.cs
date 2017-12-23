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
        
        protected void Page_Load(object sender, EventArgs e)
        {
            GetBooks();
        }
        private void GetBooks()
        {
            
        }
    }
}

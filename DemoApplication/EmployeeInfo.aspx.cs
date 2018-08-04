using System;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name  
using System.Web.UI.WebControls;

namespace DemoApplication
{
    public partial class EmployeeInfo : System.Web.UI.Page
    {
        protected FileUpload FileUpload1;
        protected TextBox TxtFirstName;
        protected TextBox TxtLastName;
        protected TextBox TxtEmail;
        protected TextBox TxtMobile; 
        protected TextBox TxtDOB;
        protected DropDownList DrdQualification;
        protected RadioButtonList RdoGender;
        protected CheckBoxList ChkLanguage;

        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseConnectionTest();
        }

        private void DatabaseConnectionTest()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["SQLServerConnection"].ToString());
            con.Open();
            Response.Write("Connection Successfull to SQL Server");
            con.Close();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApplication
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(ConnectionToSql())
            {
                BindEmployeeData();
            }
            else
            {
                Response.Write("Connection Failed to SQL Server");
            }
            
        }

        protected bool ConnectionToSql()
        {
            string connectionString;
            SqlConnection con;
            connectionString = @"Data Source=192.168.10.122;Initial Catalog=Test ;User ID=silkmedia;Password=silkmedia";
            con = new SqlConnection(connectionString);
            con.Open();
            Response.Write("Connection Successfull to SQL Server");
            con.Close();
            return true;
        }

        protected void BindEmployeeData()
        {
            string connectionString;
            SqlConnection con;
            connectionString = @"Data Source=192.168.10.122;Initial Catalog=Test ;User ID=silkmedia;Password=silkmedia";
            con = new SqlConnection(connectionString);
            con.Open();
            Response.Write("</br>");
            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select FIRST_NAME,LAST_NAME from EMPLOYEE";

            command = new SqlCommand(sql, con);

            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + " " + dataReader.GetValue(1) + "</br>";
            }

            Response.Write(Output);
            dataReader.Close();
            command.Dispose();
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //  Session["Name"] = txtName.Text;
            //   ViewState["Name"] = txtName.Text;
            //  Response.Write(Session["Name"] + "</br>");
            // Response.Write(ViewState["Name"] + "</br>");
            //  Response.Write(txtName.Text + "</br>");
            // HideFields();
        }
    }
}
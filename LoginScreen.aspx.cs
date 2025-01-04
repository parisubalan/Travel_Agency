using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Need to add thease imports added by Pari - 24.12.2024
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Pari\Mini Projects\Travel_Agency\App_Data\TravelAgencyDatabase.mdf;Integrated Security=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        // Here We check the sql connection was already open or not
        // if already run any previous connection once close then open new connection
        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
    }
    protected void registerBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterScreen.aspx");
    }

    protected void loginBtn_Click(object sender, EventArgs e)
    {
        // Get all email id list in admin table
        List<string> emailList = getEmailList();
        if(!emailList.Contains(tbEmail.Text.ToString().Trim()))
            lblMessage.Text = "This email was not registered";
        else if (getAdminPassword(tbEmail.Text.ToString().Trim())!= tbPassword.Text)
            lblMessage.Text = "Password was incorrect";
        else
            Response.Redirect("DashboardScreen.aspx");
    }

    public List<string> getEmailList()
    {
        List<string> emailList = new List<string>();
        string query = "SELECT email FROM AdminsTable";
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.Connection = con;
            cmd.CommandText = query; // Set the query

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        emailList.Add(reader["email"].ToString());
                    }
                }
            }
        }
        return emailList;
    }

    public string getAdminPassword(string emailId)
    {
        string adminPassword = "";
        string query = "SELECT password FROM AdminsTable where email = '"+emailId+"'";
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.Connection = con;
            cmd.CommandText = query; // Set the query

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        adminPassword = reader["password"].ToString();
                    }
                }
            }
        }
        return adminPassword;
    }
}
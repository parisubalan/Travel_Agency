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
        AdminDetail adminDetail = GetAdminDetailsByEmail(tbEmail.Text);
        if (adminDetail == null)
            lblMessage.Text = "This email was not registered";
        else if (adminDetail.Password != tbPassword.Text)
            lblMessage.Text = "Password was incorrect";
        else
            Response.Redirect("DashboardScreen.aspx");
    }

    public AdminDetail GetAdminDetailsByEmail(string email)
    {
        string query = "SELECT name, email, address, password FROM AdminsTable WHERE email =@Email";
        AdminDetail adminDetail = null;

        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.Connection = con;
            cmd.CommandText = query; // Set the query
            cmd.Parameters.AddWithValue("@Email", email); // Add parameter

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        adminDetail = new AdminDetail();
                        adminDetail.Name = reader["name"].ToString();
                        adminDetail.Email = reader["email"].ToString();
                        adminDetail.Address = reader["address"].ToString();
                        adminDetail.Password = reader["password"].ToString();
                    }
                }
            }
        }
        return adminDetail;
    }
}
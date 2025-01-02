using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// need to add thease imports
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Pari\Mini Projects\Travel_Agency\App_Data\TravelAgencyDatabase.mdf;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        // Validation Controls enable in this screen
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        // Here We check the sql connection was already open or not
        // if already run any previous connection once close then open new connection
        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
    }

    protected void loginOpt_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginScreen.aspx");
    }

    protected void registerBtn_Click(object sender, EventArgs e)
    {
        List<String> emailList = GetEmailList();
        if (emailList.Contains(tbEmail.Text))
        {
            lblMessage.Visible = true;
            lblMessage.Text = "This email id was already exist";
        }
        else
        {
            cmd.CommandText = "insert into AdminsTable values('" + tbName.Text + "','" + tbEmail.Text + "','" + tbPassword.Text + "','" + tbMobile.Text + "','" + tbAddress.Text + "')";
            cmd.ExecuteNonQuery();
            lblMessage.Text = "User was registered";
            lblMessage.ForeColor = System.Drawing.ColorTranslator.FromHtml("#34eb83");
            lblMessage.Visible = true;
            Response.Redirect("DashboardScreen.aspx");
        }
    }

    public List<string> GetEmailList()
    {
        List<string> emailList = new List<string>();

        // Query to get email list - using parameterized query
        string query = "SELECT email FROM AdminsTable";

        using (SqlCommand cmd = new SqlCommand(query, con))
        {
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    emailList.Add(reader["email"].ToString());
                }
            }
        }

        return emailList;
    }
}
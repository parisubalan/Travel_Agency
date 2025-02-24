using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Need to add thease imports added by Pari - 24.12.2024
using System.Data;
using System.Data.SqlClient;

public partial class EditPackageForm : System.Web.UI.Page
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

        if (!IsPostBack)
        {
            HttpCookie cookie = Request.Cookies["packageCode"];
            if (cookie != null)
            {
                getPackageDetail(cookie["packageCode"]);
            }
        }
    }

    private void getPackageDetail(string packageCode)
    {
        string query = "SELECT * FROM PackageTable WHERE packageCode ='" + packageCode + "'";

        cmd.Connection = con;
        cmd.CommandText = query; // Set the query

        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            while (reader.Read())
            {
                lblPackCode.Text = packageCode.ToString();
                tbPackName.Text = reader["name"].ToString();
                tbPackDesc.Text = reader["description"].ToString();
                tbPackDuration.Text = reader["duration"].ToString();
                tbMembersLimit.Text = reader["members"].ToString();
                tbPackPrice.Text = reader["price"].ToString();
            }
        }
    }

    protected void updateBtn_Click(object sender, EventArgs e)
    {
        String packageCode = "";
        HttpCookie cookie = Request.Cookies["packageCode"];
        if (cookie != null)
        {
            packageCode = cookie["packageCode"];
        }
        string query = "UPDATE PackageTable set name = '" + tbPackName.Text.ToString() + "', description = '" + tbPackDesc.Text.ToString() + "', duration = '" + tbPackDuration.Text.ToString() + "', members = '" + tbMembersLimit.Text.ToString() + "', price = '" + tbPackPrice.Text.ToString() + "' where packageCode = '" + packageCode.ToString() + "'";
        cmd.CommandText = query;
        cmd.ExecuteNonQuery();
        Response.Redirect("DashboardScreen.aspx");
    }
}
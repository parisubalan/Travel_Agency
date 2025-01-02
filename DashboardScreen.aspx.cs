using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Need to add thease imports added by Pari - 24.12.2024
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class Dashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Pari\Mini Projects\Travel_Agency\App_Data\TravelAgencyDatabase.mdf;Integrated Security=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
    }
    protected void createPackBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddPackageScreen.aspx");
    }

    protected void editBtn_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("packageCode");
        String packageCode = Convert.ToString((sender as LinkButton).CommandArgument);
        cookie["packageCode"] = packageCode;
        // Cookie will be persisted for 30 days
        // cookie.Expires = DateTime.Now.AddDays(30);
        Response.Cookies.Add(cookie);
        Response.Redirect("EditPackageScreen.aspx");
    }

    protected void deleteBtn_Click(object sender, EventArgs e)
    {
        String packageCode = Convert.ToString((sender as LinkButton).CommandArgument);
        string query = "Delete FROM PackageTable WHERE packageCode ='"+packageCode+"'";
        cmd.CommandText = query;
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();

    }

    protected void bookNowBtn_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("packageCode");
        String packageCode = Convert.ToString((sender as LinkButton).CommandArgument);
        cookie["packageCode"] = packageCode;
        // Cookie will be persisted for 30 days
        // cookie.Expires = DateTime.Now.AddDays(30);
        Response.Cookies.Add(cookie);
        Response.Redirect("CreateBookingScreen.aspx");
    }
    protected void allBookingsBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AllBookingsScreen.aspx");
    }
    protected void reportBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportScreen.aspx");
    }
    protected void logoutBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginScreen.aspx");
    }
}
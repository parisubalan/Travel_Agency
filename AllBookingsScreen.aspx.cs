using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Need to add thease imports added by Pari - 25.12.2024
using System.Data;
using System.Data.SqlClient;

public partial class AllBookingsScreen : System.Web.UI.Page
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
    protected void backButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("DashboardScreen.aspx");
    }

    protected void viewBtn_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("bookingCode");
        String bookingCode = Convert.ToString((sender as LinkButton).CommandArgument);
        cookie["bookingCode"] = bookingCode;
        // Cookie will be persisted for 30 days
        // cookie.Expires = DateTime.Now.AddDays(30);
        Response.Cookies.Add(cookie);
        Response.Redirect("BookingDetailScreen.aspx");
    }

    protected void deleteBtn_Click(object sender, EventArgs e)
    {
        string bookingCode = Convert.ToString((sender as LinkButton).CommandArgument);
        reduceBookingCountAndRevenue(bookingCode);
        deleteBooking(bookingCode);
    }

    private void reduceBookingCountAndRevenue(string bookingCode)
    {
        string query = "select bookingCount * FROM bookingsTable WHERE bookingCode ='" + bookingCode + "' limit 1";
        cmd.CommandText = query;
        cmd.ExecuteNonQuery();
        object result = cmd.ExecuteScalar();
        if (result != null)
        {
            //string bookingCount = result.ToString();
        }
        else { 
        
        }
    }

    private void deleteBooking(string bookingCode)
    {
        string query = "Delete FROM bookingsTable WHERE bookingCode ='" + bookingCode + "'";
        cmd.CommandText = query;
        cmd.ExecuteNonQuery();
       // con.Close();
        GridView1.DataBind();
    }
}
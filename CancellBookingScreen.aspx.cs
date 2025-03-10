using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Need to add thease imports added by Pari - 24.12.2024
using System.Data;
using System.Data.SqlClient;

public partial class BookingCancelScreen : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Pari\Mini Projects\Travel_Agency\App_Data\TravelAgencyDatabase.mdf;Integrated Security=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Validation Controls enable in this screen
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (con.State == ConnectionState.Open)
            con.Close();
        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (!IsPostBack)
        {
            HttpCookie cookie = Request.Cookies["bookingCode"];
            if (cookie != null)
            {
                getBookingDetail(cookie["bookingCode"]);
            }
        }
    }

    private void getBookingDetail(string bookingCode)
    {
        string query = "SELECT * FROM BookingsTable WHERE bookingCode ='" + bookingCode + "'";
        cmd.Connection = con;
        cmd.CommandText = query; // Set the query

        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    lblBookingCode.Text = bookingCode.ToString();
                    lblPackCode.Text = reader["packCode"].ToString();
                    lblPackName.Text = reader["packname"].ToString();
                }
            }
        }
    }

    protected void backBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AllBookingsScreen.aspx");
    }

    protected void cancelBtn_Click(object sender, EventArgs e)
    {
        String bookingCode = "";
        HttpCookie cookie = Request.Cookies["bookingCode"];
        if (cookie != null)
        {
            bookingCode = cookie["bookingCode"];
        }
        string query = "UPDATE BookingsTable set bookingStatus = 'Cancelled', resone = '" + tbResone.Text.ToString() + "' where bookingCode = '" + bookingCode.ToString() + "'";
        cmd.CommandText = query;
        cmd.ExecuteNonQuery();
        Response.Redirect("AllBookingsScreen.aspx");
    }
}
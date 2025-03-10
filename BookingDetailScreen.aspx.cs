using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Need to add thease imports added by Pari - 24.12.2024
using System.Data;
using System.Data.SqlClient;

public partial class BookingDetailScreen : System.Web.UI.Page
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
                    lblDesc.Text = reader["packDesc"].ToString();
                    lblDuration.Text = reader["packDuration"].ToString();
                    lblMember.Text = reader["packMembers"].ToString();
                    lblPrice.Text = reader["packprice"].ToString();
                    lblClientName.Text = reader["clientName"].ToString();
                    lblClinetEmail.Text = reader["clientMobile"].ToString();
                    lblClientMobile.Text = reader["clientAddress"].ToString();
                    lblStartDate.Text = reader["startDate"].ToString();
                    lblEndDate.Text = reader["endDate"].ToString();
                    lblBookingStatus.Text = reader["bookingStatus"].ToString();

                    if (reader["bookingStatus"].ToString().Equals("Cancelled"))
                    {
                        sLblResone.Visible = true;
                        lblResone.Text = reader["resone"].ToString();
                    }
                }
            }
        }
    }

    protected void backBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("AllBookingsScreen.aspx");
    }
}
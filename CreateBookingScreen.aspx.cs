using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Need to add thease imports added by Pari - 24.12.2024
using System.Data;
using System.Data.SqlClient;

public partial class CreateBookingForm : System.Web.UI.Page
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
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.Connection = con;
            cmd.CommandText = query;
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lblPackCode.Text = packageCode.ToString();
                        lblPackName.Text = reader["name"].ToString();
                        lblDesc.Text = reader["description"].ToString();
                        lblDuration.Text = reader["duration"].ToString();
                        lblMember.Text = reader["members"].ToString();
                        lblPrice.Text = "Rs. " + reader["price"].ToString();
                    }
                }
            }
        }
    }

    protected void createBtn_Click(object sender, EventArgs e)
    {
        String bookingCode = GenerateBookingCode();
        cmd.CommandText = "insert into BookingsTable values('" + bookingCode + "', '" + lblPackCode.Text + "','" + lblPackName.Text + "','" + lblDesc.Text + "','" + lblPrice.Text + "','" + lblDuration.Text + "','" + lblMember.Text + "','" + tbClientName.Text + "','" + tbClientMobile.Text + "','" + tbClinetEmail.Text + "','" + tbStartDate.Text + "','" + tbEndDate.Text + "')";
        cmd.ExecuteNonQuery();
        lblMessage.Text = "Booking was created";
        lblMessage.ForeColor = System.Drawing.ColorTranslator.FromHtml("#34eb83");
        lblMessage.Visible = true;
        updateBookingCount();
        Response.Redirect("DashboardScreen.aspx");
    }

    public string GenerateBookingCode()
    {
        string prefix = "TABS";
        Random random = new Random();
        string newBookingCode;

        while (true)
        {
            // Generate a random 4-digit number
            int randomNumber = random.Next(1000, 10000); // Random number between 1000 and 9999
            newBookingCode = prefix + randomNumber;

            // Ensure the generated code is unique in the database
            if (!IsBookingCodeExists(newBookingCode))
            {
                break; // Exit the loop if the code is unique
            }
        }

        return newBookingCode;
    }

    private bool IsBookingCodeExists(string bookingCode)
    {
        // Check if the booking code exists in the database
        string query = "SELECT COUNT(1) FROM BookingsTable WHERE bookingCode ='"+bookingCode+"' ";
        SqlCommand cmd = new SqlCommand(query, con);
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        return count > 0; // True if the booking code exists
    }

    private int getBookingCount()
    {
        //string updateBookingCountQuery = "UPDATE PackageTable SET BookingCount = BookingCount + 1 WHERE PackageId = @PackageId";
        int bookingCount = -1;
        string query1 = "SELECT bookingCount FROM PackageTable WHERE packageCode = '" + lblPackCode.Text +"'";
        cmd.CommandText = query1;
        object result = cmd.ExecuteScalar();
        if (result != null)
        {
            bookingCount = Convert.ToInt32(result);
        }
        return bookingCount;
    }

    private void updateBookingCount()
    {
        int bookingCount = getBookingCount();
        string query = "UPDATE PackageTable SET BookingCount ='" + (bookingCount+1) + "' WHERE packageCode = '" + lblPackCode.Text + "' ";
        cmd.CommandText = query;
        cmd.ExecuteNonQuery();
        con.Close();
    }

}
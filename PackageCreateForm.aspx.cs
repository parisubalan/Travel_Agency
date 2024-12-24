using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// need to add thease imports
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class PackageCreateScreen : System.Web.UI.Page
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
    protected void createBtn_Click(object sender, EventArgs e)
    {
        List<String> packageIDList = GetPackageCodeList();
        if (packageIDList.Contains(tbPackCode.Text.ToString()))
        {
            lblMessage.Text = "Package code was already exist!";
            lblMessage.ForeColor = System.Drawing.ColorTranslator.FromHtml("#ff1100");
        }
        else
        {
            cmd.CommandText = "insert into PackageTable values('" + tbPackCode.Text + "','" + tbPackName.Text + "','" + tbPackDesc.Text + "','" + tbPackPrice.Text + "','" + 0 + "','" + tbPackDuration.Text + "','" + tbMembersLimit.Text+ "')";
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Pacakge was created";
            lblMessage.ForeColor = System.Drawing.ColorTranslator.FromHtml("#34eb83");
            lblMessage.Visible = true;
            Response.Redirect("Dashboard.aspx");
            MessageBox.Show("Package was created");
        }
    }

    public List<string> GetPackageCodeList()
    {
        List<string> packageCodeList = new List<string>();

        string query = "SELECT packageCode FROM PackageTable";

        using (SqlCommand cmd = new SqlCommand(query, con))
        {
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    packageCodeList.Add(reader["packageCode"].ToString());
                }
            }
        }
        return packageCodeList;
    }
}
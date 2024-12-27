<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllBookingsScreen.aspx.cs" Inherits="AllBookingsScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style4 {
            text-decoration: underline;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <p>

            <span class="auto-style1">

                <strong>Travel Agency with Booking System<br />
                    <span class="auto-style4">
                        <br style="font-size: medium" />
                        All Bookings</span></strong></span>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="1088px">
                <Columns>
                    <asp:BoundField DataField="bookingCode" HeaderText="Booking Code" SortExpression="bookingCode" />
                    <asp:BoundField DataField="clientName" HeaderText="Client Name" SortExpression="clientName" />
                    <asp:BoundField DataField="packname" HeaderText="Pack Name" SortExpression="packname" />
                    <asp:BoundField DataField="packPrice" HeaderText="Pack Price" SortExpression="packPrice" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="viewBtn" OnClick="viewBtn_Click" Text="View" ForeColor="Green" runat="server" CommandArgument='<%# Eval("bookingCode") %>' />
                            <asp:LinkButton ID="deleteBtn" OnClick="deleteBtn_Click" OnClientClick="return confirm('Are you sure want to delete?');" Text="Delete" ForeColor="Red" runat="server" CommandArgument='<%# Eval("bookingCode") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [bookingCode], [clientName], [packname], [packPrice] FROM [BookingsTable]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="backButton" runat="server" Height="46px" OnClick="backButton_Click" Text="Back" Width="159px" />
        </p>
    </form>
</body>
</html>

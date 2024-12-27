<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashboardScreen.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }

        .auto-style3 {
            text-align: center;
        }

        .auto-style4 {
            text-decoration: underline;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            font-size: large;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <div class="auto-style3" style="height: 885px">

                <strong>

            <span class="auto-style5">

                Travel Agency with Booking System</span><span class="auto-style1"><br />
                    <span class="auto-style4">
                        <br style="font-size: medium" />

            </span>

            <span class="auto-style6">

                        Dashboard</span><span class="auto-style1"><br />

            </span>
                    </span>
                </strong>

            <span class="auto-style1">

                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="1106px">
                    <Columns>
                        <asp:BoundField DataField="packageCode" HeaderText="packageCode" SortExpression="packageCode" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                        <asp:BoundField DataField="members" HeaderText="members" SortExpression="members" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />

                        <%-- Need to add this asp:TemplateField part to show action buttons in gridview added by Pari at 24.12.2024--%>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="editBtn" OnClick="editBtn_Click" Text="Edit" ForeColor="Blue" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                                <asp:LinkButton ID="deleteBtn" OnClick="deleteBtn_Click" OnClientClick="return confirm('Are you sure want to delete?');" Text="Delete" ForeColor="Red" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                                <asp:LinkButton ID="bookNowBtn" OnClick="bookNowBtn_Click" Text="Book Now" ForeColor="Green" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [packageCode], [name], [description], [duration], [members], [price] FROM [PackageTable]"></asp:SqlDataSource>
            <br />
                <br />

            </span>
            <asp:Button ID="createPackBtn" runat="server" OnClick="createPackBtn_Click" Text="Add Package" Height="50px" Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="allBookingsBtn" runat="server" Text="All Bookings" Height="50px" OnClick="allBookingsBtn_Click" Width="150px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="reportBtn" runat="server" Text="Report" Height="50px" OnClick="reportBtn_Click" Width="147px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logoutBtn" runat="server" Text="Logout" Height="50px" OnClick="logoutBtn_Click" Width="150px" OnClientClick="return confirm('Are you sure?');" />

        </div>
    </form>
</body>
</html>

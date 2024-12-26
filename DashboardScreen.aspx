<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DashboardScreen.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-decoration: underline;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div class="auto-style3" style="height: 885px">
    
        <span class="auto-style1">
    
        <strong>Travel Agency with Booking System<br />
        <span class="auto-style4">
        <br style="font-size: medium" />
        Dashboard<br />
        </span>
        </strong>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" style="font-size: medium" Width="1144px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="273px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="packageCode" HeaderText="Code" SortExpression="packageCode" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:BoundField DataField="members" HeaderText="Members" SortExpression="members" />
                <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="editBtn" OnClick="editBtn_Click" Text ="Edit" ForeColor="Blue" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                        <asp:LinkButton ID="deleteBtn" OnClick="deleteBtn_Click" Text ="Delete" ForeColor="Red" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                        <asp:LinkButton ID="bookNowBtn" OnClick="bookNowBtn_Click" Text ="Book Now" ForeColor ="Green" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [packageCode], [name], [description], [duration], [members], [bookingCount], [price] FROM [PackageTable]"></asp:SqlDataSource>
        <br />
    
        </span>
        <asp:Button ID="createPackBtn" runat="server" OnClick="createPackBtn_Click" Text="Add Package" Height="50px" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="allBookingsBtn" runat="server" Text="All Bookings" Height="50px" OnClick="allBookingsBtn_Click" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="reportBtn" runat="server" Text="Report" Height="50px" OnClick="reportBtn_Click" Width="147px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logoutBtn" runat="server" Text="Logout" Height="50px" OnClick="logoutBtn_Click" Width="150px" />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportScreen.aspx.cs" Inherits="ReportScreen" %>

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
            font-size: large;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style6 {
            font-size: x-large;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <strong>
    
        <span class="auto-style1">
    
        Travel Agency with Booking System<br />
        <span class="auto-style4">
        <br style="font-size: medium" />
        </span>
    
        </span>
        <span class="auto-style5">
    
        <span class="auto-style6">
    
        Report&#39;s</span></span><span class="auto-style1"><span class="auto-style4"><br />
        </span>
    
        </span>
        </strong><span class="auto-style1">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" style="font-size: large" Width="1088px">
            <Columns>
                <asp:BoundField DataField="packageCode" HeaderText="Package Code" SortExpression="packageCode" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="bookingCount" HeaderText="Booking Count" SortExpression="bookingCount" />
                <asp:BoundField DataField="totalRevenue" HeaderText="Total Revenue" SortExpression="totalRevenue" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [packageCode], [name], [duration], [price], [bookingCount], [totalRevenue] FROM [PackageTable]"></asp:SqlDataSource>
        <br />
    
        </span>
        <asp:Button ID="backBtn" runat="server" Height="59px" OnClick="backBtn_Click" Text="Back" Width="198px" />
    
    </div>
    </form>
</body>
</html>

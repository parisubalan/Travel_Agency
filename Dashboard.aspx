<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

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
                <asp:BoundField DataField="bookingCount" HeaderText="Booking Count" SortExpression="bookingCount" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />

                <%-- Need to add this asp:TemplateField part to show action buttons in gridview added by Pari at 24.12.2024--%>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="editBtn" Text ="Edit" ForeColor="Blue" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                        <asp:LinkButton ID="deleteBtn" Text ="Delete" ForeColor="Red" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                        <asp:LinkButton ID="bookNowBtn" Text ="Book Now" ForeColor ="Green" runat="server" CommandArgument='<%# Eval("packageCode") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [packageCode], [name], [description], [duration], [members], [bookingCount], [price] FROM [PackageTable]"></asp:SqlDataSource>
        <br />
    
        </span>
        <asp:Button ID="createPackBtn" runat="server" OnClick="createPackBtn_Click" Text="Add Package" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="All Bookings" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Report" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Contact us" />
    
    </div>
    </form>
</body>
</html>

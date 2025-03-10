<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CancellBookingScreen.aspx.cs" Inherits="BookingCancelScreen" %>

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
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-weight: bold;
        }
    
        .auto-style3 {
            font-size: medium;
        }
        
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div style="height: 707px">
    
        <strong><span class="auto-style1">Travel Agency with Booking System<br />
        <span class="auto-style4">
        <br style="font-size: medium" />
        </span>&nbsp;&nbsp;&nbsp; </span>
        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Cancell Booking</span><br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; </span>
        </strong>
    
        <span class="auto-style5">&nbsp;<span class="auto-style3">&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Booking Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblBookingCode" runat="server" style="font-weight: 700"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Package Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="lblPackCode" runat="server" style="font-weight: 700"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Package Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="lblPackName" runat="server" style="font-weight: 700"></asp:Label>
&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label15" runat="server" Text="Resone"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbResone" runat="server" CssClass="auto-style6" Width="333px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbResone" Display="Dynamic" ErrorMessage="Enter resone" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;
        </span></span>
        <br />
        <strong>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:Button ID="cancelBtn" runat="server" OnClick="cancelBtn_Click" Text="Cancel" Height="59px" Width="154px" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="backBtn" runat="server" OnClick="backBtn_Click" Text="Back" Height="59px" Width="184px" />
    
    </div>
    </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PackageCreateForm.aspx.cs" Inherits="PackageCreateScreen" %>

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
    </style>
</head>
<body style="height: 746px">
    <form id="form1" runat="server">
    <div style="height: 707px">
    
        <strong><span class="auto-style1">Travel Agency with Booking System<br />
        <span class="auto-style4">
        <br style="font-size: medium" />
        </span>&nbsp;&nbsp;&nbsp; </span>
        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Create Package</span><br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; </span>
        </strong>
    
        <span class="auto-style5">&nbsp; </span>
        <asp:Label ID="Label1" runat="server" Text="Package Code"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPackCode" runat="server" CssClass="auto-style6" MaxLength="6" Width="333px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbPackCode" Display="Dynamic" ErrorMessage="Enter package code" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Package Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPackName" runat="server" CssClass="auto-style6" Width="333px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPackName" Display="Dynamic" ErrorMessage="Enter package name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPackDesc" runat="server" CssClass="auto-style6" Width="333px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPackDesc" Display="Dynamic" ErrorMessage="Enter package description" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Duration (Days)"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="tbPackDuration" runat="server" CssClass="auto-style6" Width="333px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbPackDuration" Display="Dynamic" ErrorMessage="Enter package duration" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Members"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbMembersLimit" runat="server" CssClass="auto-style6" Width="333px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbMembersLimit" Display="Dynamic" ErrorMessage="Enter member's limit" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbPackPrice" runat="server" CssClass="auto-style6" MaxLength="2" TextMode="Number" Width="333px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbPackPrice" Display="Dynamic" ErrorMessage="Enter price value" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <strong>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <asp:Button ID="createBtn" runat="server" OnClick="createBtn_Click" Text="Create Package" />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterScreen.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            font-size: large;
        }
        .auto-style1 {
            font-size: xx-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="auto-style1">Travel Agency With Booking System</span><br class="auto-style1" />
        </strong>
        <br />
        <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>REGISTER<br />
        </strong>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="tbName" runat="server" Width="261px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbName" Display="Dynamic" ErrorMessage="Enter your name" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
        &nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbEmail" runat="server" Width="265px" TextMode="Email"></asp:TextBox>
&nbsp;</span>&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Enter your email" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Enter valid email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">
        <asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="tbMobile" runat="server" Width="261px" TextMode="Phone"></asp:TextBox>
        </span>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbMobile" Display="Dynamic" ErrorMessage="Enter your mobile number" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
        &nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">
        <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="tbAddress" runat="server" Width="261px"></asp:TextBox>
        </span>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbAddress" Display="Dynamic" ErrorMessage="Enter your address" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
        &nbsp;<br />
        &nbsp;<br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <span class="auto-style2">
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="tbPassword" runat="server" Width="261px" TextMode="Password"></asp:TextBox>
        </span>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPassword" Display="Dynamic" ErrorMessage="Enter your password" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
        &nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">
        <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbConfirmPassword" runat="server" Width="261px" TextMode="Password"></asp:TextBox>
        </span>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbConfirmPassword" Display="Dynamic" ErrorMessage="Enter confirm password" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" Display="Dynamic" ErrorMessage="Mismatch Password" ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </span>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="loginOpt" runat="server" Text="LOGIN" CausesValidation="False" OnClick="loginOpt_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="registerBtn" runat="server" Text="Register" OnClick="registerBtn_Click" />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="week2.Validatin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label> 
    <asp:TextBox  ID="NameTextBox" runat="server" ToolTip="Enter your name" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage=" Required" 
        ControlToValidate="NameTextBox"
        Display="Dynamic">
    </asp:RequiredFieldValidator>
    
    <br/>
    <asp:Label ID="DoB" runat="server" Text="DoB:"></asp:Label>
    <asp:TextBox ID="DoBTextBox" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator" runat="server"
        ErrorMessage =" Much be within valid range"
        ControlToValidate="DoBTextBox"
        Display="Dynamic" 
        MinimumValue="01/01/1903" 
        MaximumValue="01/01/2063" 
        Type="Date">

    </asp:RangeValidator>
    <br />
    <asp:Label ID="AgeLabel" runat="server" Text="Age: "></asp:Label>
    <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator" runat="server"
        ErrorMessage="Must be 18+"
        ControlToValidate="AgeTextBox"
        Display="Dynamic"
        Operator="GreaterThanEqual"
        Type="Integer"
        ValueToCompare="18">
    </asp:CompareValidator>
        <br />
    <asp:Label ID="EmailLable" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="EmailValidator" runat="server"
        ErrorMessage="Not a valid email"
        ControlToValidate="EmailTextBox"
        Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ></asp:RegularExpressionValidator>
    <br />
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
    <br />
    <asp:ValidationSummary ID="ValidationSummary" runat="server" />
    </div>
    </form>
</body>
</html>

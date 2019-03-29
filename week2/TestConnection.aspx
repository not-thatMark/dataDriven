<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestConnection.aspx.cs" Inherits="week2.TestConnection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="TestQuestion" runat="server" Text="TestQuestion"></asp:Label>
    <br />
    <asp:GridView  ID="QuestionGridView" runat="server" 
       Heigh="200px" Width="400px">

    </asp:GridView>
    </div>
    </form>
</body>
</html>

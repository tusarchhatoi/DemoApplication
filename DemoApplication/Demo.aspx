<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="DemoApplication.Demo" %>

<%@ Register Src="~/Demo.ascx" TagName="Demo" TagPrefix="TK" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <TK:Demo runat="server"></TK:Demo>
        </div>
        <div>
            <%--<%Response.Write("Hello World"); %>--%>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name :"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblLastName" runat="server" Text="Last Name :"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="lblSalary" runat="server" Text="Salary :"></asp:Label>
            <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
            <br /><br />
            <asp:RadioButton ID="rdMale" runat="server" Text="Male" />
            <asp:RadioButton ID="rdFemale" runat="server" Text="Female" />
            <br /><br />
            <asp:CheckBox ID="chkASP" runat="server" Text="ASP.Net" />
            <asp:CheckBox ID="chkC" runat="server" Text="C#" />
        </div>
        <p style="margin-left: 160px">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        </p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="DemoApplication.Demo" %>

<%@ Register Src="~/Demo.ascx" TagName="Demo" TagPrefix="TK" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo Application</title>
    <link href="assets/plugins/bootstrap-4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/styles/Style.css" rel="stylesheet" />
</head>
<body>
    <div class="bs-example">
        <form id="form1" class="form-horizontal" runat="server">
           <%-- <div>
                <TK:Demo runat="server"></TK:Demo>
            </div>--%>
            <%--<%Response.Write("Hello World"); %>--%>
            <fieldset>
                <legend class="scheduler-border">Employee Information</legend>
                    <div class="row">
                        <section class="col-8">
                            <label class="col-3" for="exampleInputFN1">First Name <span style="color: red;">*</span></label>
                            <label class="input col-5">
                                <asp:TextBox ID="txtFirstName" class="form-control" runat="server" placeholder="First Name" MaxLength="50"></asp:TextBox>
                            </label>
                        </section>
                </div>
                    <div class="row">
                        <section class="col col-8">
                            <label class="col-3" for="exampleInputFN1">Last Name <span style="color: red;">*</span></label>
                            <label class="input col-5">
                                <asp:TextBox ID="txtLastName" class="form-control" runat="server" placeholder="Last Name" MaxLength="50"></asp:TextBox>
                            </label>
                        </section>
                    </div>
                    <div class="row">
                        <section class="col col-8">
                            <label class="col-3" for="exampleInputFN1">Salary <span style="color: red;">*</span></label>
                            <label class="input col-5">
                                <asp:TextBox ID="txtSalary" class="form-control" runat="server" placeholder="Salary Amount" MaxLength="50"></asp:TextBox>
                            </label>
                        </section>
                    </div>
            </fieldset>
            <p style="margin-left: 160px">
                <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary" OnClick="btnSubmit_Click" Text="Submit" />
            </p>
        </form>
    </div>
</body>
<script src="assets/plugins/bootstrap-4.0.0/js/jQuery%20v3.3.1.js"></script>
<script src="assets/plugins/bootstrap-4.0.0/js/bootstrap.min.js"></script>
</html>

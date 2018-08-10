<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="DemoApplication.EmployeeInfo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.ico" />
    <title>Employee Info</title>
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/styles/Style.css" rel="stylesheet" />
    <script src="assets/plugins/bootstrap/js/jquery-1.10.2.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
    <script src="assets/plugins/back2top/back-to-top.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".datepicker").datepicker({
                format: "dd/mm/yyyy"
            }).on('changeDate', function () {
                $(this).datepicker('hide');
            });

            $("#<%=FileUpload1.ClientID %>").change(function () {
                readURL(this);
            });

            $("#<%=TxtFirstName.ClientID %>").change(function () {
                bindFname(this);
            });
        });


        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#image_upload_preview').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        function bindFname(input) {

            var fname = $("#<%=TxtFirstName.ClientID%>").val();
            $("#<%=LblFName.ClientID%>").html(fname);
        }

    </script>
</head>
<body>
    <form id="EmployeeForm" runat="server">
        <div class="container">
            <h2 style="text-align: center;">Demo Application</h2>
            <%
                Response.Write("Version: " + System.Environment.Version.ToString());
            %>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="text-align: center;">Employee Registration Form</div>
                        <div class="panel-body">
                            <fieldset>
                                <%--                                <div class="form-group required">
                                    <label class="control-label">Required Field</label>
                                    ...
                                </div>--%>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-camera fa-fw"></i></span>
                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                        <asp:TextBox ID="TxtFirstName" class="form-control" runat="server" placeholder="First Name" MaxLength="50"></asp:TextBox>
                                        <%--</div>--%>

                                        <%-- </div>
                                <div class="form-group">--%>
                                        <%--<div class="input-group">--%>
                                        <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                        <asp:TextBox ID="TxtLastName" class="form-control required" runat="server" placeholder="Last Name" MaxLength="50"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#ee9393"
                                        ErrorMessage="Enter First Name" ControlToValidate="TxtFirstName" ValidationGroup="demo" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="#ee9393"
                                        ErrorMessage="Enter Last Name" ControlToValidate="TxtLastName" ValidationGroup="demo" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope fa-fw"></i></span>
                                        <asp:TextBox ID="TxtEmail" class="form-control" runat="server" placeholder="Email ID" MaxLength="50"></asp:TextBox>
                                        <%-- </div>--%>
                                        <%--</div>
                                <div class="form-group required">
                                    <div class="input-group">--%>
                                        <span class="input-group-addon"><i class="fa fa-phone fa-fw"></i></span>
                                        <asp:TextBox ID="TxtMobile" class="form-control" runat="server" placeholder="Mobile Number" MaxLength="10"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="#ee9393"
                                        ErrorMessage="Enter Email &nbsp" ControlToValidate="TxtEmail" ValidationGroup="demo" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="#ee9393"
                                        ErrorMessage="Enter Mobile" ControlToValidate="TxtMobile" ValidationGroup="demo" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group required">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
                                        <asp:TextBox ID="TxtDOB" class="form-control datepicker" runat="server" placeholder="DD/MM/YYYY" data-date-end-date="0d"></asp:TextBox>
                                        <%-- </div>--%>

                                        <%--</div>
                                <div class="form-group">
                                    <div class="input-group">--%>
                                        <span class="input-group-addon"><i class="fa fa-graduation-cap fa-fw"></i></span>
                                        <asp:DropDownList ID="DrdQualification" class="form-control" runat="server">
                                            <asp:ListItem Text="Highest Qualification" Value="Select" Selected="True" />
                                            <asp:ListItem Text="BE" Value="BE" />
                                            <asp:ListItem Text="BTech" Value="BTech" />
                                            <asp:ListItem Text="MCA" Value="MCA" />
                                        </asp:DropDownList>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="#ee9393" Display="Dynamic"
                                        ErrorMessage="Select DOB" ControlToValidate="TxtDOB" ValidationGroup="demo">
                                    </asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DrdQualification" Display="Dynamic"
                                        ErrorMessage="Select One Qualification" ForeColor="#ee9393" InitialValue="Select" ValidationGroup="demo"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <asp:Label runat="server" Text="Gender :"></asp:Label>
                                    </div>
                                    <div class="col-xs-8">
                                        <asp:RadioButtonList ID="RdoGender" CssClass="FormatRadioButtonList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                            <asp:ListItem Text="Male" Value="Male" Selected="True" />
                                            <asp:ListItem Text="Female" Value="Female" />
                                            <asp:ListItem Text="Others" Value="Others" />
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <br />
                                <div class="form-group">
                                    <div class="col-xs-4">
                                        <asp:Label runat="server" Text="Language Known :"></asp:Label>
                                    </div>
                                    <div class="col-xs-8">
                                        <asp:CheckBoxList ID="ChkLanguage" runat="server" CssClass="FormatRadioButtonList">
                                            <asp:ListItem Text="English" Value="English" />
                                            <asp:ListItem Text="Hindi" Value="Hindi" />
                                            <asp:ListItem Text="Kannada" Value="Kannad" />
                                            <asp:ListItem Text="Odia" Value="Odia" />
                                            <asp:ListItem Text="Telugu" Value="Telugu" />
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                        <div class="panel-footer" style="text-align: right;">
                            <asp:Button ID="BtnSave" runat="server" Text="Save" CssClass="btn btn-primary" ValidationGroup="demo" />
                            <asp:Button ID="BtnReset" runat="server" Text="Reset" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="text-align: center;">Preview Form</div>
                        <div class="panel-body">
                            <fieldset>
                                <img id="image_upload_preview" src="http://placehold.it/100x100" alt="your image" class="center-block" />
                                <div class="table-responsive">
                                    <table class="table table-condensed">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <strong>
                                                        <asp:Label runat="server" class="text-success" Text="First Name"></asp:Label></strong></td>
                                                <td>
                                                    <asp:Label ID="LblFName" class="text-primary" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text="Last Name"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="LblLName" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text="Email"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="LblEmail" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text="Mobile"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text="Date Of Birth"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="LblDOB" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text="Age"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="LblAge" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text="Gender"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="LblGender" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text="Languages"></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

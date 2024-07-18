<% @Page Language = "C#" AutoEventWireup = "true" CodeBehind = "inputvalidation.aspx.cs" Inherits = "school_management_portal.inputvalidation" %>
<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title>InputValidation</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
             <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                 integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                 crossorigin="anonymous"></script>
             <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                 integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
                 crossorigin="anonymous"></script>
             <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                 integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
                 crossorigin="anonymous"></script>    
        </head>
        <body>

            <form id="form1" runat="server">

                <div >
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                    &nbsp;&nbsp;

                    <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" />
                    &nbsp;
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="UrgentReqEmail" Font-Bold="True" />

                    <br />

                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" Font-Size="Large" Height="16px" OnTextChanged="TxtPassword_TextChanged" TextMode="Password" Width="123px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" EnableClientScript="False" ErrorMessage="Password is Missing" Font-Size="X-Large" ForeColor="#660066">Password is Invalid</asp:RequiredFieldValidator>
                    &nbsp;

                </div>
                <br />
                <asp:Label ID="LblMsg" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Button ID="RegisterUser" runat="server" OnClick="Button1_Click" Text="Login12" Height="40px" Width="108px" />
            </form>

        </body>
    </html>

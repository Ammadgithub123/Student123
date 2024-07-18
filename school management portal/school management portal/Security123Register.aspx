<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Security123Register.aspx.cs" Inherits="school_management_portal.Security123" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AUTHENTICATION.</title>
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

            <div class="container" style="font-size:30px;">
            <div class="box box1">
                <p class="jumbotron text-center" style="background-color: yellow" >SIGNUP PAGE .</p>
            </div>     
            </div>  

            <div class="table table-bordered text-center table-hover my-4" style="background-color: gray; height: 369px;">
                <h1 style="font-size: 35px"> REGISTER.</h1>
                <hr />
                    <p>
                    <asp:Literal runat="server" ID="AZ" />
                 </p> 
                <div style="margin-bottom:10px">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="StudentName" style="font-size:large">Student name</asp:Label>
                    <div>
                        <asp:TextBox ID="StudentName" runat="server" BackColor="#FF5050" Font-Bold="True" Font-Size="X-Large" Height="39px" Width="243px" OnTextChanged="UserName_TextChanged" />
                    </div>
                </div>
                <div style="margin-bottom:10px">
                    <asp:Label ID="Password" runat="server" AssociatedControlID="Password" style="font-size:large">Password</asp:Label>
                    <div>
                        <asp:TextBox ID="TxtPassword" runat="server" BackColor="#FFCC00" Font-Bold="True" Font-Size="X-Large" Height="39px" TextMode="Password" Width="246px" />
                    </div>
                </div>
                <div style="margin-bottom:10px">
                    <div>
                    </div>
                </div>
                <div>
                    <div>
                        <asp:Button ID="UserCreate" runat="server" BackColor="#66CCFF" Font-Bold="True" Font-Size="X-Large" Height="51px" OnClick="CreateUser_Click" Text="Register" />
                    </div>
                </div>
            </div>

        </form>
</body>
</html>







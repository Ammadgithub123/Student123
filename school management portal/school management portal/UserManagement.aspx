<% @Page Language = "C#" AutoEventWireup = "true" CodeBehind = "UserManagement.aspx.cs" Inherits = "school_management_portal.UserManagement" %>

<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title>User Management</title>
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

        <body class="container table table-bordered table-hover my-5" style="background-color: cyan;">

            <form id="form1" runat="server" class="jumbotron text-center">
                <div class="container table table-bordered table-hover my-5" style="background-color: olive;">
                    <h1>User Management</h1>

                </div >
                <asp:GridView ID="gvAZ" runat="server"  class="container jumbotron text-center table table-bordered table-hover my-5" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="553px" Height="200px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString75 %>" DeleteCommand="DELETE FROM [Usermanagement] WHERE [UserID] = @original_UserID AND [Username] = @original_Username AND [Password12] = @original_Password12 AND (([RoleID] = @original_RoleID) OR ([RoleID] IS NULL AND @original_RoleID IS NULL))" InsertCommand="INSERT INTO [Usermanagement] ([Username], [Password12], [RoleID]) VALUES (@Username, @Password12, @RoleID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString75.ProviderName %>" SelectCommand="SELECT * FROM [Usermanagement]" UpdateCommand="UPDATE [Usermanagement] SET [Username] = @Username, [Password12] = @Password12, [RoleID] = @RoleID WHERE [UserID] = @original_UserID AND [Username] = @original_Username AND [Password12] = @original_Password12 AND (([RoleID] = @original_RoleID) OR ([RoleID] IS NULL AND @original_RoleID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Password12" Type="String" />
                        <asp:Parameter Name="original_RoleID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Password12" Type="String" />
                        <asp:Parameter Name="RoleID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Password12" Type="String" />
                        <asp:Parameter Name="RoleID" Type="Int32" />
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Password12" Type="String" />
                        <asp:Parameter Name="original_RoleID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                &nbsp;
                <asp:TextBox ID="TxtUsername" runat="server" ForeColor="#CCFFFF"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="IDRole"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtRoleID" runat="server" OnTextChanged="TxtRoleID_TextChanged"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" style="background-color: yellow;" Height="51px" class="container table table-bordered table-hover my-5" OnClick="Button1_Click" Text="Usermanagement added" Width="163px" />


            </form>
        </body>
    </html>

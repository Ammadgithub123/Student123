<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleBasedAccess.aspx.cs" Inherits="school_management_portal.RoleBasedAccess" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>RoleBasedAccess</title>
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

        <body class="jumbotron text-center" style="background-color: cadetblue; color:black">
            <form id="form1" runat="server" >
                <div >
                    <h1 class="jumbotron my-2">&nbsp; RoleBasedAccess</h1>
                    <asp:GridView ID="FFF" runat="server" class="container jumbotron text-center table table-bordered table-hover my-5" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="186px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="445px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString86 %>" DeleteCommand="DELETE FROM [RoleBasedAccess] WHERE [RoleID] = @original_RoleID AND [RoleName] = @original_RoleName" InsertCommand="INSERT INTO [RoleBasedAccess] ([RoleName]) VALUES (@RoleName)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString86.ProviderName %>" SelectCommand="SELECT * FROM [RoleBasedAccess]" UpdateCommand="UPDATE [RoleBasedAccess] SET [RoleName] = @RoleName WHERE [RoleID] = @original_RoleID AND [RoleName] = @original_RoleName">
                        <DeleteParameters>
                            <asp:Parameter Name="original_RoleID" Type="Int32" />
                            <asp:Parameter Name="original_RoleName" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="RoleName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="RoleName" Type="String" />
                            <asp:Parameter Name="original_RoleID" Type="Int32" />
                            <asp:Parameter Name="original_RoleName" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    RoleName&nbsp;<asp:TextBox ID="TxtRoleName" runat="server" Height="32px" Width="149px"></asp:TextBox>

                </div>
                <br />
                <p>
                    <asp:Button ID="Button2" runat="server" BackColor="#FFFF66" Font-Bold="True" Font-Size="X-Large" OnClick="Button1_Click" style="height: 43px" Text="Roles is Assigned" />
                </p>

            </form>
       </body>
</html>

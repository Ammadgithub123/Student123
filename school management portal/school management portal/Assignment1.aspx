<% @Page Language = "C#" AutoEventWireup = "true" CodeBehind = "Assignment1.aspx.cs" Inherits = "school_management_portal.Assignment1" %>

<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title>Assignment Management.</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
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

            <form id="form1" runat="server" class="jumbotron text-center" width="144px" style="background-color: orange; color:black">
                <div class="jumbotron text-center" width="144px" style="background-color: orange; color:black">
                    <h1>Assignments</h1>
                </div>
                <br />
                <asp:GridView ID="GVAssign" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Width="630px" Height="165px" OnSelectedIndexChanged="GVAssign_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString69 %>" DeleteCommand="DELETE FROM [Assignments2] WHERE [AssignmentID] = @original_AssignmentID AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Details] = @original_Details) OR ([Details] IS NULL AND @original_Details IS NULL)) AND (([DueDate1] = @original_DueDate1) OR ([DueDate1] IS NULL AND @original_DueDate1 IS NULL))" InsertCommand="INSERT INTO [Assignments2] ([TeacherID], [Title], [Details], [DueDate1]) VALUES (@TeacherID, @Title, @Details, @DueDate1)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString69.ProviderName %>" SelectCommand="SELECT * FROM [Assignments2]" UpdateCommand="UPDATE [Assignments2] SET [TeacherID] = @TeacherID, [Title] = @Title, [Details] = @Details, [DueDate1] = @DueDate1 WHERE [AssignmentID] = @original_AssignmentID AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Details] = @original_Details) OR ([Details] IS NULL AND @original_Details IS NULL)) AND (([DueDate1] = @original_DueDate1) OR ([DueDate1] IS NULL AND @original_DueDate1 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_AssignmentID" Type="Int32" />
                        <asp:Parameter Name="original_TeacherID" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Details" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DueDate1" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TeacherID" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Details" Type="String" />
                        <asp:Parameter DbType="Date" Name="DueDate1" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TeacherID" Type="Int32" />
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Details" Type="String" />
                        <asp:Parameter DbType="Date" Name="DueDate1" />
                        <asp:Parameter Name="original_AssignmentID" Type="Int32" />
                        <asp:Parameter Name="original_TeacherID" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_Details" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_DueDate1" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label4" runat="server" Text="TeacherID"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TxtTeacherID" runat="server"></asp:TextBox>
                <br />
                &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox>
                <br />
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Details"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtDetails" runat="server"></asp:TextBox>
                <br />
                &nbsp;<asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtDate" runat="server" OnTextChanged="TxtDate_TextChanged"></asp:TextBox>

                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="44px" Text="Add Assignments" Width="151px" OnClick="Button1_Click1" Font-Bold="True" />

            </form>
        </body>
    </html>

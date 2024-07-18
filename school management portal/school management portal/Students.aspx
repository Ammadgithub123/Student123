<% @Page Language = "C#" AutoEventWireup = "true" CodeBehind = "Students.aspx.cs" Inherits = "school_management_portal.Students" %>

<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title>School Management Portal.</title>
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
                      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </head>
        <body>

            <form id="form1" runat="server">
                <h1 class="table-responsive text-center" style="background-color: olive;" >Student Management Portal.</h1>
             
                <div class="table-responsive text-center" style="background-color: deeppink; color:blue">
                    <asp:GridView ID="GVStudents" runat="server" class="container jumbotron text-center table table-bordered table-hover my-5" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Height="64px" Width="799px" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" ShowEditButton="True" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <sortedascendingcellstyle backcolor="#FFF1D4" />
                        <sortedascendingheaderstyle backcolor="#B95C30" />
                        <sorteddescendingcellstyle backcolor="#F1E5CE" />
                        <sorteddescendingheaderstyle backcolor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString46 %>" ProviderName="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString46.ProviderName %>" SelectCommand="SELECT * FROM [Student67]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Student67] WHERE [StudentID] = @original_StudentID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" InsertCommand="INSERT INTO [Student67] ([FirstName], [LastName], [DateOfBirth], [Email]) VALUES (@FirstName, @LastName, @DateOfBirth, @Email)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Student67] SET [FirstName] = @FirstName, [LastName] = @LastName, [DateOfBirth] = @DateOfBirth, [Email] = @Email WHERE [StudentID] = @original_StudentID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_StudentID" Type="Int32" />
                            <asp:Parameter Name="original_FirstName" Type="String" />
                            <asp:Parameter Name="original_LastName" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_DateOfBirth" />
                            <asp:Parameter Name="original_Email" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                            <asp:Parameter Name="Email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="original_StudentID" Type="Int32" />
                            <asp:Parameter Name="original_FirstName" Type="String" />
                            <asp:Parameter Name="original_LastName" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_DateOfBirth" />
                            <asp:Parameter Name="original_Email" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />

                    First Name:&nbsp;
                    <asp:TextBox ID="TxtFirstName" runat="server" Width="141px" OnTextChanged="TxtFirstName_TextChanged" />
                    <br />
                    Last Name:&nbsp;
                    <asp:TextBox ID="TxtLastName" runat="server" Width="135px" />
                    <br />
                    Date of Birth:&nbsp;
                    <asp:TextBox ID="TxtDOB" runat="server" Text='<%# Bind("DateOfBirth") %>' Width="139px" />
                    <br />
                    Email:&nbsp; <asp:TextBox ID="TxtBoxEmail" runat="server" />
                    <br />
                    <br />        
                    <asp:Button class="table table-bordered table-hover my-4" style="background-color: darkcyan;" ID="ButtonInsert" runat="server" CommandName="Create New Button" Text="Student Added Successfully" Height="43px" Width="211px" OnClick="ButtonInsert_Click" />
                    <br />
                    <asp:Button class="table table-bordered table-hover my-4" style="background-color: darkcyan;" ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="Student Updated Successfully" Width="207px" />
                    <br />
                   
                    <asp:Button class="table table-bordered table-hover my-4" style="background-color: darkcyan;" ID="Button2" runat="server" Height="36px" OnClick="Button2_Click" Text="Student Deleted Succesfully" Width="212px" />
                </div>
            </form>

   </body>
</html>
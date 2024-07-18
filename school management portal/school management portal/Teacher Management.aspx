<% @Page Language = "C#" AutoEventWireup = "true" CodeBehind = "Teacher Management.aspx.cs" Inherits = "school_management_portal.Teacher_Management" %>

<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title>Teacher Management.</title>
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
                <h1 class="jumbotron text-center" style="background-color: yellow" >Teacher Managment.</h1>
                <div class="table-responsive text-center" style="background-color: cadetblue; color:blue" id="TeachersGV">
                    <br />
                    <asp:GridView ID="gvTeachers" runat="server" class="container jumbotron text-center table table-bordered table-hover my-5" BackColor ="White" BorderColor="White" BorderWidth="2px" CellPadding="3" Height="208px" Width="767px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1" GridLines="None" BorderStyle="Ridge" CellSpacing="1" AutoGenerateColumns="False" DataKeyNames="TeacherID" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                            <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" InsertVisible="False" ReadOnly="True" SortExpression="TeacherID" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString49 %>" ProviderName="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString49.ProviderName %>" SelectCommand="SELECT * FROM [Teacher1]"></asp:SqlDataSource>

                </div>

                <div class="table-responsive text-center" style="background-color: blue; color:black">
                    <asp:Label ID="Label1" runat="server" Text="TeacherID"></asp:Label>
                    &nbsp;<asp:TextBox ID="TxtTeacherID" runat="server" Height="29px" Width="149px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="FirstName"></asp:Label>
                    &nbsp;<asp:TextBox ID="TxtFirstName" runat="server" Height="29px" Width="149px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="LastName"></asp:Label>
                    &nbsp;<asp:TextBox ID="TxtLastName" runat="server" Height="29px" Width="149px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TxtEmail" runat="server" Height="29px" Width="149px" CssClass="offset-sm-0"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="PhoneNo"></asp:Label>
                    &nbsp;<asp:TextBox ID="TxtPhone" runat="server" Height="29px" Width="149px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Add Teachers" Width="138px" Height="34px" OnClick="Button1_Click" BackColor="#FF9966" />
                </div>
            </form>

    </body>
 </html>

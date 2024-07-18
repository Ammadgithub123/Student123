<% @Page Language = "C#" AutoEventWireup = "true" CodeBehind = "Reporting.aspx.cs" Inherits = "school_management_portal.Reporting" %>

<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title>Reporting</title>
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

       <body class="jumbotron text-center" style="background-color: cadetblue;" >

            <form id="form1" runat="server" class="jumbotron text-center">
                <div>

                    <h1 class="jumbotron text-center">Reporting</h1>
                    <br />
                    <asp:GridView ID="gvAZ1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="601px" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvAZ_SelectedIndexChanged">
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString81 %>" DeleteCommand="DELETE FROM [reporting] WHERE [ReportID] = @original_ReportID AND [ReportName] = @original_ReportName AND [ReportData] = @original_ReportData" InsertCommand="INSERT INTO [reporting] ([ReportName], [ReportData]) VALUES (@ReportName, @ReportData)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString81.ProviderName %>" SelectCommand="SELECT * FROM [reporting]" UpdateCommand="UPDATE [reporting] SET [ReportName] = @ReportName, [ReportData] = @ReportData WHERE [ReportID] = @original_ReportID AND [ReportName] = @original_ReportName AND [ReportData] = @original_ReportData">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ReportID" Type="Int32" />
                            <asp:Parameter Name="original_ReportName" Type="String" />
                            <asp:Parameter Name="original_ReportData" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ReportName" Type="String" />
                            <asp:Parameter Name="ReportData" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ReportName" Type="String" />
                            <asp:Parameter Name="ReportData" Type="String" />
                            <asp:Parameter Name="original_ReportID" Type="Int32" />
                            <asp:Parameter Name="original_ReportName" Type="String" />
                            <asp:Parameter Name="original_ReportData" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="ReportName"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="TxtReportName" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="ReportData"></asp:Label>
                    &nbsp;<asp:TextBox ID="TxtReportData" runat="server"></asp:TextBox>

                    <br />

                    <br />

                </div>
                <asp:Button ID="Button1" runat="server" style="background-color:deeppink" OnClick="Button1_Click" Text="Report Added" Height="46px" Width="149px" ForeColor="Black" />
            </form>

        </body>
    </html>

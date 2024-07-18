<% @Page Language = "C#" AutoEventWireup = "true" CodeBehind = "Schedule1.aspx.cs" Inherits = "school_management_portal.Schedule1" %>

<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <title>Schedule.</title>
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

                <div class="jumbotron text-center" style="background-color: cadetblue; color:black">
                    <h1 style="width:102%; font-size:50px;">Schedule</h1>
                    <asp:Label ID="Label1" runat="server" Text="Teacher Schedule" Font-Bold="True"></asp:Label>

                    <asp:GridView ID="GV23" runat="server" class="container jumbotron text-center table table-bordered table-hover my-5" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="595px" OnSelectedIndexChanged="azgvBind_SelectedIndexChanged" Font-Bold="True">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString82 %>" DeleteCommand="DELETE FROM [Schedules1] WHERE [ScheduleID] = @original_ScheduleID AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL)) AND (([DayOfWeek] = @original_DayOfWeek) OR ([DayOfWeek] IS NULL AND @original_DayOfWeek IS NULL)) AND (([TimeSlot] = @original_TimeSlot) OR ([TimeSlot] IS NULL AND @original_TimeSlot IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))" InsertCommand="INSERT INTO [Schedules1] ([TeacherID], [DayOfWeek], [TimeSlot], [Subject]) VALUES (@TeacherID, @DayOfWeek, @TimeSlot, @Subject)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SchoolManagementDB5ConnectionString82.ProviderName %>" SelectCommand="SELECT * FROM [Schedules1]" UpdateCommand="UPDATE [Schedules1] SET [TeacherID] = @TeacherID, [DayOfWeek] = @DayOfWeek, [TimeSlot] = @TimeSlot, [Subject] = @Subject WHERE [ScheduleID] = @original_ScheduleID AND (([TeacherID] = @original_TeacherID) OR ([TeacherID] IS NULL AND @original_TeacherID IS NULL)) AND (([DayOfWeek] = @original_DayOfWeek) OR ([DayOfWeek] IS NULL AND @original_DayOfWeek IS NULL)) AND (([TimeSlot] = @original_TimeSlot) OR ([TimeSlot] IS NULL AND @original_TimeSlot IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ScheduleID" Type="Int32" />
                            <asp:Parameter Name="original_TeacherID" Type="Int32" />
                            <asp:Parameter Name="original_DayOfWeek" Type="String" />
                            <asp:Parameter Name="original_TimeSlot" Type="String" />
                            <asp:Parameter Name="original_Subject" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="TeacherID" Type="Int32" />
                            <asp:Parameter Name="DayOfWeek" Type="String" />
                            <asp:Parameter Name="TimeSlot" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TeacherID" Type="Int32" />
                            <asp:Parameter Name="DayOfWeek" Type="String" />
                            <asp:Parameter Name="TimeSlot" Type="String" />
                            <asp:Parameter Name="Subject" Type="String" />
                            <asp:Parameter Name="original_ScheduleID" Type="Int32" />
                            <asp:Parameter Name="original_TeacherID" Type="Int32" />
                            <asp:Parameter Name="original_DayOfWeek" Type="String" />
                            <asp:Parameter Name="original_TimeSlot" Type="String" />
                            <asp:Parameter Name="original_Subject" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <table class="table table-bordered table-light table-hover">
                        <tr>
                            <td class="auto-style3">&nbsp;&nbsp;TeacherID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtTeacherID" runat="server" BackColor="#CC0066" Font-Size="X-Large" Width="198px"></asp:TextBox>
                                &nbsp;</td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;&nbsp;&nbsp; Day Week&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TxtWeek" runat="server" BackColor="#CCFF33" Font-Size="X-Large" Width="198px"></asp:TextBox>
                            </td>
                            <td class="auto-style11"></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp; TimeSlot&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TxtSlot" runat="server" BackColor="#FF9900" Font-Size="X-Large" Width="198px" ForeColor="Fuchsia"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp; &nbsp;Subjects&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:TextBox ID="TxtSubject" runat="server" BackColor="#993399" Font-Size="X-Large" Width="198px"></asp:TextBox>
                                &nbsp;</td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                                <asp:Button ID="Button1" runat="server" Height="63px" Text="Add Schedule" Width="194px" OnClick="Button1_Click" Font-Bold="True" Font-Size="X-Large" ForeColor="White" BackColor="#660033" />

                                &nbsp;</td>
                            <td class="auto-style6"></td>
                        </tr>
                    </table>
                    <br />
                </div>

            </form>
</body>
</html>

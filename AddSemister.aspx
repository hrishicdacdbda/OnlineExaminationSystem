<%@ Page Title="" Language="C#" MasterPageFile="~/AdministerMasterPage.master" AutoEventWireup="true" CodeFile="AddSemister.aspx.cs" Inherits="AddSemester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Semester</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Main Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseName" DataValueField="courseID" DataMember="DefaultView" ToolTip="--Select Course--">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" DeleteCommand="DELETE FROM [CourseDetail] WHERE [courseID] = @courseID" InsertCommand="INSERT INTO [CourseDetail] ([courseName]) VALUES (@courseName)" SelectCommand="SELECT * FROM [CourseDetail]" UpdateCommand="UPDATE [CourseDetail] SET [courseName] = @courseName WHERE [courseID] = @courseID">
                        <DeleteParameters>
                            <asp:Parameter Name="courseID" Type="Int64" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="courseName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="courseName" Type="String" />
                            <asp:Parameter Name="courseID" Type="Int64" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
             <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Semester"></asp:Label>
                <div class="col-md-3">
                   <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" >
                        <asp:ListItem Value="Select Year &amp; Semester"></asp:ListItem>
                    <asp:ListItem Value="1st Year 1st Semseter"></asp:ListItem>
                    <asp:ListItem Value="1st Year 2nd Semseter"></asp:ListItem>
                    <asp:ListItem Value="2nd Year 3rd Semseter"></asp:ListItem>
                    <asp:ListItem Value="2nd Year 4th Semseter"></asp:ListItem>
                    <asp:ListItem Value="3rd Year 5th Semseter"></asp:ListItem>
                    <asp:ListItem Value="3rd Year 6th Semseter"></asp:ListItem>
                    <asp:ListItem Value="4th Year 7th Semseter"></asp:ListItem>
                    <asp:ListItem Value="4th Year 8th Semseter"></asp:ListItem>
                   </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="DropDownList1" InitialValue="0"></asp:RequiredFieldValidator>

                                  </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" DeleteCommand="DELETE FROM [Semister] WHERE [SemisterID] = @SemisterID" InsertCommand="INSERT INTO [Semister] ([Semister], [Course_ID]) VALUES (@Semister, @Course_ID)" SelectCommand="SELECT * FROM [Semister]" UpdateCommand="UPDATE [Semister] SET [Semister] = @Semister, [Course_ID] = @Course_ID WHERE [SemisterID] = @SemisterID">
                        <DeleteParameters>
                            <asp:Parameter Name="SemisterID" Type="Int64" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Semister" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="ddlCategory" Name="Course_ID" PropertyName="SelectedValue" Type="Int64" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Semister" Type="String" />
                            <asp:Parameter Name="Course_ID" Type="Int64" />
                            <asp:Parameter Name="SemisterID" Type="Int64" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                </div>
            </div>
        </div>
          <h1>Semisters</h1>
        <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Sub Categories</div>

            <asp:Repeater ID="rptrCategory" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Course</th>
                                <th>Semester</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("SemisterID") %></th>
                        <td><%# Eval("courseName") %></td>
                        <td><%# Eval("Semister") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-1.9.1.js"></script>
</asp:Content>


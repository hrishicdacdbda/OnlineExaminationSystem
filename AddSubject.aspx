<%@ Page Title="" Language="C#" MasterPageFile="~/AdministerMasterPage.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="AddSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container">
        <div class="form-horizontal">
            <h2>Add Subjects</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Main Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCourse"  CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseName" DataValueField="courseID" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" SelectCommand="SELECT * FROM [CourseDetail]"></asp:SqlDataSource>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlCourse" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>
             <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Semester"></asp:Label>
                 
             
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSemister" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="Semister" DataValueField="SemisterID" AutoPostBack="True">
                 </asp:DropDownList>
                    
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" SelectCommand="SELECT * FROM [Semister] WHERE ([Course_ID] = @Course_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlCourse" Name="Course_ID" PropertyName="SelectedValue" Type="Int64" />
                            </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlSemister" InitialValue="0"></asp:RequiredFieldValidator>

                                  </div>
            </div>
            <div class="form-group">
                  <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Name of Subject:"></asp:Label>
              
                  <div class="col-md-3">
                    <asp:TextBox ID="SubName" CssClass="form-control" runat="server"></asp:TextBox>
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" DeleteCommand="DELETE FROM [Subjects] WHERE [SubjectID] = @SubjectID" InsertCommand="INSERT INTO [Subjects] ([Subject], [Sem_Id], [Co_Id]) VALUES (@Subject, @Sem_Id, @Co_Id)" SelectCommand="SELECT * FROM [Subjects]" UpdateCommand="UPDATE [Subjects] SET [Subject] = @Subject, [Sem_Id] = @Sem_Id, [Co_Id] = @Co_Id WHERE [SubjectID] = @SubjectID">
                          <DeleteParameters>
                              <asp:Parameter Name="SubjectID" Type="Int64" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:ControlParameter ControlID="SubName" Name="Subject" PropertyName="Text" Type="String" />
                              <asp:ControlParameter ControlID="ddlSemister" Name="Sem_Id" PropertyName="SelectedValue" Type="Int64" />
                              <asp:ControlParameter ControlID="ddlCourse" Name="Co_Id" PropertyName="SelectedValue" Type="Int64" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="Subject" Type="String" />
                              <asp:Parameter Name="Sem_Id" Type="Int64" />
                              <asp:Parameter Name="Co_Id" Type="Int64" />
                              <asp:Parameter Name="SubjectID" Type="Int64" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                      <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="SubName"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                </div>
            </div>
        </div> 

           <div class="form-horizontal">

           </div>
     </div>
          <h1>Subjects</h1>
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
                                <th>Subject</th>
                                <th>Semister</th>
                                <th>Course</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                       <th><%# Eval("SubjectID") %></th>
                        <td><%# Eval("Subject") %></td>
                        <td><%# Eval("Semister") %></td>
                        <td><%# Eval("courseName") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater> 
        </div> 
    
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-1.9.1.js"></script>

</asp:Content>


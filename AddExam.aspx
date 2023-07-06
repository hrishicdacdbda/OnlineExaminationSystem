<%@ Page Title="" Language="C#" MasterPageFile="~/AdministerMasterPage.master" AutoEventWireup="true" CodeFile="AddExam.aspx.cs" Inherits="AddExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
    
     
    
    
    
    







   
  

    <br />

    <br />

    <br />

    <br />

    <br />

    <br />
    <br />

    <br />
    <br />
      <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="courseName" DataValueField="courseID">
    </asp:DropDownList>
    







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
    <br />
    <br />
    <br />
    <asp:DropDownList ID="ddlSemister" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Semister" DataValueField="SemisterID">
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" SelectCommand="SELECT * FROM [Semister] WHERE ([Course_ID] = @Course_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCourse" Name="Course_ID" PropertyName="SelectedValue" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DropDownList ID="ddlSubject" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Subject" DataValueField="SubjectID">
    </asp:DropDownList>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" SelectCommand="SELECT * FROM [Subjects] WHERE ([Sem_Id] = @Sem_Id)" DeleteCommand="DELETE FROM [Subjects] WHERE [SubjectID] = @SubjectID" InsertCommand="INSERT INTO [Subjects] ([Subject], [Sem_Id], [Co_Id]) VALUES (@Subject, @Sem_Id, @Co_Id)" UpdateCommand="UPDATE [Subjects] SET [Subject] = @Subject, [Sem_Id] = @Sem_Id, [Co_Id] = @Co_Id WHERE [SubjectID] = @SubjectID">
        <DeleteParameters>
            <asp:Parameter Name="SubjectID" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Sem_Id" Type="Int64" />
            <asp:Parameter Name="Co_Id" Type="Int64" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSemister" Name="Sem_Id" PropertyName="SelectedValue" Type="Int64" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Subject" Type="String" />
            <asp:Parameter Name="Sem_Id" Type="Int64" />
            <asp:Parameter Name="Co_Id" Type="Int64" />
            <asp:Parameter Name="SubjectID" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource> 
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" DeleteCommand="DELETE FROM [AddExam] WHERE [ExamID] = @ExamID" InsertCommand="INSERT INTO AddExam(SubjectID, SemesterID, CourseID) VALUES (@SubjectID, @SemesterID, @CourseID)" SelectCommand="SELECT * FROM [AddExam]" UpdateCommand="UPDATE [AddExam] SET [SubjectID] = @SubjectID, [SemesterID] = @SemesterID, [CourseID] = @CourseID, [Date_Time] = @Date_Time WHERE [ExamID] = @ExamID">
        <DeleteParameters>
            <asp:Parameter Name="ExamID" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="ddlSubject" Name="SubjectID" PropertyName="SelectedValue" Type="Int64" />
            <asp:ControlParameter ControlID="ddlSemister" Name="SemesterID" PropertyName="SelectedValue" Type="Int64" />
            <asp:ControlParameter ControlID="ddlCourse" Name="CourseID" PropertyName="SelectedValue" Type="Int64" />
            <asp:Parameter Name="Date_Time" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SubjectID" Type="Int64" />
            <asp:Parameter Name="SemesterID" Type="Int64" />
            <asp:Parameter Name="CourseID" Type="Int64" />
            <asp:Parameter Name="Date_Time" Type="String" />
            <asp:Parameter Name="ExamID" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="AE_Button" runat="server" Text="ADD EXAM" OnClick="AE_Button_Click" />
    </asp:Content>


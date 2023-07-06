<%@ Page Title="" Language="VB" MasterPageFile="~/secondmaster.master" AutoEventWireup="false" CodeFile="ForgotPassword.aspx.vb" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="Email" runat="server" placeholder="Email" class="form-control "   height="42" TextMode="Email"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
    <asp:TextBox ID="UserName" runat="server" placeholder="UserName" class="form-control "   height="42" >
    </asp:TextBox><asp:Button ID="Button1" runat="server" Text="submit" Cssclass="btn btn-info" />
     <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
         <AlternatingItemTemplate>
             <span style="background-color: #FAFAD2;color: #284775;">Email:
             <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
             <br />
             User_Name:
             <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("User_Name") %>' />
             <br />
             Password:
             <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
             <br />
<br /></span>
         </AlternatingItemTemplate>
         <EditItemTemplate>
             <span style="background-color: #FFCC66;color: #000080;">Email:
             <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
             <br />
             User_Name:
             <asp:TextBox ID="User_NameTextBox" runat="server" Text='<%# Bind("User_Name") %>' />
             <br />
             Password:
             <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
             <br />
             <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
             <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
             <br /><br /></span>
         </EditItemTemplate>
         <EmptyDataTemplate>
             <span>No data was returned.</span>
         </EmptyDataTemplate>
         <InsertItemTemplate>
             <span style="">Email:
             <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
             <br />User_Name:
             <asp:TextBox ID="User_NameTextBox" runat="server" Text='<%# Bind("User_Name") %>' />
             <br />Password:
             <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
             <br />
             <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
             <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
             <br /><br /></span>
         </InsertItemTemplate>
         <ItemTemplate>
             <span style="background-color: #FFFBD6;color: #333333;">Email:
             <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
             <br />
             User_Name:
             <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("User_Name") %>' />
             <br />
             Password:
             <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
             <br />
<br /></span>
         </ItemTemplate>
         <LayoutTemplate>
             <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                 <span runat="server" id="itemPlaceholder" />
             </div>
             <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
             </div>
         </LayoutTemplate>
         <SelectedItemTemplate>
             <span style="background-color: #FFCC66;font-weight: bold;color: #000080;">Email:
             <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
             <br />
             User_Name:
             <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("User_Name") %>' />
             <br />
             Password:
             <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
             <br />
<br /></span>
         </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Email], [User_Name], [Password] FROM [User_Registration] WHERE (([Email] = @Email) AND ([User_Name] = @User_Name))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="UserName" Name="User_Name" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/secondmaster.master" AutoEventWireup="true" CodeFile="Login1.aspx.cs" Inherits="Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <link href="css/profile1.css" rel="stylesheet"> 
     <link href="css/profilefont.css" rel="stylesheet"> 
    
     <style>
         
        .ns1 {
            font-size: 25px;
            border-style: none none solid none;
            border-bottom-width: 1px;
            border-bottom-color: #FF3300;
            padding: 25px 25px 25px 10px;
            margin-bottom: 10px;
            outline: none;
        }
  </style>
    <center> <div class="container" style="font-family: 'Raleway', sans-serif; color : #FFF;">
	<div class="row login_box">
	    <div class="col-md-12 col-xs-12" align="center">
            <div class="line">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="White" Text="Label"></asp:Label>
            </div>
            <div class="outter">
                <asp:Image ID="Image1" runat="server" src="images/login.png" CssClass="image-circle" />

            </div>   
            <h1>Hi Guest</h1>
            <span>INDIAN</span>
	    </div>
        <div class="col-md-6 col-xs-6 follow line" align="center">
            <h3>
                 125651 <br/> <span>Register Users</span>
            </h3>
        </div>
        <div class="col-md-6 col-xs-6 follow line" align="center">
            <h3>
                 125651 <br/> <span>Register Users</span>
            </h3>
        </div>
        
        <div class="col-md-12 col-xs-12 login_control">
              <form> 
                <div class="control">
                    <div class="label">User Name</div>
                    <br />
        <asp:TextBox ID="TextBox1" CssClass="ns1" runat="server" Width="286px" required="required"></asp:TextBox>
                </div>
                
                <div class="control">
                     <div class="label">Password</div>
                  
                    <br />
        <asp:TextBox ID="TextBox2" CssClass="ns1" runat="server" Width="286px" TextMode="Password" required="required"></asp:TextBox>
                &nbsp;</div>
                <div align="center">
                     
                    <asp:Button ID="Button1" CssClass="btn btn-orange" runat="server" Text="LOG-IN" OnClick="Button1_Click"  />
                </div>
                 <div class="help-block text-right"><a href="ForgotPassword.aspx">
                                                 <asp:Label ID="Label2" runat="server" Text="." ForeColor="Red"></asp:Label>
                                                 Forget the password ?</a></div>
       </form>
                   </div>

    </div></div></center>
</asp:Content>


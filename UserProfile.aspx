<%@ Page Title="" Language="C#" MasterPageFile="~/secondmaster.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs"  Debug="true" Inherits="UserProfile" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <link href="css/profile3.css" rel="stylesheet">
   
   <link href="font/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="font/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
     <link href="css/form3.css" rel="stylesheet">
     <section>

<div class="container" style="margin-top: 30px;">
<div class="profile-head">
<div class="col-md- col-sm-4 col-xs-12">
    <asp:Image ID="Image1" runat="server" CssClass="img-responsive"/>
<h6>
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>&nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h6>
</div><!--col-md-4 col-sm-4 col-xs-12 close-->

<div class="col-md-5 col-sm-5 col-xs-12">
<h5>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
</h5>
<p>Web Designer / Develpor </p>
<ul>
    <asp:TextBox ID="TextBox1" type="hidden" runat="server"></asp:TextBox><asp:TextBox ID="TextBox2" type="hidden" runat="server"></asp:TextBox><asp:TextBox ID="TextBox3" type="hidden" runat="server"></asp:TextBox>
<li><span class="glyphicon glyphicon-briefcase"></span>
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></li>
<li><span class="glyphicon glyphicon-map-marker"></span><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>,&nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>,&nbsp;<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></li>
<li><span class="glyphicon glyphicon-home"></span> <asp:Label ID="Addresses" runat="server" Text="Label"></asp:Label></li>
<li><span class="glyphicon glyphicon-phone"></span> <a href="#" title="call">
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></a></li>
<li><span class="glyphicon glyphicon-envelope"></span><a href="#" title="mail">
    <asp:Label ID="mail" runat="server" Text="Label"></asp:Label></a></li>

</ul>


</div><!--col-md-8 col-sm-8 col-xs-12 close-->




</div><!--profile-head close-->
</div><!--container close-->


<div id="sticky" class="container">
    
    <!-- Nav tabs -->
    <ul class="nav nav-tabs nav-menu" role="tablist">
      <li class="active">
          <a href="#profile" role="tab" data-toggle="tab">
              &#128104; Profile
          </a>
      </li>
      <li><a href="#" role="tab" data-toggle="tab">
          <i class="fa fa-key"></i> Edit Profile
          </a>
      </li>
    </ul><!--nav-tabs close-->
    
    <!-- Tab panes -->
    <div class="tab-content">
    <div class="tab-pane fade active in" id="profile">
    <div class="container">
<div class="col-sm-11" style="float:left;">
<div class="hve-pro">
<p>Hello I’m Hrishikesh Khandagale, a leading expert in interactive and creative design specializing in the websites. 
My graduation from shivahi University with a Bachelor of Computer Application in G.A.College of commerce sangli.</p>
</div><!--hve-pro close-->
</div><!--col-sm-12 close-->
<br clear="all" />
<div class="row">
<div class="col-md-12">
<h4 class="pro-title">Bio Graph</h4>
</div><!--col-md-12 close-->


<div class="col-md-11">

<div class="table-responsive responsiv-table">
  
     
    
 
  


        <asp:ListView ID="ListView1" runat="server" DataKeyNames="User_Id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="background-color: #FAFAD2;color: #284775;">User_Id:
                <asp:Label ID="User_IdLabel" runat="server" Text='<%# Eval("User_Id") %>' />
                <br />
                First_Name:
                <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                <br />
                Middle_Name:
                <asp:Label ID="Middle_NameLabel" runat="server" Text='<%# Eval("Middle_Name") %>' />
                <br />
                Last_Name:
                <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                <br />
                BOD:
                <asp:Label ID="BODLabel" runat="server" Text='<%# Eval("BOD") %>' />
                <br />
                Age:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                <br />
                Education:
                <asp:Label ID="EducationLabel" runat="server" Text='<%# Eval("Education") %>' />
                <br />
                Gender:
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                <br />
                User_Name:
                <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("User_Name") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Phone_Number:
                <asp:Label ID="Phone_NumberLabel" runat="server" Text='<%# Eval("Phone_Number") %>' />
                <br />
                Mobile_Number:
                <asp:Label ID="Mobile_NumberLabel" runat="server" Text='<%# Eval("Mobile_Number") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Pin_Code:
                <asp:Label ID="Pin_CodeLabel" runat="server" Text='<%# Eval("Pin_Code") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
               <center> <span style="color: #000080;">User Id:
                <asp:Label ID="User_IdLabel1" runat="server" Text='<%# Eval("User_Id") %>' />
                <br />
                     
              <label class="col-md-2 control-label" for="last_name">First Name:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<i class="fa fa-user"></i>
			</span>
                <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>'  CssClass="form-control input-group1 " height="42" />
                          </div>
                <br />
                     <label class="col-md-2 control-label" for="last_name">Middle Name:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<i class="fa fa-user"></i>
			</span>
                <asp:TextBox ID="Middle_NameTextBox" runat="server" Text='<%# Bind("Middle_Name") %>' CssClass="form-control input-group1 " height="42"/> </div>
                <br />
                     <label class="col-md-2 control-label" for="last_name">Last Name:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<i class="fa fa-user"></i>
			</span>
               
                <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br />
                   <label class="col-md-2 control-label" for="last_name">  BOD:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<span style=" color: #009edf; font-size: 17px;">&#128197;</span>
			</span>
               
                <asp:TextBox ID="BODTextBox" runat="server" Text='<%# Bind("BOD") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br />
                    <label class="col-md-2 control-label" for="last_name"> Age:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<i class="fa fa-user"></i>
			</span>
                
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br />
                <label class="col-md-2 control-label" for="last_name">Education:</label>
                     <div class="col-md-5">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span> 
                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Education") %>'  CssClass="form-control input-md newStyle5" Height="42px">
                    <asp:ListItem Selected="True">S.S.C</asp:ListItem>
                     <asp:ListItem>Below S.S.C</asp:ListItem>
                    <asp:ListItem>H.S.C</asp:ListItem>
                    <asp:ListItem>Under Graduate</asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Post Graduate</asp:ListItem>
                    <asp:ListItem>P.hd</asp:ListItem>
                    <asp:ListItem>Doctorate</asp:ListItem>
                </asp:DropDownList></div></div>
                <br />
                <label class="col-md-1 control-label" for="last_name">Gender:</label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="Horizontal" SelectedValue='<%# Bind("Gender") %>'>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
                <br />
<label class="col-md-2 control-label" for="last_name"> User Name:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<i class="fa fa-users"></i>
			</span>
                
                <asp:TextBox ID="User_NameTextBox" runat="server" Text='<%# Bind("User_Name") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br />
                         <label class="col-md-2 control-label" for="last_name">Password:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<span style="color: #009edf; font-size: 20px;">&#128272;</span>
			</span>
                
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br />
                         <label class="col-md-2 control-label" for="last_name"> Email:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<i class="glyphicon glyphicon-envelope"></i>
			</span>
              
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br />
                         <label class="col-md-2 control-label" for="last_name"> Phone Number:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<span style="color: #009edf; font-size: 20px;">&#9742;</span>
			</span>
              
                <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br />
                      <label class="col-md-2 control-label" for="last_name">  Mobile Number:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<i class="glyphicon glyphicon-phone"></i>
			</span>
               
                <asp:TextBox ID="Mobile_NumberTextBox" runat="server" Text='<%# Bind("Mobile_Number") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br />
                         <label class="col-md-2 control-label" for="last_name"> Address:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			<i class="glyphicon glyphicon-pencil"></i>
			</span>
               
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' CssClass="form-control input-group1 " height="90px" Rows="50" TextMode="MultiLine"/></div>
                <br />
                       <label class="col-md-2 control-label" for="last_name"> Pin Code:</label>
                     <div class=" input-group col-md-5">
                            <span class="input-group-addon">
			 <i class=" fa fa-map-marker"></i>
			</span>
               
                <asp:TextBox ID="Pin_CodeTextBox" runat="server" Text='<%# Bind("Pin_Code") %>' CssClass="form-control input-group1 " height="42"/></div>
                <br /> <br /></center>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="&#128190; Save" CssClass="btn btn-info" Width="35%" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text=" &#10007; Cancel" CssClass="btn btn-warning"  Width="35%" />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">First Name:
                <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("First_Name") %>' />
                <br />Middle Name:
                <asp:TextBox ID="Middle_NameTextBox" runat="server" Text='<%# Bind("Middle_Name") %>' />
                <br />Last Name:
                <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("Last_Name") %>' />
                <br />BOD:
                <asp:TextBox ID="BODTextBox" runat="server" Text='<%# Bind("BOD") %>' />
                <br />Age:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Education:
                <asp:TextBox ID="EducationTextBox" runat="server" Text='<%# Bind("Education") %>' />
                <br />Gender:
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                <br />User Name:
                <asp:TextBox ID="User_NameTextBox" runat="server" Text='<%# Bind("User_Name") %>' />
                <br />Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />Phone Number:
                <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' />
                <br />Mobile Number:
                <asp:TextBox ID="Mobile_NumberTextBox" runat="server" Text='<%# Bind("Mobile_Number") %>' />
                <br />Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />Pin Code:
                <asp:TextBox ID="Pin_CodeTextBox" runat="server" Text='<%# Bind("Pin_Code") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="color: #333333;"><span style="float:left ">User Id:</span><hr />
                <asp:Label ID="User_IdLabel" runat="server" Text='<%# Eval("User_Id") %>' /><hr /><hr />
                <br />
                <span style="float:left ">First Name:</span>
                <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' /><hr /><hr />
                <br />
                <span style="float:left ">Middle Name:</span>
                <asp:Label ID="Middle_NameLabel" runat="server" Text='<%# Eval("Middle_Name") %>' /><hr /><hr />
                <br />
                <span style="float:left ">Last Name:</span>
                <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' /><hr /><hr />
                <br />
                <span style="float:left ">BOD:</span>
                <asp:Label ID="BODLabel" runat="server" Text='<%# Eval("BOD") %>' /><hr /><hr />
                <br />
               <span style="float:left "> Age:</span>
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' /><hr /><hr />
                <br />
                <span style="float:left ">Education:</span>
                <asp:Label ID="EducationLabel" runat="server" Text='<%# Eval("Education") %>' /><hr /><hr />
                <br />
               <span style="float:left "> Gender:</span>
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' /><hr /><hr />
                <br />
                <span style="float:left ">User Name:</span>
                <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("User_Name") %>' /><hr /><hr />
                <br />
                <span style="float:left ">Password:</span>
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' /><hr /><hr />
                <br />
                <span style="float:left ">Email:</span>
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' /><hr /><hr />
                <br />
                <span style="float:left ">Phone Number:</span>
                <asp:Label ID="Phone_NumberLabel" runat="server" Text='<%# Eval("Phone_Number") %>' /><hr /><hr />
                <br />
                <span style="float:left ">Mobile Number:</span>
                <asp:Label ID="Mobile_NumberLabel" runat="server" Text='<%# Eval("Mobile_Number") %>' /><hr /><hr />
                <br />
                <span style="float:left ">Address:</span>
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' /><hr /><hr />
                <br />
               <span style="float:left "> Pin Code:</span>
                <asp:Label ID="Pin_CodeLabel" runat="server" Text='<%# Eval("Pin_Code") %>' /><hr />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="&#128273; Edit-Profile" CssClass="btn btn-success"  Width="55%" />
<br /><br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                    <br />
                    <br />
                    </span>
                </div>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="font-weight: bold;color: #000080;">User_Id:
                <asp:Label ID="User_IdLabel" runat="server" Text='<%# Eval("User_Id") %>' />
                <br />
                First_Name:
                <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
                <br />
                Middle_Name:
                <asp:Label ID="Middle_NameLabel" runat="server" Text='<%# Eval("Middle_Name") %>' />
                <br />
                Last_Name:
                <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                <br />
                BOD:
                <asp:Label ID="BODLabel" runat="server" Text='<%# Eval("BOD") %>' />
                <br />
                Age:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                <br />
                Education:
                <asp:Label ID="EducationLabel" runat="server" Text='<%# Eval("Education") %>' />
                <br />
                Gender:
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                <br />
                User_Name:
                <asp:Label ID="User_NameLabel" runat="server" Text='<%# Eval("User_Name") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />
                Phone_Number:
                <asp:Label ID="Phone_NumberLabel" runat="server" Text='<%# Eval("Phone_Number") %>' />
                <br />
                Mobile_Number:
                <asp:Label ID="Mobile_NumberLabel" runat="server" Text='<%# Eval("Mobile_Number") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Pin_Code:
                <asp:Label ID="Pin_CodeLabel" runat="server" Text='<%# Eval("Pin_Code") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        </div><!--table-responsive close-->
</div><!--col-md-6 close-->

</div><!--row close-->

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [User_Registration] WHERE [User_Id] = @User_Id" InsertCommand="INSERT INTO [User_Registration] ([First_Name], [Middle_Name], [Last_Name], [BOD], [Age], [Education], [Gender], [User_Name], [Password], [Email], [Phone_Number], [Mobile_Number], [Address], [Pin_Code]) VALUES (@First_Name, @Middle_Name, @Last_Name, @BOD, @Age, @Education, @Gender, @User_Name, @Password, @Email, @Phone_Number, @Mobile_Number, @Address, @Pin_Code)" SelectCommand="SELECT [User_Id], [First_Name], [Middle_Name], [Last_Name], [BOD], [Age], [Education], [Gender], [User_Name], [Password], [Email], [Phone_Number], [Mobile_Number], [Address], [Pin_Code] FROM [User_Registration] WHERE ([User_Name] = @User_Name)" UpdateCommand="UPDATE [User_Registration] SET [First_Name] = @First_Name, [Middle_Name] = @Middle_Name, [Last_Name] = @Last_Name, [BOD] = @BOD, [Age] = @Age, [Education] = @Education, [Gender] = @Gender, [User_Name] = @User_Name, [Password] = @Password, [Email] = @Email, [Phone_Number] = @Phone_Number, [Mobile_Number] = @Mobile_Number, [Address] = @Address, [Pin_Code] = @Pin_Code WHERE [User_Id] = @User_Id">
            <DeleteParameters>
                <asp:Parameter Name="User_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Middle_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="BOD" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Education" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="User_Name" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="String" />
                <asp:Parameter Name="Mobile_Number" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Pin_Code" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="User_Name" SessionField="username" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Middle_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="BOD" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="Education" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="User_Name" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone_Number" Type="String" />
                <asp:Parameter Name="Mobile_Number" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Pin_Code" Type="Int32" />
                <asp:Parameter Name="User_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br />
</div><!--container close-->
</div><!--tab-pane close-->
 <div class="tab-pane fade" id="change">
<div class="container fom-main">
<div class="row">
<div class="col-sm-12">     
</div></div></div></div>
</div><!--tab-content close-->
</div><!--container close-->

</section><!--section close-->
     <script src="js/profile3.js"></script>
</asp:Content>


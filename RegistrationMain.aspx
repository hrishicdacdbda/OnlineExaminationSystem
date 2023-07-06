<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeFile="RegistrationMain.aspx.cs" Inherits="RegistrationMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link id="Link1" runat="server" rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
                <link id="Link2" runat="server" rel="icon" href="images/favicon.ico" type="image/ico"/>
    
    <title>ChessK8&#9821;ng</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet" />
    
     <link href="Content/footer2.css" rel="stylesheet" />
     <link href="css/form3.css" rel="stylesheet" />
    <link href="Content/css1/bootstrap-datetimepicker.css" rel="stylesheet" />
    <link href="Content/css1/style.css" rel="stylesheet" />
    <link href="css/imageinput1.css" rel="stylesheet" />
      <style>
  .body1 { margin: 0; }
div.background {
  background: url(images/tech.jpg) ;
  border: 0px solid black; background-repeat: repeat;
    background-size: contain;
}
div.transbox {
  margin: 0px;
  
  
  opacity: 0.9;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}
.newStyle5 {
           background-image: url('images/Chess-Wallpapers-and-Background1.jpg');
        }
  </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     
       

          <!--background image start-->
        
    <!--background image Start-->
    <div class="container">
			<div class="row main">
				<div class="main-login main-center">
			<!-- first row of text box name start-->
           <div class="row form-group">
            <label class="col-md-1 control-label" for="first_name">First Name</label>  
              
            <div class="col-md-3">
			<div class="input-group input-group1">
			<span class="input-group-addon">
			<i class="fa fa-user"></i>
			</span>
                 <asp:TextBox ID="txt_fname" runat="server" placeholder="First Name" name="firstName" class="form-control input-md input-group1" height="42" ></asp:TextBox>
              
            </div></div>
                           
            <label class="col-md-1 control-label" for="middle_name">Mid Name</label>  
            <div class="col-md-3">
			<div class="input-group input-group1">
			<span class="input-group-addon">
			<i class="fa fa-user"></i>
			</span>
                 <asp:TextBox ID="txt_mname" runat="server" placeholder="Middle Name" name="firstName" class="form-control input-md input-group1" height="42"></asp:TextBox>
            </div>
		</div>
            <label class="col-md-1 control-label" for="last_name">Last Name</label>  
            <div class="col-md-3">
			<div class="input-group input-group1">
			<span class="input-group-addon">
			<i class="fa fa-user"></i>
			</span>
               <asp:TextBox ID="txt_lname" runat="server" placeholder="Last Name" name="lastName"  class="form-control input-md input-group1" height="42"></asp:TextBox>
            </div>
	</div>
             
             
          </div>
                  <!--First row validation start--> 
               <center>   <div class="row form-group">
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="  Only Alphabate and space allowed for name." SetFocusOnError="True" ControlToValidate="txt_fname" ValidationExpression="[a-zA-Z ]*$" CssClass="transbox" Font-Bold="True" Font-Names="Footlight MT Light" ForeColor="#E60000" Font-Size="Medium" Display="Dynamic" Text=" *Valid characters: Alphabets and space."></asp:RegularExpressionValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only Alphabate and space allowed for name." SetFocusOnError="True" ControlToValidate="txt_mname" ValidationExpression="[a-zA-Z ]*$" CssClass="transbox" Font-Bold="True" Font-Names="Footlight MT Light" ForeColor="#E60000" Font-Size="Medium" Display="Dynamic" Text=" *Valid characters: Alphabets and space."></asp:RegularExpressionValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only Alphabate and space allowed for name." SetFocusOnError="True" ControlToValidate="txt_lname" ValidationExpression="[a-zA-Z ]*$" CssClass="transbox" Font-Bold="True" Font-Names="Footlight MT Light" ForeColor="#E60000" Font-Size="Medium" Display="Dynamic" Text=" *Valid characters: Alphabets and space."></asp:RegularExpressionValidator>     
                
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Pleas provide first name" Text="   * Enter first name" ControlToValidate="txt_fname" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please provide middle name" Text="  * Enter middle name" ControlToValidate="txt_mname" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please provide last name" Text="  * Enter last name" ControlToValidate="txt_lname" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"></asp:RequiredFieldValidator>     
                  </div></center>
                    <!--First row validation end-->
                    <!-- first row of text box name end-->
                    <!-- ddl country row start-->
                    <div class="row form-group">
                        <label class="col-md-2 control-label" for="last_name">Country:</label> 
                         <div class="col-md-6">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span> 
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control input-md newStyle5" Height="42px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Countries]"></asp:SqlDataSource>
                    </div></div></div>
                    <!-- ddl country row end-->
                    <!-- ddl state row start-->
                     <div class="row form-group">
                        <label class="col-md-2 control-label" for="last_name">State:</label> 
                         <div class="col-md-6">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span> 
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="Id" CssClass="form-control input-md newStyle5" Height="42px" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [states] WHERE ([country_id] = @country_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="country_id" PropertyName="SelectedValue" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>
                        
                    </div></div></div>
                     <!-- ddl state row end-->
                      <!-- ddl city row start-->
                     <div class="row form-group">
                        <label class="col-md-2 control-label" for="last_name">City:</label> 
                         <div class="col-md-6">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span> 
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control input-md newStyle5" Height="42px" DataSourceID="SqlDataSource3" DataTextField="name" DataValueField="Id" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cities] WHERE ([state_id] = @state_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" Name="state_id" PropertyName="SelectedValue" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </div></div></div>
                     <!-- ddl city row end-->
                     <!-- First row start-->
                    <div class="row form-group">
                       <!-- Date time picker start-->
                        <label class="col-md-2 control-label" for="dtp_input2">Pick date:</label>  
                       <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="dd-mm-yyyy">
                    
       <asp:TextBox ID="dumb"  size="16" value="" runat="server" Enabled="False" CssClass="form-control"></asp:TextBox>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				
       <asp:TextBox ID="dtp_input2" runat="server" type="hidden" value=""></asp:TextBox>
      
                         <!--Date time picker end-->
                        </div>
                     <!--First row validation start-->
                     <center>
                    <div class="row form-group">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please provide your birth-date" ControlToValidate="dtp_input2" Display="Dynamic" SetFocusOnError="True" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000">* Enter birth-date</asp:RequiredFieldValidator>
                        </div></center>
                     <!--First row validation end-->
                    <!--First row end-->

                    <!--second row start-->
                    <center>
                    <div class="row form-group">
                       <!--Age textbox start-->
                        <label class="col-md-2 control-label" for="last_name">Age:</label>  
                    <div class="col-md-2">
                   <div class="input-group input-group1"> <span class="input-group-addon">
			<i class="fa fa-user"></i>
			</span>
                           <asp:TextBox ID="txt_Age" runat="server" name="Age" placeholder="xxx" class="form-control " type="number"  height="42" MaxLength="3"></asp:TextBox>
                    
                   </div></div> 
                        <!--Age textbox end-->
                       <!--Education dropdownlist start-->
                        <label class="col-md-2 control-label" for="last_name">Education:</label> 
                         <div class="col-md-4">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span> 
                        <asp:DropDownList ID="ddl_Education" runat="server" CssClass="form-control input-md newStyle5" Height="42">
                            <asp:ListItem InitialValue="Select education" Value="-1">Select education</asp:ListItem>
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>Computer Science</asp:ListItem>
                            <asp:ListItem>Information Technology</asp:ListItem>
                            <asp:ListItem>Mechanical Engineering</asp:ListItem>
                            <asp:ListItem>Civil Engineering</asp:ListItem>
                        </asp:DropDownList></div></div>
                        <!--validation start-->
                    
                        <!--validation end-->
                   <!--Education dropdownlist end-->
                        </div> 
                    </center>
                    <!--Second row validation start-->
                         <center>
                    <div class="row form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter your age" SetFocusOnError="True" ControlToValidate="txt_Age" Display="Dynamic" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000">* Enter age</asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Accept age only above 10" SetFocusOnError="True" Operator="GreaterThanEqual" ControlToValidate="txt_Age" Display="Dynamic" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Type="Integer" ValueToCompare="10">* only above 10</asp:CompareValidator>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="please select your educational status" ControlToValidate="ddl_Education" InitialValue="-1" SetFocusOnError="True" Display="Dynamic" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000">* Confirm education</asp:RequiredFieldValidator>
                        
                    </div></center>
                        <!--second row validation end-->
                        <!--second row end-->

                     <!-- Third row start-->
                      <center>
                    <div class="row form-group">
                    <!-- Gender Radio button list start-->
		<label class="col-md-1 control-label" for="gender">Gender:</label>  
                         <div class="col-md-3">
		<div  class="btn-group input-group" data-toggle="buttons">
			<label class="btn btn-primary " >
				
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="r1" Text="Male"  name="year" value="Male"></asp:RadioButton>
			</label>
			<label class="btn btn-primary " >
				<asp:RadioButton ID="RadioButton2" runat="server" GroupName="r1" Text="Female"  name="year" value="Female"></asp:RadioButton>
			</label>
			<label class="btn btn-primary " >
				<asp:RadioButton ID="RadioButton3" runat="server" GroupName="r1" Text="Others"  name="year" value="Others"></asp:RadioButton>
			</label>
        </div></div>
                    <!--Gender Radio button list end-->
                    </div></center>
                    <!--Third row validation start-->
                   
                       <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please select your gender" ClientValidationFunction="ValidateRadioButtons"  Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" SetFocusOnError="True" Text=" * select gender"></asp:CustomValidator>
                        <!--Third row validation end-->
                     <!--Third row end-->
                   
                    <!-- Second row of text box username start-->
                     <center>
                    <div class="row form-group">
                       
                        <label class="col-md-2 control-label" for="last_name">User Name</label>  
                    <div class="col-md-5">
                   <div class="input-group input-group1"> <span class="input-group-addon">
			<i class="fa fa-users fa"></i>
			</span>
                           <asp:TextBox ID="txt_UserName" runat="server" class="form-control input-group1" placeholder="User Name" name="username"  height="42" ></asp:TextBox>
                    
                   </div></div> </div>  </center>
                     <!--second row validation start-->
                     <center>
                          <div class="row form-group">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Provide your User Name" Text="  * Enter User Name" ControlToValidate="txt_UserName" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"></asp:RequiredFieldValidator>
                          </div>
                     </center>
                    <!--second row validation end-->
                    <!-- second row of text box username end-->

                    <!-- Third row of text box Password start-->
                    <center>
                    <div class="row form-group">
                       
                        <label class="col-md-2 control-label" for="last_name">Password</label>  
                    <div class="col-md-4">
                   <div class="input-group input-group1"> <span class="input-group-addon">
			<i class="fa fa-lock fa-lg"></i>
			</span>
                           <asp:TextBox ID="txt_Password" runat="server" name="password" class="form-control input-md input-group1" placeholder="Password"  height="42" TextMode="Password"></asp:TextBox>
                    
                   </div></div>

                         
                             <label class="col-md-2 control-label" for="last_name">Confirm Password</label>
                    <div class="col-md-4">
                   <div class="input-group input-group1"> <span class="input-group-addon">
			
                        <span style="color: #009edf;font-size: 20px;"> <b>&#128272;</b></span>
			</span>
                           <asp:TextBox ID="txt_ConfirmPassword" runat="server" name="confirmPassword" class="form-control input-group1" placeholder="Confirm Password" height="42" TextMode="Password"></asp:TextBox>
                    
                   </div></div>

                    </div>  </center>
                     <!-- Third row of text box Password validation start-->
                    <center>
                    <div class="row form-group">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Provide your Password" Text="  * Enter Password" ControlToValidate="txt_Password" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Provide your Cofirm Password" Text="  * Enter Confirm Password" ControlToValidate="txt_ConfirmPassword" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txt_ConfirmPassword" ControlToCompare="txt_Password" SetFocusOnError="True" Text="*Please confirm Your  password " ErrorMessage="Please Confirm your password and confirm password is same" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#CE0000" Display="Dynamic"></asp:CompareValidator>      
                    </div></center>
                     <!-- Third row of text box Password validation end-->
                     <!-- Third row of text box Password end-->

                 

                    <!--first row email textbox start-->
                     <center>
                    <div class="row form-group">
                       
                        <label class="col-md-2 control-label" for="last_name">Email Address:</label>  
                    <div class="col-md-5">
                   <div class="input-group input-group1"> <span class="input-group-addon">
			<i class="glyphicon glyphicon-envelope"></i>
			</span>
                           <asp:TextBox ID="txt_EmailAddress" runat="server" class="form-control input-group1" placeholder="Email address" name="Email address"  height="42" TextMode="Email" ></asp:TextBox>
                    
                   </div></div> </div>  </center>
                    <!--first row email validation start-->
                    <center>
                    <div class="row form-group">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please provide your Email Address" ControlToValidate="txt_EmailAddress" Display="Dynamic" SetFocusOnError="True" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000"> * Enter E-mail</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please provide your proper Email address" ControlToValidate="txt_EmailAddress" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000"> * Enter proper Email</asp:RegularExpressionValidator>
                         </div></center>
                    <!--first row email validation end-->
                    <!--first row email textbox end-->
                     <!--Second row  start-->
                    
                    <div class="row form-group">
                       
                        <label class="col-md-2 control-label" for="last_name">Phone no:</label>  
                    <div class="col-md-3">
                   <div class="input-group input-group1"> <span class="input-group-addon">
			
                     <span style="color: #009edf;font-size: 20px;"> <b> &#9742;</b></span>
			</span>
                           <asp:TextBox ID="txt_Phoneno" runat="server" class="form-control input-group1" placeholder="Phone no" name="Phone no"  height="42"  ></asp:TextBox>
                    
                   </div></div>
                         <label class="col-md-2 control-label" for="last_name">Mobile no:</label> 
                        <div class="col-md-1">
                   <div class="input-group input-group1"> 
                         <span class="input-group-addon">
			<i class="fa fa-plus"></i>
			</span> 
                       <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="phonecode" DataValueField="Id" CssClass="form-control input-md newStyle5" Height="42px" AutoPostBack="True" Width="50px"></asp:DropDownList>
             </div></div>
                    <div class="col-md-4">
                   <div class="input-group input-group1">
                      
                        <span class="input-group-addon">
			<i class="glyphicon glyphicon-phone"></i>
			</span>
                        
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Countries] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Id" PropertyName="SelectedValue" Type="Int64" />
                </SelectParameters>
            </asp:SqlDataSource>
          
                           <asp:TextBox ID="txt_MobileNo" runat="server" class="form-control input-group1" placeholder="Mobile no" name="Phone no"  height="42" TextMode="Number"  ></asp:TextBox>
                    
                   </div></div> 

                    </div>  
                    <!--second row  validation start-->
                    <center>
                    <div class="row form-group">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Please provide your proper Phone number" ControlToValidate="txt_Phoneno" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\d{4}([- ]*)\d{6}" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000"> * Enter proper Phone no</asp:RegularExpressionValidator>

                       <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please provide your Mobile number" ControlToValidate="txt_MobileNo" Display="Dynamic" SetFocusOnError="True" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000"> * Enter Mobile No</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Please provide your proper Mobile number" ControlToValidate="txt_MobileNo" Display="Dynamic" SetFocusOnError="True" ValidationExpression="[0-9]{10}" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000"> * Enter proper Mobile no</asp:RegularExpressionValidator>
                         </div></center>
                   <!--second row validation end-->
                    <!--second row  end-->
                     <!--Third row  Start-->
                    <div class="row form-group">
                        <label class="col-md-2 control-label" for="last_name">Address Details:</label>  
                         <div class="col-md-5">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-pencil"></i>
			</span>
            <asp:TextBox ID="txt_Address" runat="server" class="form-control" placeholder="Addess Details..." Rows="50" Height="90px" TextMode="MultiLine"></asp:TextBox>
              
            </div>
	</div>
                        <label class="col-md-2 control-label" for="last_name">Pin Code:</label>  
                         <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			
                <i class=" fa fa-map-marker"></i>
			</span>
            <asp:TextBox ID="txt_Pincode" runat="server" class="form-control input-md ac_village" TextMode="Number" placeholder="Pin-Code" Height="42px"></asp:TextBox>
             
            </div> </div>

                        </div>
                    <!--Third row validation start-->
                     <center>
                    <div class="row form-group">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Please provide your address in details" ControlToValidate="txt_Address" Display="Dynamic" SetFocusOnError="True" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000"> * Enter Address</asp:RequiredFieldValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Please provide your Pin-code number" ControlToValidate="txt_Pincode" Display="Dynamic" SetFocusOnError="True" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000"> * Enter Pin-Code</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Please provide your proper Pin-Code number" ControlToValidate="txt_Pincode" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^[0-9]{6}$" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000"> * Enter proper Pin-Code</asp:RegularExpressionValidator>
                         
                        </div></center>
                    <!--Third row validation end-->
                    <!--Third row  End-->

                       <!--Fourth row of Input Image start-->
                     <right>
                    <div class="row form-group">
                       
                        
                    <div class="container">
    <div class="row">    
       
        <div class="col-xs-12 col-md-7  col-sm-8 ">  
            <label class="col-md-3 control-label" for="last_name">Your Image</label> 
            <!-- image-preview-filename input [CUT FROM HERE]-->
            <div class="input-group image-preview">
                 <!-- don't give a name === doesn't send on POST/GET -->
                
                <asp:TextBox ID="TextBox5" runat="server" class="form-control image-preview-filename" disabled="disabled"></asp:TextBox>
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove" style="color: #009edf;">Clear </span> 
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview-input">
                        <span class="glyphicon glyphicon-folder-open" style="color: #009edf;"></span>
                        <span class="image-preview-input-title" style="color: #009edf;">Browse</span>
        <asp:FileUpload ID="FLUD_Image" runat="server" name="input-file-preview"/>
                         <!-- rename it -->
                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 
        </div>
    </div>
</div>
       </div>  </right>
                    
                    <!--Fourth row of Input Image validation start-->
                          <div class="row form-group">
                               <center><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Provide your Picture" Text="  * pick your picture" ControlToValidate="FLUD_Image" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"></asp:RequiredFieldValidator>
                           </center>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="FLUD_Image" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.jpeg|.JPEG|.gif|.GIF|.png|.PNG|.JPG|.jpg|.bitmap|.BITMAP|.bmp)$" SetFocusOnError="True" ErrorMessage="Only jpg,png and gif or jpef images are allowed"  Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"> * only image are allowed</asp:RegularExpressionValidator>                             
                          </div>
                    <label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Join Acadamy</label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                    <div class="row form-group">
                               <center><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Please choose Joined to acadamy or not" Text="Choose Joind or no Acadamy" ControlToValidate="RadioButtonList1" Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="Medium" ForeColor="#E10000" Display="Dynamic"></asp:RequiredFieldValidator>
                           </center>
                                 </div>
                    <!--Fourth row of Input Image validation end-->
                    <!--Fourth row of Input Image end-->
                     <center>
                            
                        <asp:Button   ID="Button1" runat="server" Text="Insert" CssClass="btn btn-primary btn-info-full " Width="65%" Height="15%" OnClick="Button1_Click" ></asp:Button>
                         </center>
                        <br /><br />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" Font-Names="Footlight MT Light" Font-Size="Larger" ForeColor="#660066" ShowSummary="True"></asp:ValidationSummary>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [User_Registration] WHERE [User_Id] = @User_Id" InsertCommand="INSERT INTO [User_Registration] ([First_Name], [Middle_Name], [Last_Name], [BOD], [Age], [Education], [Gender], [User_Name], [Password], [Image], [Email], [Phone_Number], [Mobile_Number], [Address], [Pin_Code], [JoinAcadamy]) VALUES (@First_Name, @Middle_Name, @Last_Name, @BOD, @Age, @Education, @Gender, @User_Name, @Password, @Image, @Email, @Phone_Number, @Mobile_Number, @Address, @Pin_Code, @JoinAcadamy)" SelectCommand="SELECT * FROM [User_Registration]" UpdateCommand="UPDATE [User_Registration] SET [First_Name] = @First_Name, [Middle_Name] = @Middle_Name, [Last_Name] = @Last_Name, [BOD] = @BOD, [Age] = @Age, [Education] = @Education, [Gender] = @Gender, [User_Name] = @User_Name, [Password] = @Password, [Image] = @Image, [Email] = @Email, [Phone_Number] = @Phone_Number, [Mobile_Number] = @Mobile_Number, [Address] = @Address, [Pin_Code] = @Pin_Code, [JoinAcadamy] = @JoinAcadamy WHERE [User_Id] = @User_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="User_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txt_fname" Name="First_Name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_mname" Name="Middle_Name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_lname" Name="Last_Name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="dtp_input2" Name="BOD" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_Age" Name="Age" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="ddl_Education" Name="Education" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="RadioButton1" Name="Gender" PropertyName="Checked" Type="String" />
                            <asp:ControlParameter ControlID="txt_UserName" Name="User_Name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_Password" Name="Password" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="FLUD_Image" PropertyName="FileBytes" DbType="Binary" Name="Image" />
                            <asp:ControlParameter ControlID="txt_EmailAddress" Name="Email" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_Phoneno" Name="Phone_Number" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_MobileNo" Name="Mobile_Number" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_Address" Name="Address" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_Pincode" Name="Pin_Code" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="RadioButtonList1" Name="JoinAcadamy" PropertyName="SelectedValue" Type="String" />
                        </InsertParameters>
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
                            <asp:Parameter Name="Image" Type="Object" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Phone_Number" Type="String" />
                            <asp:Parameter Name="Mobile_Number" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Pin_Code" Type="Int32" />
                            <asp:Parameter Name="JoinAcadamy" Type="String" />
                            <asp:Parameter Name="User_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" DeleteCommand="DELETE FROM [userInfo] WHERE [id] = @id" InsertCommand="INSERT INTO [userInfo] ([id], [name], [department], [email], [semester], [gender], [password], [fatherName], [hall], [image], [no_of_exam], [total_mark], [rank], [abc], [def]) VALUES (@id, @name, @department, @email, @semester, @gender, @password, @fatherName, @hall, @image, @no_of_exam, @total_mark, @rank, @abc, @def)" SelectCommand="SELECT * FROM [userInfo]" UpdateCommand="UPDATE [userInfo] SET [name] = @name, [department] = @department, [email] = @email, [semester] = @semester, [gender] = @gender, [password] = @password, [fatherName] = @fatherName, [hall] = @hall, [image] = @image, [no_of_exam] = @no_of_exam, [total_mark] = @total_mark, [rank] = @rank, [abc] = @abc, [def] = @def WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txt_UserName" Name="id" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_fname" Name="name" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="ddl_Education" Name="department" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="txt_EmailAddress" Name="email" PropertyName="Text" Type="String" />
                            <asp:Parameter DefaultValue="0" Name="semester" Type="String" />
                            <asp:ControlParameter ControlID="RadioButton2" DbType="String" DefaultValue="Male" Name="gender" PropertyName="Checked" Type="String" />
                            <asp:ControlParameter ControlID="txt_Password" DefaultValue="" Name="password" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txt_mname" Name="fatherName" PropertyName="Text" Type="String" />
                            <asp:Parameter DefaultValue="xyz" Name="hall" Type="String" />
                            <asp:Parameter DefaultValue="0" Name="image" Type="String" />
                            <asp:Parameter DefaultValue="0" Name="no_of_exam" Type="Int32" />
                            <asp:Parameter DefaultValue="0" Name="total_mark" Type="Double" />
                            <asp:Parameter DefaultValue="0" Name="rank" Type="Int32" />
                            <asp:Parameter DefaultValue="0" Name="abc" Type="String" />
                            <asp:Parameter DefaultValue="0" Name="def" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="department" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="semester" Type="String" />
                            <asp:Parameter Name="gender" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="fatherName" Type="String" />
                            <asp:Parameter Name="hall" Type="String" />
                            <asp:Parameter Name="image" Type="String" />
                            <asp:Parameter Name="no_of_exam" Type="Int32" />
                            <asp:Parameter Name="total_mark" Type="Double" />
                            <asp:Parameter Name="rank" Type="Int32" />
                            <asp:Parameter Name="abc" Type="String" />
                            <asp:Parameter Name="def" Type="String" />
                            <asp:Parameter Name="id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" InsertCommand="INSERT INTO UserStates(UserName, Country, State, City) VALUES (@i1,@i2,@i3,@i4)" SelectCommand="SELECT * FROM [UserStates]">
                        <InsertParameters>
                            <asp:ControlParameter ControlID="txt_UserName" Name="i1" PropertyName="Text" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="i2" PropertyName="SelectedValue" Type="Int64" />
                            <asp:ControlParameter ControlID="DropDownList3" Name="i3" PropertyName="SelectedValue" Type="Int64" />
                            <asp:ControlParameter ControlID="DropDownList4" Name="i4" PropertyName="SelectedValue" Type="Int64" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <!--blue background End-->
                    </div></div></div>
              <!--blue background End-->

    <!--background image end-->    

<!--background image end-->   
      


        
          
    </div>
    </form>
      
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/js1/bootstrap-datetimepicker.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/imageinput1.js"></script>
    <script src="js/Registration3.js"></script>
      <script type="text/javascript">
          $('.form_datetime').datetimepicker({
              // language:  'uk',
              weekStart: 1,
              todayBtn: 1,
              autoclose: 1,
              todayHighlight: 1,
              startView: 2,
              forceParse: 0,
              showMeridian: 1
          });
          $('.form_date').datetimepicker({
              //  language:  'uk',
              weekStart: 1,
              todayBtn: 1,
              autoclose: 1,
              todayHighlight: 1,
              startView: 2,
              minView: 2,
              forceParse: 0
          });
          $('.form_time').datetimepicker({
              //  language:  'uk',
              weekStart: 1,
              todayBtn: 1,
              autoclose: 1,
              todayHighlight: 1,
              startView: 1,
              minView: 0,
              maxView: 1,
              forceParse: 0
          });
</script>
   <script type = "text/javascript">
       function ValidateRadioButtons(sender, args) {
           args.IsValid = $("input[name=r1]:checked").length > 0;
       }
        </script>
</body>
</html>

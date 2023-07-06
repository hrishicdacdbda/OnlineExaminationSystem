<%@ Page Title="" Language="C#" MasterPageFile="~/secondmaster.master" AutoEventWireup="true" CodeFile="MCQExam.aspx.cs" Inherits="MCQExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Panel ID="headerPanel1" runat="server" BackColor="#00CC99" Height="125px" style="margin-top: 0px">
                        <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="XX-Large" ForeColor="#006666" Height="39px" style="margin-left: 388px; margin-bottom: 0px; margin-top: 43px; margin-right: 700px;" Text="Online Examination System " Width="100%"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Panel ID="signUpPanel1" runat="server" BackColor="#99FFCC" Height="37px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
                </td>
            </tr> </table>
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js" type="text/javascript"></script>
    <body> 

         <asp:ScriptManager ID="ScriptManger" runat="server"></asp:ScriptManager>  
            <div style="background: #ddffca;margin:0 auto; width:1000px;">  
                <asp:UpdatePanel ID="updPanel" runat="server" UpdateMode="Always">  
                    <ContentTemplate>  
                        <table style="width: 100%;">  
                            <tr>  
                                <td>  
                                    <table style="width: 100%;">  
                                        <tr>  
                                            <td style="float: left;"><b><span id="timerText"></span><span id="spnthankyou"></span></b></td>  
                                            <td style="float: right; background-color: yellow; color: black;"><b><span id="lbresult"></span></b></td>  
                                        </tr>  
                                    </table>  
                                </td>  
                            </tr>  
                            <tr>  
                                <td>  
                                    <asp:GridView ID="grdquestions" runat="server" AutoGenerateColumns="false" OnRowDataBound="grdquestions_RowDataBound" DataKeyNames="id" Width="100%">  
                                        <Columns>  
                                            <asp:TemplateField HeaderText="Asp .Net Online Test">  
                                                <ItemTemplate>  
                                                    <table class="tableclass" id='<%#Eval("id") %>'>  
                                                        <tr>  
                                                            <td><b>Question <%#Eval("qsNo") %> -: <%#Eval("qs") %></b>  
                                                                <asp:HiddenField ID="hdnquestionId" runat="server" />  
                                                            </td>  
                                                        </tr>  
                                                        <tr>  
                                                            <td>  
                                                                <table>  
                                                                    <tr>  
                                                                        <td>  
                                                                            <table class="tblOptions">  
                                                                                <tr>  
                                                                                    <td>  
                                                                                        <asp:RadioButton ID="rdOption1" runat="server" Text='<%#Eval("op1") %>' Value="1" GroupName='<%#Eval("id") %>' />  
                                                                                    </td>  
                                                                                </tr>  
                                                                                <tr>  
                                                                                    <td>  
                                                                                        <asp:RadioButton ID="rdOption2" runat="server" Text='<%#Eval("op2") %>' Value="2" GroupName='<%#Eval("id") %>' />  
                                                                                    </td>  
                                                                                </tr>  
                                                                                <tr>  
                                                                                    <td>  
                                                                                        <asp:RadioButton ID="rdOption3" runat="server" Text='<%#Eval("op3") %>' Value="3" GroupName='<%#Eval("id") %>' />  
                                                                                    </td>  
                                                                                </tr>  
                                                                                <tr>  
                                                                                    <td>  
                                                                                        <asp:RadioButton ID="rdOption4" runat="server" Text='<%#Eval("op4") %>' Value="4" GroupName='<%#Eval("id") %>' />  
                                                                                    </td>  
                                                                                </tr>  
                                                                                <tr>  
                                                                                    <td>  
                                                                                        <asp:Label ID="lbquestionstatus" runat="server"></asp:Label>  
                                                                                    </td>  
                                                                                </tr>  
                                                                                <tr>  
                                                                                    <td class="correctAnswer">Correct Answer Is -:  
                                                                                        <asp:Label ID="lbAnswer" runat="server" Text='<%#Eval("ans") %>'></asp:Label>  
                                                                                    </td>  
                                                                                </tr>  
                                                                            </table>  
                                                                        </td>  
                                                                    </tr>  
                                                                </table>  
                                                            </td>  
                                                        </tr>  
                                                    </table>  
                                                </ItemTemplate>  
                                            </asp:TemplateField>  
                                        </Columns>  
                                    </asp:GridView>  
                                </td>  
                            </tr>  
                            <tr>  
                                <td>  
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClientClick="return CheckIfAllQuestionAnswerHasBeenSubmitted()" OnClick="btnSubmit_Click" />  
                                </td>  
                            </tr>  
                        </table>  
                    </ContentTemplate>  
                </asp:UpdatePanel>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:your-database-connection-string %>" InsertCommand="INSERT INTO mcqTaken(studentID, courseID, courseName, examNo, mark, eMark) VALUES (@i1,@i2,@i3,@i4,@i5,@i6)" SelectCommand="SELECT * FROM [mcqTaken]">
                    <InsertParameters>
                        <asp:ControlParameter ControlID="grdquestions" Name="i5" PropertyName="SelectedValue" />
                        <asp:Parameter DefaultValue="20201225" Name="i1" />
                        <asp:Parameter DefaultValue="1002" Name="i2" />
                        <asp:Parameter DefaultValue="M.C.A." Name="i3" />
                        <asp:ControlParameter ControlID="Label1" DefaultValue="" Name="i4" PropertyName="Text" />
                        <asp:Parameter DefaultValue="123" Name="i6" />
                    </InsertParameters>
                </asp:SqlDataSource>

                <br />
                <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" Text="Button" Width="89px" />
                <style>  
                    .border {  
                        border-color: red;  
                        border-width: 2px;  
                        border-style: solid;  
                        width: 100%;  
                    }  
                      
                    .correctAnswer {  
                        display: none;  
                        width: 950px!important;  
                    }  
                      
                    .tblOptions {  
                        width: 100%;  
                    }  
                      
                    .btn {  
                        background: #000000;  
                        background-image: -webkit-linear-gradient(top, #000000, #2980b9);  
                        background-image: -moz-linear-gradient(top, #000000, #2980b9);  
                        background-image: -o-linear-gradient(top, #000000, #2980b9);  
                        background-image: linear-gradient(to bottom, #000000, #2980b9);  
                        -webkit-border-radius: 0;  
                        -moz-border-radius: 0;  
                        border-radius: 6px;  
                        font-family: Arial;  
                        color: #ffffff;  
                        font-size: 19px;  
                        padding: 3px 20px;  
                        text-decoration: none;  
                    }  
                      
                    .btn:hover {  
                        background: #261c61;  
                        background-image: -webkit-linear-gradient(top, #261c61, #3498db);  
                        background-image: -moz-linear-gradient(top, #261c61, #3498db);  
                        background-image: -o-linear-gradient(top, #261c61, #3498db);  
                        background-image: linear-gradient(to bottom, #261c61, #3498db);  
                        text-decoration: none;  
                        cursor: pointer;  
                    }  
                      
                    .btndiabled {  
                        background: #bdb3bd;  
                        background-image: -webkit-linear-gradient(top, #bdb3bd, #757575);  
                        background-image: -moz-linear-gradient(top, #bdb3bd, #757575);  
                        background-image: -o-linear-gradient(top, #bdb3bd, #757575);  
                        background-image: linear-gradient(to bottom, #bdb3bd, #757575);  
                        -webkit-border-radius: 0;  
                        -moz-border-radius: 0;  
                        border-radius: 6px;  
                        font-family: Arial;  
                        color: #ffffff;  
                        font-size: 19px;  
                        padding: 3px 20px;  
                        text-decoration: none;  
                        cursor: none;  
                    }  
                </style>  
                 <script>
                     //Set the number of minutes you need  
                     var mins = 2;
                     var secs = mins * 60;
                     var currentSeconds = 0;
                     var currentMinutes = 0;
                     var ourtimer;

                     function StartCountDown() {
                         ourtimer = setTimeout(Decrement, 1000);
                     }

                     function EndCountDown() {
                         clearTimeout(ourtimer);
                     }
                     $(document).ready(function () {
                         StartCountDown();
                     }); //start the countdown  
                     function Decrement() {
                         currentMinutes = Math.floor(secs / 60);
                         currentSeconds = secs % 60;
                         if (currentSeconds <= 9) currentSeconds = "0" + currentSeconds;
                         secs--;
                         document.getElementById("timerText").innerHTML = "Time Remaining " + currentMinutes + ":" + currentSeconds;
                         if (secs !== -1) {
                             setTimeout('Decrement()', 1000);
                         } else {
                             window.location.href = "GOEXAM.aspx?timeout=1"
                         }
                     }

                     function CheckIfAllQuestionAnswerHasBeenSubmitted() {
                         var numItems = $('.tblOptions').length;
                         var flagtocheckcount = 0;
                         $(".tblOptions").each(function () {
                             var groupname = $('input[type=radio]:first', this).attr('name');
                             if (!$("input[name='" + groupname + "']:checked").val()) {
                                 $(this).parents(".tableclass").addClass("border");
                                 var tableid = $(this).closest('table [class^="tableclass"]').attr("id");
                             } else {
                                 flagtocheckcountflagtocheckcount = flagtocheckcount + 1;
                             }
                         })
                         if (parseInt(flagtocheckcount) == parseInt(numItems)) {
                             var CountFinalResult = 0;
                             $(".tblOptions").each(function () {
                                 var groupname = $('input[type=radio]:first', this).attr('name');
                                 var radioId = $("input[name='" + groupname + "']:checked").attr("id")
                                 var UserSelectedAnswer = $("label[for='" + radioId + "']").text();
                                 var CorrectAnswer = $('span:last-child', this).text();
                                 var CorrectAnswerSpanId = $('span:last-child', this).attr("id");
                                 var QuestionStatus = $("span:nth-last-child(1)", this).attr("id");
                                 if (CorrectAnswer == UserSelectedAnswer) {
                                     $("#" + QuestionStatus).text("Correct Answer").css("color", "green");
                                     $('td.correctAnswer').find("td.correctAnswer", this).css("display", "none");
                                     CountFinalResultCountFinalResult = CountFinalResult + 1;
                                 } else {
                                     //$('table.tblOptions tbody tr td:last-child').addClass("incorrect");  
                                     $('span:last-child', this).css({
                                         'display': 'inline-flex'
                                     });
                                     $("#" + QuestionStatus).text("InCorrect Answer").css({
                                         'color': 'Red'
                                     });
                                     $('td.correctAnswer', this).css({
                                         "display": "block",
                                         "background-color": "yellow",
                                         "color": "red"
                                     });
                                 }
                             });
                             $("#lbresult").text("Final Result-:" + CountFinalResult + "/7");
                             $("#btnSubmit").attr("disabled", "disabled"); //disable button if all questions answer has been given  
                             $("#btnSubmit").removeClass("btn");
                             $("#btnSubmit").addClass("btndiabled");
                             EndCountDown();
                             $("#timerText").css("display", "none");
                             $("#spnthankyou").append("Thank You for submitting your test.")
                             $("input[type=radio]").attr('disabled', true); //disable all radio button after test submitted by user  
                             return false;
                         } else {
                             return false;
                         }
                     }
                     var CountCheckCheckQuestion = 0; //following function will work on every radio button click  
                     var TotalQuestions = 0;
                     $("input[type=radio]").click(function () {
                         var groupname = $(this).attr("name");
                         $(this).parents(".tableclass").removeClass("border");
                         CheckTheCountOfQuestionHasBeenAnswered(); //this function to check if all the answer given while selecting radio button you don't need..  
                         // to click on submit button  
                         if (parseInt(CountCheckCheckQuestion) == parseInt(TotalQuestions)) {
                             CheckIfAllQuestionAnswerHasBeenSubmitted();
                         }
                     });

                     function CheckTheCountOfQuestionHasBeenAnswered() {
                         TotalQuestions = $('.tblOptions').length;
                         var TotalGivenAnswerCount = 0;
                         var flagtocheckcount = 0;
                         $(".tblOptions").each(function () {
                             var groupname = $('input[type=radio]:first', this).attr('name');
                             if (!$("input[name='" + groupname + "']:checked").val()) { } else {
                                 TotalGivenAnswerCountTotalGivenAnswerCount = TotalGivenAnswerCount + 1;
                             }
                         })
                         CountCheckCheckQuestion = TotalGivenAnswerCount;
                     }
                </script>
            </div>  
    </body>
</asp:Content>


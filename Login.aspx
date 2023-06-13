<%@ Page Language="VB" EnableViewStateMac=False MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
      <div class="wrap"> 

          <div class="col_1_of_3 span_1_of_3">
                <table border="0" cellpadding="0" cellspacing="0" 
                             style="width: 195.0pt; mso-cellspacing: 0in; mso-yfti-tbllook: 1184; mso-padding-alt: 3.75pt 3.75pt 3.75pt 3.75pt; line-height: 115%; font-size: 11.0pt; font-family: Calibri, sans-serif;" 
                             width="260" >
                             <tr>
                                 <td>
                                     <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal; color: #FFFFFF; background-color: #333333;">
                                         <b><span>Returning Customers</span></b><span><o:p></o:p></span></p>
                                 </td>
                             </tr>
                             <tr>
                                 <td valign="top">
                                     <p class="MsoNormal" style="margin-bottom:12.0pt;line-height:normal">
                                         <span>
                                         <br />
                                         If you&#39;ve shopped with us before, please enter your email address and password.&nbsp;<br />
                                         <asp:Label ID="Label4" runat="server" ForeColor="Red" 
         Text="*Invalide Email ID Or Password...." Visible="False"></asp:Label>
                                         <br />
                                         <b>E-mail</b><br />
     <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                                         &nbsp;<br />
                                         <br />
                                         <b>Password</b><br />
                                         <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                         &nbsp;<br />
                                         <br />
     <asp:Button ID="Button1" runat="server" Text="Sign in" BackColor="#990033" 
         Font-Size="Small" ForeColor="White" Font-Names="Monotype Corsiva" 
         Height="26px" Width="66px" CausesValidation="False" />
                                         &nbsp;<br />
                                         <br />
                                         <br />
                                         &nbsp;</span><a href="#"><span>Forgot 
                                         your password?</span></a><span><o:p></o:p></span></p>
                                 </td>
                             </tr>
                         </table>
            </div>
           <div class="col_1_of_3 span_1_of_3">
               <table border="0" cellpadding="0" cellspacing="0" 
                             style="width: 195.0pt; mso-cellspacing: 0in; mso-yfti-tbllook: 1184; mso-padding-alt: 3.75pt 3.75pt 3.75pt 3.75pt; line-height: 115%; font-size: 11.0pt; font-family: Calibri, sans-serif;" 
                             width="260" >
                             <tr>
                                 <td>
                                     <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal; color: #FFFFFF; background-color: #333333;">
                                         <b><span>New Customers</span></b><span><o:p></o:p></span></p>
                                 </td>
                             </tr>
                             <tr>
                                 <td valign="top">
                                     <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal">
                                         <span>
                                         <br />
                                         Enter your email address and create a password.&nbsp;<br />
                                         Name  <br /><asp:TextBox 
                  ID="txtname" runat="server" Width="161px"></asp:TextBox> &nbsp;<asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator2" runat="server"  ControlToValidate="txtname"
                  ErrorMessage="*"></asp:RequiredFieldValidator><br />  Address  <asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator3" runat="server" ControlToValidate="comments" ErrorMessage="*"></asp:RequiredFieldValidator>
     <br /> <asp:TextBox 
                  ID="comments" runat="server" Height="51px" TextMode="MultiLine" 
                  Width="201px"></asp:TextBox>&nbsp;  <br />Contact  <br /><asp:TextBox 
                  ID="txtcontact" runat="server"  Width="194px" ></asp:TextBox><asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcontact" 
                  ErrorMessage="*"></asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator 
                  ID="RegularExpressionValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtcontact"
                  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                         <br />
                                         <b>E-mail</b>(e.g. joe@aol.com)&nbsp;<br />
                                         <asp:TextBox 
                  ID="txtemail" runat="server" Width="197px"></asp:TextBox>  <asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" 
                  ErrorMessage="*"></asp:RequiredFieldValidator> <asp:RegularExpressionValidator 
                  ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtemail" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                         <br />
                                         <br />
                                         <b>Password</b>&nbsp;(min. six char.)&nbsp;<br />
                                         <asp:TextBox 
                  ID="p1" runat="server"  Width="188px" TextMode="Password" 
          ForeColor="Black" ></asp:TextBox><asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator6" runat="server" ControlToValidate="p1" 
                  ErrorMessage="*"></asp:RequiredFieldValidator>
                                         <br />
                                         <br />
                                         <b>Confirm&nbsp;Password</b>&nbsp;<br />
                                         <asp:TextBox 
                  ID="TextBox3" runat="server"  Width="188px" TextMode="Password" 
          ForeColor="Black" ></asp:TextBox>
        <asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" 
                  ErrorMessage="*"></asp:RequiredFieldValidator>
                                         <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="p1" ControlToValidate="TextBox3" 
            ErrorMessage="Password not matched..!!!"></asp:CompareValidator>
      <asp:Label ID="Label5" runat="server" Font-Bold="False" ForeColor="#CC0000"></asp:Label>
                                         <br />
                                         <o:p></o:p></span>
      <asp:Button ID="Button3" runat="server" Text="Register" BackColor="#990033" 
          Font-Bold="False" ForeColor="White" Height="23px" Width="71px" Font-Italic="True" Font-Size="X-Small" />
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
            </div>
          <%-- <div class="col_1_of_3 span_1_of_3">
                <table align="left" border="0" cellpadding="0" cellspacing="0" 
                         style="width: 195.0pt; mso-cellspacing: 0in; mso-yfti-tbllook: 1184; mso-table-lspace: 2.25pt; mso-table-rspace: 2.25pt; mso-table-anchor-vertical: paragraph; mso-table-anchor-horizontal: column; mso-table-left: left; mso-padding-alt: 3.75pt 3.75pt 3.75pt 3.75pt; line-height: 115%; font-size: 11.0pt; font-family: Calibri, sans-serif;" 
                         width="260" >
                         <tr>
                             <td>
                                 <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal; color: #FFFFFF; background-color: #333333;">
                                     <b><span>Track your Order</span></b><span><o:p></o:p></span></p>
                             </td>
                         </tr>
                         <tr>
                             <td valign="top">
                                 <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal">
                                     <span>
                                     <br />
                                     See your order even if you are not a registered user.&nbsp;&nbsp;Enter the Order Number 
                                     and the Billing Address Zip Code.&nbsp;<br />
                                     <br />
                                     <b>Order Number</b><br />
                                     &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
                                     <br />
                                     <b>E-mail</b><br />
                                     &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /> 
                                     <br />
                                     </span>
                                                                                </p>
                                 <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal">
                                     <span>
      <asp:Button ID="Button5" runat="server" Text="View Order" BackColor="#990033" 
          Font-Bold="False" ForeColor="White" Height="23px" Width="75px" Font-Italic="True" Font-Size="X-Small" 
                                         CausesValidation="False" />
                                     </span>
                                                                                </p>
                                                                                                  <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal">
                                                                                                      &nbsp;</p>
                                                                                                  <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;
    line-height:normal">
                                                                        <span>If you would like to track your order <br />without logging in you can just enter the Order number <br />
                                                                                                      and billing zip code in the form below.<o:p></o:p></span></p>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
            </div>--%>

          </div>

 <center>
 
    <div align="center">
         <table border="0" cellpadding="0" cellspacing="0" 
             style="width: 562.5pt; mso-cellspacing: 0in; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in; line-height: 115%; font-size: 11.0pt; font-family: Calibri, sans-serif;" 
             width="750">
             <tr>
                 <td>
                     <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                         &nbsp;</p>
                     <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
  normal">
                         <b><span style="color: #999999; font-family: Calibri; font-size: small">You can 
                         call Customer Service 24 hours a day at &nbsp;(International No will be Provided to 
                         u)</span></b><span><o:p></o:p></span></p>
                 </td>
             </tr>
         </table>
     </div>
     <div align="center">
         <table border="0" cellpadding="0" cellspacing="1" 
             style="width: 562.5pt; mso-cellspacing: .7pt; mso-yfti-tbllook: 1184; mso-padding-alt: 2.25pt 2.25pt 2.25pt 2.25pt; line-height: 115%; font-size: 11.0pt; font-family: Calibri, sans-serif;" 
             width="750">
             <tr>
                 <td>
                     &nbsp;</td>
             </tr>
             </table>
     </div>
     <p class="MsoNormal" style="margin-bottom:0in;margin-bottom:.0001pt;line-height:
normal">
         <span><o:p>&nbsp;</o:p></span></p>
     <div align="center">
         <table border="0" cellpadding="0" cellspacing="1" 
             style="width: 525.0pt; mso-cellspacing: .7pt; mso-yfti-tbllook: 1184; mso-padding-alt: 2.25pt 2.25pt 2.25pt 2.25pt; line-height: 115%; font-size: 11.0pt; font-family: Calibri, sans-serif;" 
             width="700">
             <tr>
                 <td valign="top" width="260">
                     <div align="center">
                       
                     </div>
                 </td>
                 <td valign="top" width="20">
                            </td>
                 <td valign="top" width="260">
                     <div align="center">
                         
                                                                    </div>
                                                                </td>
                                                                <td width="10">
                                                                    </td>
                                                                <td rowspan="2" valign="top" width="160">
                                                                    &nbsp;</td>
                                                                
                                                                
                                                                <td>
                                                                
                                                                
                                                                
                                                                  <div align="center">
                                                        <table border="0" cellpadding="0" cellspacing="1" 
                                                            
                                                                          style="width: 201pt; mso-cellspacing: .7pt; mso-yfti-tbllook: 1184; mso-padding-alt: 2.25pt 2.25pt 2.25pt 2.25pt; line-height: 115%; font-size: 11.0pt; font-family: Calibri, sans-serif;">
                                                           
             <tr>
                 <td valign="top" width="260">
                    
                                                          
                   
                     <br />
                 
                                                                <br />
                     <asp:Label ID="Label7" runat="server" Font-Underline="True" ForeColor="Black" 
                         Text="Detail" Visible="False"></asp:Label>
                     <br />
                     <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
                   
                     <br />
                     <br />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                                
                                                                
                                                                
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                </td>
                                                                <td>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    
                                                  
 
 </center>
 

</asp:Content>


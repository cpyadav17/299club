<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<div style="width:1000px">
        <p style="text-align:left">
     
            &nbsp;</p>
        <p style="text-align:left">
            <img src="images/Contact-Us.png" width="100%" />
           
        </p>
        <p style="text-align:left">
     
            &nbsp;</p>
        <p style="text-align:left">
     
            Do you have a question? A comment? A concern? Please send us an email. We&#39;d be 
            glad to hear what you think, and will address any questions or concerns you 
            might have. You may also contact us by phone at (I will provide u International 
            No to U).</p>
        <p style="text-align:left">
     
     &nbsp;</p>
        <p style="text-align:left">
     
            This message is about&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="247px">
                <asp:ListItem>Please keep this option written below</asp:ListItem>
                <asp:ListItem>Product Information</asp:ListItem>
                <asp:ListItem>Delivery of My Order</asp:ListItem>
                <asp:ListItem>My Online Order</asp:ListItem>
                <asp:ListItem>Website Concern
                </asp:ListItem>
                <asp:ListItem>Rest all Option is not needed.</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p style="text-align:left">
     
            &nbsp;</p>
        <p style="text-align:left">
     
     &nbsp;<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p style="text-align:left">
     
            &nbsp;</p>
        <p style="text-align:left">
     
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Verify Email"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p style="text-align:left">
     
            &nbsp;</p>
        <p style="text-align:left">
     
     &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;    <asp:Label ID="Label5" runat="server" Text="Phone "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;
          
        </p>
        <p style="text-align:left">
     
            &nbsp;</p>
        <p style="text-align:left">
     
     &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Message"></asp:Label>
        </p>
        <p style="text-align:left">
     
     &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Height="130px" TextMode="MultiLine" 
                Width="80%"></asp:TextBox>
        </p>
        <p style="text-align:left">
     
            &nbsp;</p>
        <p style="text-align:left">
     
     &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#CC0000" ForeColor="White" 
                Height="23px" Text="Submit Enquiry" Width="104px" />
        </p>
        <p style="text-align:left">
     
            &nbsp;</p>
      
    </div>
</center>
</asp:Content>


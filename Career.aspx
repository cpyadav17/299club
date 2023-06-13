<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Career.aspx.vb" Inherits="Career" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<center> 
    <img src="images/career.jpg" width="100%" height="200px" />
    <br />
          
</center> 
     <div class="wrap">

       <asp:DataList ID="dtlist" runat="server" RepeatColumns="1" CellPadding="4" 
        BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="0px" 
        ForeColor="Black" GridLines="Horizontal" Width="100%">
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
<ItemTemplate>

    <asp:LinkButton ID="LinkButton1" Font-Size="Medium"  runat="server" Text='<%# Bind("title")%>' 
        CommandName = "answer" Font-Bold="True" ForeColor="#0066FF"></asp:LinkButton> 
    - 
    <asp:Label ID="Label1" Font-Size="Medium" runat="server" Text='<%# Bind("qlf")%>'></asp:Label> 
    ( Exp : <asp:Label ID="Label2" Font-Size="Small" runat="server" Text='<%# Bind("exp")%>'></asp:Label>
    )
   
   <br />
    <asp:Label ID="Label9" Font-Size="Small" runat="server" Text="Job Code* - "></asp:Label> 
     <asp:Label ID="Label10" Font-Size="Small" runat="server" 
        Text='<%# Bind("id") %>' ForeColor="#990033"></asp:Label> 
   <p style="text-align:justify ">
    <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Responsibility" 
           Font-Bold="True" ForeColor="#333333"></asp:Label> (Last Date :  <asp:Label ID="Label5" Font-Size="Small" runat="server" Text='<%# Bind("ldate")%>'></asp:Label>
       ) <br />
   <asp:Label ID="Label3" Font-Size="Small" runat="server" Text='<%# Bind("des")%>'></asp:Label>
   </p>
   
</ItemTemplate>
<ItemStyle BorderColor="Yellow"  BorderStyle="Outset"  BorderWidth="0px" HorizontalAlign="Center"
VerticalAlign="Bottom" />
    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
</asp:DataList>

    
    
    
        <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#009900"></asp:Label>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Job Code"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="166px"></asp:TextBox><br />
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="260px"></asp:TextBox><br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Message (please mension job code**)"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Height="134px" TextMode="MultiLine" 
            Width="325px"></asp:TextBox>
        
        <br />
        <br />
        
        <asp:Label ID="Label7" runat="server" Text="Upload Resume :"></asp:Label>
<asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#3333FF" 
    Height="23px" Width="255px" />
        <br />
        <br />
     <center>  <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#0066FF" 
             Font-Bold="True" ForeColor="White" Height="30px" Width="73px" /></center> 
         </div>

</asp:Content>


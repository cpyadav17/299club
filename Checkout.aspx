<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Checkout.aspx.vb" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrap"> <br /> <br />
     <center> 
         <h3>Payment Mode: Case on Delivery</h3> 
         </center>
   
         
      <div class="col_1_of_3">

  <br />
   Name  <br /><asp:TextBox ID="TextBox1"  class="form-control" runat="server" Height="22px" Width="200px"></asp:TextBox> <br /> <br />

  Email  <br /> <asp:TextBox ID="TextBox2" runat="server" Height="22px"  Width="200px"></asp:TextBox> <br /> <br />

  Contact  <br /> <asp:TextBox ID="TextBox3" runat="server" Height="22px"  Width="200px"></asp:TextBox> <br /> <br />

   Address 
    <br />
    <asp:TextBox ID="TextBox4"  runat="server"  Width="263px" Height="62px" TextMode="MultiLine"></asp:TextBox>
     <br />
    <br />

      </div>    
          
      <div class="col_1_of_3">
           <br />
     <br />
Total Cost:<b> INR. <asp:label  ID="total" runat="server" text=""></asp:label> /-</b>
         <br /><br />
  <center>  
      <img src="images/payment.PNG" />
       <br /><br />
      Transaction No.      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox5" runat="server" ErrorMessage="**"></asp:RequiredFieldValidator>
 <br /> <asp:TextBox ID="TextBox5" runat="server" Height="22px"  Width="200px"></asp:TextBox> <br /> <br />
        
      <asp:ImageButton ID="ImageButton1" runat="server" Width="150px" ImageUrl="~/images/confirm_button.png" />
     <br /><br />

          </div>
    
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableViewState="False"
        EnableTheming="True" Width="80%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"
        BorderWidth="3px" CellPadding="4" ForeColor="Black" CellSpacing="2" EnableModelValidation="True">
        <Columns>
            <asp:BoundField HeaderText="Item ID" DataField="ID">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Product" HeaderText="Product" />
            <asp:BoundField DataField="Rate" HeaderText="Rate" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="Size" HeaderText="Size" />
            <asp:ButtonField ButtonType="Button" HeaderText="Action" Text="  X  " CommandName="deletee">
                <ControlStyle BackColor="#CC0000" />
                <ItemStyle Font-Bold="True" Font-Size="14pt" ForeColor="White" HorizontalAlign="Center" />
            </asp:ButtonField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
   
    <img src="images/123.png" width="98%" />
    <br />
    <br /></center>

         </div>
</asp:Content>


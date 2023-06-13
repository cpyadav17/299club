<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="shopcart.aspx.vb"
    Inherits="shopcart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
    <br />
    <asp:ImageButton ID="ImageButton1" ImageUrl="images/proceed-btn.png" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
        <br />
        <div class="myGridClass">
    <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" EnableViewState="False"
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
    </asp:GridView></div>
    <br />
    <img src="images/123.png" width="98%" />
    <br />
    <br /></center>
</asp:Content>

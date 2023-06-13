<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Product.aspx.vb" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrap">
    <div class="content-bottom">
				   <div class="box1">
				   
   <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="PlaceHolder1">
    <LayoutTemplate>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
        </LayoutTemplate>
    <ItemTemplate>
    
   
      <div class="col_1_of_3 span_1_of_3"><a href="#">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">
					  	<a href="info.aspx?Item=<%# Eval("ID") %>">
           <asp:Label ID="Label3" ForeColor="#5A5A5A"  runat="server" Text='<%# Eval("Item").ToString().Substring(0, Math.Min(32, Eval("Item").ToString().Length))%>' >
           
           </asp:Label>... </a> </h3>
					  	<p class="m_2">Brilliant Value® Item Code # <%# Eval("ID")%></p>
				         <div class="grid_img">
						   <div class="css3">
						   
        <asp:Image ID="Image1"  Height="173px" ImageUrl='<%# Bind("image", "./Product/{0}")%>' runat="server" /> 
    
   
						   
						   </div>
					          <div class="mask">
	                       		<div class="info">
	                       		
	                       		<a style="color:White" href="info.aspx?Item=<%# Eval("ID") %>">Quick View </a></div>
			                  </div>
	                    </div> <p class="m_2">Size: <%# Eval("Size")%> | Fabric: <%# Eval("Fabric")%></p>
                       <%--<div class="price">
                          &#2352; <%#Eval("rate")%>  /-</div> --%>
					   </div>
                        
					    </div>
					   <span class="rating">
                             <p> INR. <%#Eval("rate")%> </p>

		        	
		    	      </span>
					<ul class="list">
						  <li>
						  	<img src="images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="info.aspx?Item=<%# Eval("ID") %>">Buy Now</a>
							
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
            
       
        
    </ItemTemplate>
</asp:ListView>  
				   
				   
				   		    
				    
				
				  <div class="clear"></div>
			  </div>
			
			  </div>

        </div>
</asp:Content>


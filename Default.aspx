<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

             
            <div class="index-banner">
       	  <div class="wmuSlider example1" style="height: 560px;">
			  <div class="wmuSliderWrapper">
				  <article style="position: relative; width: 100%; opacity: 1;"> 
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						   
						    <h2>Shoes Collection</h2>
						    <p>Love, Passion, Romance</p>
						    <div class="btn"><a href="Product.aspx">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
					</article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						   
						    <h2>Best & Latest</h2>
						    <p>Shoes</p>
						    <div class="btn"><a href="Product.aspx">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner3.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						   
						    <h2>Brands</h2>
						    <p>Authentic Brands</p>
						    <div class="btn"><a href="Product.aspx">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				  
				   
				</div>
                <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                	
                  </ul>
                 <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a><ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li><li><a href="#" class="">1</a></li><li><a href="#" class="">2</a></li></ul></div>
            	 <script src="js/jquery.wmuSlider.js"></script> 
				 <script type="text/javascript" src="js/modernizr.custom.min.js"></script> 
						<script>
						    $('.example1').wmuSlider();         
   						</script> 	           	      
             </div>
             
             
             
               <div class="wrap">
             	  <div class="content-top">
             		<div class="lsidebar span_1_of_c1">
					  <p>LATEST CATALOGUES</p>
					</div>
					<div class="cont span_2_of_c1">
					  <div class="social">	
					     <ul>	
						  <li class="facebook"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"><a href="#"> </a></div><div class="border hide"><p class="num"></p></div></li>
						 </ul>
			   		   </div>
					   <div class="social">	
						   <ul>	
							  <li class="twitter"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num"></p></div></li>
						  </ul>
			     		</div>
						 <div class="social">	
						   <ul>	
							  <li class="google"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num"></p></div></li>
						   </ul>
			    		 </div>
						 <div class="social">	
						   <ul>	
							  <li class="dot"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num"></p></div></li>
						  </ul>
			     		</div>
						<div class="clear"> </div>
					  </div>
					  <div class="clear"></div>			
				   </div>
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


<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Info.aspx.vb" Inherits="Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

<!-- end menu -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
		    $(function () {
		        $('.scroll-pane').jScrollPane();
		    });
		</script>
<!----details-product-slider--->
				<!-- Include the Etalage files -->
					<link rel="stylesheet" href="css/etalage.css">
					<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
				    jQuery(document).ready(function ($) {

				        $('#etalage').etalage({
				            thumb_image_width: 400,
				            thumb_image_height: 400,

				            show_hint: true,
				            click_callback: function (image_anchor, instance_id) {
				                alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
				            }
				        });
				        // This is for the dropdown list example:
				        $('.dropdownlist').change(function () {
				            etalage_show($(this).find('option:selected').attr('class'));
				        });

				    });
				</script>
				<!----//details-product-slider--->	
<!-- top scrolling -->
	
<div class="single">
         <div class="wrap">
     	    
		<div class="cont span_2_of_3">
			  <div class="labout span_1_of_a1">
				<!-- start product_slider -->
				     <ul id="etalage">
							<li>
								<a href="optionallink.html">
                                    <asp:Image class="etalage_thumb_image"   ID="Image1" runat="server" />
                                    <asp:Image class="etalage_source_image"   ID="Image2" runat="server" />
									
								</a>
							</li>
							
							
							
						</ul>
                   <asp:ImageButton ID="ImageButton10" runat="server"  Width="50px" Height="50px"  />
                  <asp:ImageButton ID="ImageButton2" runat="server"  Width="50px" Height="50px"  />
                     <asp:ImageButton ID="ImageButton3" runat="server"  Width="50px" Height="50px"  />
                     <asp:ImageButton ID="ImageButton4" runat="server"  Width="50px" Height="50px"  />
                     <asp:ImageButton ID="ImageButton5" runat="server"  Width="50px" Height="50px"  />
                     <asp:ImageButton ID="ImageButton6" runat="server"  Width="50px" Height="50px"  />
                     <asp:ImageButton ID="ImageButton7" runat="server"  Width="50px" Height="50px"  />
					   <asp:ImageButton ID="ImageButton8" runat="server"  Width="50px" Height="50px"  />
                     <asp:ImageButton ID="ImageButton9" runat="server"  Width="50px" Height="50px"  />
					
					
			<!-- end product_slider -->
			</div>
			<div class="cont1 span_2_of_a1">
				<h3 class="m_3">
				
                    <asp:Label ID="Title1" runat="server" Text="......."></asp:Label>
                     <asp:Label ID="Label1" runat="server" Visible="false" Text=""></asp:Label>
				</h3>
			
				<%--<div class="price_single">
							 
							  <span class="actual">
							  
							र  /-
							  </span>
							</div>--%>
			<asp:Label ID="price" runat="server" Visible="false" Text="......."></asp:Label> 
        
       
				<div class="btn_form">
				   <form>
					<asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/add-to-cart-button.png" Width="225px" />
         
                   <asp:Label ID="errorr" runat="server" ForeColor="Red" Text=""></asp:Label>
				  </form>
				</div>
				
    			<p class="m_desc">
    			 <asp:DataList ID="DataList1" runat="server" Width="95%" 
            BackColor="White"
            CellPadding="2" ForeColor="Black">
            <FooterStyle BackColor="Tan" />
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <div style="border:2px dashed #1f96d4;border-radius:5px;padding:10px;width:80%">
               <br />
                Quality : <asp:Label ID="Fabric" runat="server" Text='<%# Bind("Fabric")%>' 
                    ForeColor="#FF9000"></asp:Label><br /><br />
                Colour : <asp:Label ID="Colour" runat="server" Text='<%# Bind("Colour")%>' 
                    ForeColor="#FF9000"></asp:Label><br /><br />
                Size : <asp:Label ID="Size" runat="server" Text='<%# Bind("Size")%>' 
                    ForeColor="#FF9000"></asp:Label><br /><br />
                Delivery : <asp:Label ID="Delivery" runat="server" Text='<%# Bind("Delivery")%>' 
                    ForeColor="#FF9000"></asp:Label><br /><br />
                Minimum Unit Order :  <asp:Label ID="Minimum" runat="server" Text='<%# Bind("Minimum_Order")%>' 
                    ForeColor="#FF9000"></asp:Label><br /><br />
                
                Description : <asp:Label ID="Description" runat="server" Text='<%# Bind("Description") %>' 
                    ForeColor="#FF9000"></asp:Label><br /><br />
               </div>
            
            </ItemTemplate>
        </asp:DataList>
    			
    			</p>
    			
                <div class="social_single">	
				   <ul>	
					  <li class="fb"><a href="#"><span> </span></a></li>
					  <li class="tw"><a href="#"><span> </span></a></li>
					  <li class="g_plus"><a href="#"><span> </span></a></li>
					  <li class="rss"><a href="#"><span> </span></a></li>		
				   </ul>
			    </div>
			</div>
			<div class="clear"></div>
            <br /> <br />
     <ul id="flexiselDemo3">
        <asp:ListView ID="ListView1" runat="server" ItemPlaceholderID="PlaceHolder1">
    <LayoutTemplate>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
        </LayoutTemplate>
    <ItemTemplate>
    
         
			<li><a href="info.aspx?Item=<%# Eval("ID")%>">
                <img src="./Product/<%#Eval("image")%>" width="150px" height="150px" />

			    </a><div class="grid-flex"><a href="info.aspx?Item=<%# Eval("ID")%>"><%# Eval("item") %></a>
                   <%-- <p>र. <%#Eval("Rate")%></p>--%></div></li>
			
		 
		 </ItemTemplate></asp:ListView></ul>
		 
	    <script type="text/javascript">
	        $(window).load(function () {
	            $("#flexiselDemo1").flexisel();
	            $("#flexiselDemo2").flexisel({
	                enableResponsiveBreakpoints: true,
	                responsiveBreakpoints: {
	                    portrait: {
	                        changePoint: 480,
	                        visibleItems: 1
	                    },
	                    landscape: {
	                        changePoint: 640,
	                        visibleItems: 2
	                    },
	                    tablet: {
	                        changePoint: 768,
	                        visibleItems: 3
	                    }
	                }
	            });

	            $("#flexiselDemo3").flexisel({
	                visibleItems: 5,
	                animationSpeed: 1000,
	                autoPlay: true,
	                autoPlaySpeed: 3000,
	                pauseOnHover: true,
	                enableResponsiveBreakpoints: true,
	                responsiveBreakpoints: {
	                    portrait: {
	                        changePoint: 480,
	                        visibleItems: 1
	                    },
	                    landscape: {
	                        changePoint: 640,
	                        visibleItems: 2
	                    },
	                    tablet: {
	                        changePoint: 768,
	                        visibleItems: 3
	                    }
	                }
	            });

	        });
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	 			
	 
     </div>

     <div class="clear"></div>
	 </div>
     </div>









</asp:Content>


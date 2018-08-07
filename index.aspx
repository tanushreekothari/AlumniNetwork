<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
	<title>College Connect</title>
	<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
	<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/modal.css" type="text/css" media="all" />
	<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
		<script src="js/modernizr.custom.js"></script>
	<![endif]-->
	<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">

    <!-- wrapper -->
	<div id="wrapper">
		<!-- header -->

		<header class="header">
			<div class="shell">

				<h1 id="logo"><a href="#">CollegeConnect</a></h1>
				        
				<!-- navigation -->
				<nav id="navigation">
					<ul>
						<li class="active">
							<a href="index.aspx">Home</a>
							
						</li>
						<li>
							<a href="aboutus.aspx">About Us</a>
							
						</li>
						
						<li>
							<a href="gallery.aspx">Gallery</a>		
							
						</li>
						<li>
							<a href="successstories.aspx">Success Stories</a>
							
						</li>
                        <li>
							<a href="discussion.aspx">Bulletin Board</a>
							
						</li>
                       
                     </ul>
					
				</nav>
				<!-- end of navigation -->
			</div>
		</header>
      <a href="#x" class="overlay" id="login_form"></a>
        <div class="popup">
            <h2 style="color: #000000">Welcome Guest!</h2>
            <p>Please enter your login and password here</p>
            <div>
                <label for="login">Login</label>
                
                <asp:TextBox ID="login1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server" ErrorMessage="* Required" ControlToValidate="login1" 
                    ValidationGroup="loginform"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="password">Password</label>
                <asp:TextBox ID="password1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server" ErrorMessage="* Required" ControlToValidate="password1"   ValidationGroup="loginform"></asp:RequiredFieldValidator>
            
            </div>
            
            
            <asp:Button ID="Button1" class=" button1" runat="server" Text="Log In" onclick="Button1_Click" ValidationGroup="loginform" />
                    <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
            <a class="close" href="#close"></a>
        </div>`

        <!-- popup form #2 -->
        <a href="#x" class="overlay" id="join_form"></a>
        <div class="popup">
            <h2>Sign Up</h2>
            <p>Please enter your details here</p>
            <div>
                <label for="email">Login (Email)</label>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                    runat="server" ErrorMessage="* Required" ControlToValidate="email" 
                    ValidationGroup="signupform"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="pass">Password</label>
                <asp:TextBox ID="password2" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                    runat="server" ErrorMessage="* Required" ControlToValidate="password2" 
                    ValidationGroup="signupform"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="firstname">First name</label>
                <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                    runat="server" ErrorMessage="* Required" ControlToValidate="firstname" 
                    ValidationGroup="signupform"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="lastname">Last name</label>
                <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                    runat="server" ErrorMessage="* Required" ControlToValidate="lastname" 
                    ValidationGroup="signupform"></asp:RequiredFieldValidator>
            </div>
                        <div>
                <label for="mobile">Mobile No.</label>
                <asp:TextBox ID="mobileno" runat="server"></asp:TextBox>
                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                    runat="server" ErrorMessage="* Required" ControlToValidate="mobileno" 
                    ValidationGroup="signupform"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="Button2" class=" button1" runat="server" Text="Sign Up" onclick="Button2_Click" ValidationGroup="signupform" />&nbsp;&nbsp;&nbsp;or&nbsp;&nbsp;&nbsp;<a href="#login_form" id="A1">Log In</a>

            <a class="close" href="#close"></a>
        </div>
       
		<!-- end of header -->
		
		<!-- slider-holder -->
		<div class="slider-holder">
			<!-- shell -->
			<div class="shell">
				<span class="l"></span>
				<span class="r"></span>
				<span class="t"></span>
				<span class="b"></span>
				<a href="gallery.aspx" class="slider-btn">Explore Our Gallery</a>
				<!-- slider -->
				<div class="slider flexslider">
					<ul class="slides">
						<li>
							<img src="images/slider1.jpg" alt="" />
							<div class="slide-cnt">
								<div class="box-t"></div>
								<div class="box-c">
									<div class="box-cnt">
										<h2>Connecting Alumni Students & Faculty</h2>
										<p>GLA welcomes you to the official website for its alumni. A strong network among the alumni is a value addition to the entire community in terms of sharing knowledge amongst globally placed managers.</p>
									</div>
									<div class="cl">&nbsp;</div>
								</div>
								<div class="box-b"></div>
							</div>	
						</li>
						<li>
							<img src="images/slider2.jpg" alt="" />
							<div class="slide-cnt">
								<div class="box-t"></div>
								<div class="box-c">
									<div class="box-cnt">
										<h2>Stay Connected</h2>
										<p>Stay connected to campus updates, share and discuss queries, browse updated alumni information, access referral job openings and career opportunities, refresh memories and much more.</p>
									</div>
									<div class="cl">&nbsp;</div>
								</div>
								<div class="box-b"></div>
							</div>	
						</li>
					</ul>
				</div>
				<!-- end of slider -->
			</div>
			<!-- end of shell -->	
		</div>	
		<!-- end of slider-holder -->
        <asp:Panel ID="Panel1" runat="server">
        
            <div style="position:relative; width:300px; top: -530px; left: 988px;">
        <nav id="navigation">
				
                	<ul>
						<li class="active">
							<a href="#login_form">Log In</a>
							
						</li>
						<li class="active">
							<a href="#join_form">Sign Up</a>
							
						</li></ul></nav></div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" Visible="false">
        
        <div style="position:relative; width:223px; top: -485px; left: 1041px;">
            <b><asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                CssClass="labelprofile">LinkButton</asp:LinkButton></b>
            &nbsp;&nbsp;
            &nbsp;<asp:Button ID="Button3" runat="server" Text="Log Out" onclick="Button3_Click"  
                  CssClass="button"/>
        </div>
            
		<!-- end of header -->
		</asp:Panel>
        
		<!-- shell -->
		<div class="shell">
			<!-- main -->
			<div class="main">
				<section class="cols">
					<div class="col">
						<h3><a href="#">Latest News and Events</a></h3>
						<marquee behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();"><a href="#"><img src="css/images/mobile-applications.png" alt="" /></a>
						<p>Phasellus tincidunt lectus feugiat est vehicula a eleifend mi consequat. Mauris augue eros, vestibulum at inter-<br />dum nec, tincidunt vel tortor cras malesuada</p></marquee>
					</div>

					<div class="col">
						<h3><a href="chan.aspx">Message by Chancellor</a></h3>
						<a href="chan.aspx"><img src="images/Chancellor.gif" alt="" /></a>
						<p>A lot of emphasis is laid on the overall personality development of the students so as to foster in them the necessary drive and confidence... <a href="chan.aspx">..more</a></p>
					</div>
					
					<div class="col">
						<h3><a href="#">Message By VC</a></h3>
						<a href="#"><img src="images/Prof.-D.-S-Chauhan.gif" alt="" /></a>
						<p>Prof. D. S. Chauhan was born in 1949 at Dholpur. He did his post doctoral work at Goddard Space Flight Centre, Green belt Maryland. <a href="vc.aspx">..more</a></p>
					</div>
					
					<div class="cl">&nbsp;</div>
				</section>
			</div>
			<!-- end of main -->
		</div>
		<!-- end of shell -->
	</div>
	<!-- wrapper -->
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    
	<!-- footer -->
	<div id="footer">
		<div >
			<!-- footer-cols -->
			<section class="footer-cols">
				<div class="col1">
					<h3><strong>ABOUT US</strong></h3>
					<p>The establishment of GLA Institute of Technology and Management (GLAITM) in the year 1998 was the first recognized initiative by the society to fulfill its responsibility of providing destinations of quality professional education.</p>
				</div>
				<div class="col1">
					<h3>KEEP <strong>IN TOUCH</strong></h3>
					<p>200/1, Yugal Niwas, Raman Reti, Vrindavan, Mathura (U.P.) INDIA</p>
					<form method="post">
						<input type="text" class="field" value="Your Email Here" title="Your Email Here" />
						<input type="submit" class="submit-btn" value="Submit" />
					</form>
				</div>
				<div class="col contact">
					<h3>CONTACT <strong>US</strong></h3>
					<h4>+91-5662-250900, 250908/909</h4>
					<a href="#">glauniversity@gla.ac.in</a>
				</div>
				<div class="cl">&nbsp;</div>
			</section>
		</div>
	</div>   
	<!-- end of footer --></form>
</body>
</html>

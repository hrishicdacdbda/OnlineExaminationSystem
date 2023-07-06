<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="~/css/carousel2.css" rel="stylesheet">
    <link href="~/css/animation.css" rel="stylesheet">
    <link href="Content/separator.css" rel="stylesheet" />
    <link href="css/my2.css" rel="stylesheet" />
    <link href="css/my6.css" rel="stylesheet" />
    <link href="css/testimonial1.css" rel="stylesheet" />
    <style>
 .btn-circle.btn-xl {
  width: 70px;
  height: 70px;
  padding: 10px 16px;
  font-size: 24px;
  line-height: 1.33;
  border-radius: 35px;
}
 footer {
            background-image: url("images/Chess-Wallpapers-and-Background1.jpg"), linear-gradient(#75bd25, skyblue);
        }
  </style>
    
     <!--progress bar start-->
    
        <div class="container-fluid progress" width="20">
  <div class="progress-bar progress-bar-striped active"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
    <h4 class="modal-title" id="myModalLabel"><p id="demo"></p>%</h4>
  </div>
</div>
        <!--Progress bar end-->  
   <!--  
        If you want to change #bootstrap-touch-slider id then you have to change Carousel-indicators and Carousel-Control  #bootstrap-touch-slider slide as well
        Slide effect: slide, fade
        Text Align: slide_style_center, slide_style_left, slide_style_right
        Add Text Animation: https://daneden.github.io/animate.css/
        -->


        <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >

            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
                <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper For Slides -->
            <div class="carousel-inner" role="listbox">

                <!-- Third Slide -->
                <div class="item active">

                    <!-- Slide Background -->
                    <img src="images/Chess-Wallpapers-and-Background2.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>

                    <div class="container">
                        <div class="row">
                            <!-- Slide Text Layer -->
                            <div class="slide-text slide_style_left">
                                <h1 data-animation="animated zoomInRight">Inspiration</h1>
                                <p data-animation="animated fadeInLeft">Success</p>
                                </div>
                        </div>
                    </div>
                </div>
                <!-- End of Slide -->

                <!-- Second Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="images/online-exam.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_center">
                        <h1 data-animation="animated flipInX"> <button type="button" class="btn btn-info btn-circle btn-xl" data-animation="animated fadeInUp"><i class="fa fa-snowflake-o"></i></button>
                            ExamO.com </h1>
                        <p data-animation="animated lightSpeedIn"> <button type="button" class="btn btn-default btn-circle btn-xl" data-animation="animated fadeInUp"><i class="fa fa-snowflake-o"></i></button>
              Online Exam System</p>
                     </div>
                </div>
                <!-- End of Slide -->

                <!-- Third Slide -->
                <div class="item">

                    <!-- Slide Background -->
                    <img src="images/Online-Exam-Portal.jpeg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                    <div class="bs-slider-overlay"></div>
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_right">
                        <h1 data-animation="animated zoomInLeft">Highly Qualified Coaches</h1>
                        <p data-animation="animated fadeInRight">Well Equipped Infrastructure</p>
                        </div>
                </div>
                <!-- End of Slide -->


            </div><!-- End of Wrapper For Slides -->

            <!-- Left Control -->
            <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
                <span class="fa fa-angle-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <!-- Right Control -->
            <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
                <span class="fa fa-angle-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div> <!-- End  bootstrap-touch-slider Slider -->
     <!-- ================ -->
			<section class="section default-bg clearfix" style="background-color:Gray">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="call-to-action text-center">
								<div class="row">
									<div class="col-sm-8">
										<h1 class="title" style="font-family: Quicksand; color: #CCCCCC">WE OFFER MORE POSSIBILITIES TO MEET YOUR EVERY NEED</h1></div>
									<div class="col-sm-4">
										<br>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- section end -->
        <!-- section start -->
			<!-- ================ -->
			<section class="light-gray-bg pv-30 clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							 <h2 class="text-center" style="font-family: Philosopher">We <i class="fa fa-heart text-default" style="color: rgb(9, 175, 223);"></i> What We Do</h2>
							<hr class="style14">
							
						<p style="font-family: 'Josefin Sans'; font-size: medium; color: #808080; font-weight: 900;">A corporation of discovery<br /> 
    Our purpose to simple and discover ideal and increase brain power of all.in changing world all change faster so everyone wants to faster.
    <br /> Committed to social responciblity<br /> 
    we measures our success not only in business achivements but also bye how well we serve our community,protect our resources and make difference
    in peoples lives
    <br /> Aim<br /> 
    Making a champions
</p>
                        </div>
						
						<div class="col-md-6">
							<div class="pv-30 feature-box margin-clear text-center object-non-visible" data-animation-effect="fadeInDownSmall" data-effect-delay="150">
								
                                <button type="button" class="btn btn-info btn-circle btn-xl"><i class="fa fa-connectdevelop"></i></button>

								<h3 style="font-family: Philosopher">We Are Extremely Flexible</h3>
								<hr class="style18">
								<p style="font-family: 'Josefin Sans'; font-size: medium; color: #808080; font-weight: 900;">We are keen to give services to our clients.</p>
								
							</div>
						</div>
						<div class="col-md-6">
							<div class="pv-30 feature-box margin-clear text-center object-non-visible" data-animation-effect="fadeInDownSmall" data-effect-delay="200">
							
                                <button type="button" class="btn btn-info btn-circle btn-xl"><i class="fa fa-snowflake-o"></i></button>
								<h3 style="font-family: Philosopher">We Use Latest Technologies</h3>
								<hr class="style18">
								<p style="font-family: 'Josefin Sans'; font-size: medium; color: #808080; font-weight: 900;">For providing exellent service we use different high technologies . </p>
								
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- section end -->
     <!--first Isotops start-->
      <div class="col-md-3 filter webdesign graphic">
            <div class="each-item">
                <img class="port-image" src="Images/MCA.jpg" />
                <div class="cap1">
                    <h3>Chess Competiton</h3>
                    <p>A chess Competiton held in our Place Images</p>
                </div>
                <div class="cap2">
                    <h4 class="text-center"><a href="ChessImages.aspx">Visit</a></h4>
                </div>
            </div>
        </div>
        
        <div class="col-md-3 filter photo">
            <div class="each-item">
                <img class="port-image" src="Images/R.jpg" />
                <div class="cap1">
                    <h3>Basic of Chess</h3>
                    <p>Everyone can learn chess Please visit our lecture video series..</p>
                </div>
                <div class="cap2">
                    <h4 class="text-center"><a href="Videos.aspx">Visit</a></h4>
                </div>
            </div>
        </div>
    
      <div class="col-md-3 filter photo">
            <div class="each-item">
                <img class="port-image" src="Images/heroMSCS-820x400.jpg" />
                               <div class="cap1">
                    <h3>Skate Competition</h3>
                    <p>Our team take part in state level skating competiont Images</p>
                </div>
                <div class="cap2">
                    <h4 class="text-center"><a>Visit</a></h4>
                </div>
            </div>
        </div>

      <div class="col-md-3 filter photo">
            <div class="each-item">
                <img  class="port-image" src="Images/mech-eng.jpg" />
               
                <div class="cap1">
                    <h3>Basics of Skating</h3>
                    <p>At our sports acadamy we teach basics of skating please visit...!</p>
                </div>
                <div class="cap2">
                    <h4 class="text-center"><a href="Videos2.aspx">Visit</a></h4>
                </div>
            </div>
        </div>
      <!--first Isotops end-->
         <!--Testimonial start-->
      <div class="container">
<div class="row">
                    <div class="col-md-12" data-wow-delay="0.2s">
                        <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                            <!-- Bottom Carousel Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#quote-carousel" data-slide-to="0" class="active"><img class="img-responsive " src="images/Hrishikesh.jpg" alt="">
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="1"><img class="img-responsive" src="images/Harshad.jpg" alt="">
                                </li>
                                <li data-target="#quote-carousel" data-slide-to="2"><img class="img-responsive" src="images/anil.png" alt="">
                                </li>
                            </ol>

                            <!-- Carousel Slides / Quotes -->
                            <div class="carousel-inner text-center">

                                <!-- Quote 1 -->
                                <div class="item active">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p style="font-family: Comfortaa; font-size: medium; font-style: inherit; font-variant: inherit; text-transform: inherit; color:#FF4136">Just Perfect...!We like your work so much...!</p>
                                                <small>Early Batch Student</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 2 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p style="font-family: Comfortaa; font-size: medium; font-style: inherit; font-variant: inherit; text-transform: inherit; color:#FF4136">They are good at their services </p>
                                                <small>One of Our Constumer</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 3 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2">

                                                <p style="font-family: Comfortaa; font-size: medium; font-style: inherit; font-variant: inherit; text-transform: inherit; color:#FF4136">they do one of the best work in world </p>
                                                <small>Someone Person</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                            </div>

                            <!-- Carousel Buttons Next/Prev -->
                            <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
                            <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div>
                </div>
</div>
<hr class="divider"/>
        <!--Testimonial end-->
     
    <!--footer start from here-->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-6 footerleft ">
        <div class="logofooter">ExamO.com<i class="glyphicon glyphicon-bishop"></i></div>
        <p>ExamO.com work since 2010 we provide coaching classes and high quality product.</p>
        <p><i class="fa fa-map-pin" style="color: #09afdf"></i> vishrambag ,sangli -        416416, INDIA</p>
        <p><i class="fa fa-phone " style="color: #09afdf"></i> Phone (India) : +91 9999 878 398</p>
        <p><i class="fa fa-envelope" style="color: #09afdf"></i> E-mail : info@webenlance.com</p>
        
      </div>
      <div class="col-md-2 col-sm-6 paddingtop-bottom">
        <h6 class="heading7">GENERAL LINKS</h6>
        <ul class="footer-ul">
          <li><a href="#" style="color: #09afdf"> Career</a></li>
          <li><a href="#" style="color: #09afdf"> Privacy Policy</a></li>
          <li><a href="#" style="color: #09afdf"> Terms & Conditions</a></li>
          <li><a href="#" style="color: #09afdf"> Client Gateway</a></li>
          <li><a href="#" style="color: #09afdf"> Ranking</a></li>
         
          <li><a href="#" style="color: #09afdf"> Frequently Ask Questions</a></li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6 paddingtop-bottom">
        <h6 class="heading7">LATEST POST</h6>
        <div class="post">
          <p>facebook <span style="color: #09afdf">May 15,2017</span></p>
          <p>facebook <span style="color: #09afdf">December 30,2016</span></p>
          <p>facebook <span style="color: #09afdf">August 03,2016</span></p>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 paddingtop-bottom">
        <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-height="300" data-small-header="false" style="margin-bottom:15px;" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
          <div class="fb-xfbml-parse-ignore">
            <blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote>
             <blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">Instagram</a></blockquote>
          <blockquote cite="https://www.facebook.com/facebook"><a href="https://www.facebook.com/facebook">gmail</a></blockquote>
         
               </div>
        </div>
      </div>
        
    </div>
      <!--social network-->
       
        <div class="col-md-12">
            <center>                    <ul class="social-network social-circle ">
                        <li><a href="#" class="icoRss a1" title="Rss"><i class="fa fa-rss"></i></a></li>
                        <li class="facebook"><a href="#" class="icoFacebook a1" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li class="twitter"><a href="#" class="icoTwitter a1" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li class="googleplus"><a href="#" class="icoGoogle a1" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" class="icoLinkedin a1" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
              
                    </ul>				
                </center>

				</div>
        <!--social network end-->
  </div>
    
</footer>
<!--footer start from here-->
 
    <script src="js/jquery.min.js"></script>
 
       <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="Scripts/bootstrap.js"></script>
    <script src="js/carousel2.js"></script>
    
</asp:Content>


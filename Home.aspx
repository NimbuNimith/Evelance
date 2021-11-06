<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Final_year_Project.Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Evelance</title>
    <link rel="shortcut icon" href="logo.ico" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity=" ha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />

    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.0/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.6.0/ScrollToPlugin.min.js"></script>

    <link rel="stylesheet" href="sakura.css" />
    <link rel="stylesheet" href="foot.css" />
    <link href="hover.css" rel="stylesheet">
    <link href="foot.scss" rel="stylesheet">
    <link href="shreyas.css" rel="stylesheet">
    <link href="homeshow.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
    <style>
        /* Remove the navbar's default rounded borders and increase the bottom margin */
          html {
  scroll-behavior: smooth;
  
}
    .navbar {
      
      border-radius: 0;
	  background: #5a1a6b;

	  
    }
	a{
	color:#edd805;
	font-weight:bold;
	}
  a:hover{
    color: #918506;
  }
	.text-white{
	text-shadow:2px 2px #000000;
	}

   .carousel-item >img {
    height: 600px;
    
}
  .carousel-caption >h5{
    font-weight: bold;
    color: white;
    position: relative;
    top: -217px;
    left: -25px;
    text-shadow: 0 5px 6px rgb(0 0 0);
    font-size: 32px;
    font-family: auto;
  }

  .carousel-caption >p{
    font-weight: bold;
    color: white;
    position: relative;
    top: -70px;
    left: -25px;
    text-shadow: 0px 2px 7px black;
    font-size: 23px;
  }
  h2{
    text-align: center;
    color: white;
    font-weight: normal;
    font-family: Amsterdam;
    font-size: 30px;
  }
  #loading {
    -webkit-animation: rotation 50s infinite linear;
    z-index: -1;
}
#try:hover {
	-webkit-animation: bruh 1s 0s linear ;
}
.d-block{
  object-fit: cover;
}
.fa-search{
	color: red;
	font-size: 39px;
	/* text-shadow: 0 7px 15px rgb(0 0 0 /.6); */
}
#big:hover 
{
	-webkit-transform: font-size:30px;
}
footer a:hover{
  background: #75228b;
}
.nav{
  height: 10px;
}
#divider{
  width: 202px;
    
    position: absolute;
    top: 266px;
    left: 43%;
}


@-webkit-keyframes bruh {
    from 
    	{
        -webkit-transform: rotate(0deg);
        -webkit-transform: padding:10px;
        
        }
    to {
        -webkit-transform: rotate(359deg);
        -webkit-transform: padding:39px;
    }

    
}


@-webkit-keyframes rotation {
    from {
        -webkit-transform: rotate(0deg);
    }
    to {
        -webkit-transform: rotate(359deg);
    }
}
  @font-face{
    font-family: Amsterdam;
    src:url(Amsterdam.otf)format("opentype");
  }
  @font-face{
    font-family: Montserrat;
    src:url(Montserrat-SemiBold.ttf)format("opentype");
  }
  .div1{
      height:350px;
  }
  .div{
      height:350px;
  }
  
  
    </style>
</head>
<body style="background: white; overflow-x: hidden;">
    <!--linear-gradient(to top, #336699 0%, #66ffff 100%) body -->
    <!--linear-gradient(to bottom, #00cc99 0%, #00ff00 100%) navbar -->

    <div class="dd" style="position: fixed; z-index: 2; width: 100%;">
        <div style="display: flex; align-items: center; justify-content: flex-start; position: fixed;">

            <div style="position: absolute; z-index: 3; display: flex; justify-content: center; align-items: center;">
                <img src="logo-bg.png" id="loading">
                <img src="lo.png" style="position: absolute; background-size: 20px; height: 100px; bottom: 55px">
                <a href="Home.aspx" class="stretched-link"></a>
            </div>

        </div>
        <nav id="primary_nav_wrap" style="z-index: -1;">
            <ul style="z-index: -1; box-shadow: 0px 0px 10px;">
                <div class="dd">


                <li><a href="#">
                    <img src="prof.png" /></a>
                    <ul>
                        <li class="dir">
                            <asp:HyperLink ID="ProfileLink" runat="server">Profile</asp:HyperLink>

                        </li>
                        <li class="dir"><a href="Favourite.aspx"> Favourites</a> </li>
                        <li class="dir">
                            <form runat="server">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                            </form>
                        </li>

                    </ul>
                </li>
                <li><a href="#about-us">About Us</a></li>

                <li><a href="#" id="cat">Categories</a></li>
            </ul>
            </nav>
    </div>
    
    <!-- <nav class="navbar navbar-expand-lg " style="z-index: -1;">
  <a class="navbar-brand" href="#">Navbar</a>
  
    
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

 

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto" >
      
        <a class="nav-link" href="#" style="position: absolute; right: 250px; top: 8px;" id="cat" >Categories</a>
      
      
       <a class="nav-link" href="#about-us" style="position: absolute; right: 150px; top: 8px;" >About Us</a>
       <div id="primary_nav_wrap">
       <li><a href="#">About Me</a>
        <ul>
          <li class="dir"><a href="history.html">History</a></li>
          <li class="dir"><a href="other.html">Other work</a>
          </ul>
        </li>
      </div>
        </ul>
      </li>  
    </ul>
  </div>
</nav> -->

    <!-- <li><a href="#" style="position: absolute;top: 16px;right: 56px">V</a>
   <ul class="dropdown">
     <li><span>Profile</span></li><br>
     <li><span>Log Out</span></li> -->



    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-pause="false" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-interval="269000">
                <img src="ven1.1.jpg" class="d-block w-100 " alt="...">
                <div class="carousel-caption d-none d-md-block">
          <h5>DISCOVER EVERYTHING YOU NEED TO PLAN </h5>
          <h5 style="top: -215px !important;">FOR YOUR SPECIAL DAY.</h5> 
          
          <p>Your desired Venues,Music,Food,Photographers just one click away</p>
        </div>
                <div><img id="divider" src="divider.png"></div>
            </div>
            <div class="carousel-item" data-interval="269000">
                <img src="photo2.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
          <h5>DISCOVER EVERYTHING YOU NEED TO PLAN </h5>
          <h5 style="top: -215px !important;">FOR YOUR SPECIAL DAY.</h5> 
          
          <p>Your desired Venues,Music,Food,Photographers just one click away</p>
        </div>
                <div><img id="divider" src="divider.png"></div>
            </div>
            <div class="carousel-item" data-interval="269000">
                <img src="fud3.2.jpg" class="d-block w-100 " alt="...">
                <div class="carousel-caption d-none d-md-block">
          <h5>DISCOVER EVERYTHING YOU NEED TO PLAN </h5>
          <h5 style="top: -215px !important;">FOR YOUR SPECIAL DAY.</h5> 
          
          <p>Your desired Venues,Music,Food,Photographers just one click away</p>
        </div>
                <div><img id="divider" src="divider.png"></div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <br>
    <div style="background: url(upperleft.png); background-repeat: no-repeat; background-size: cover; position: absolute; top: 600px; height: 640px; width: 610px; z-index: -1;"></div>
    <div style="background: url(upperleft.png); background-repeat: no-repeat; background-size: cover; position: absolute; top: 600px; height: 640px; width: 610px; z-index: -1;"></div>
    <div style="background: url(upperright.png); background-repeat: no-repeat; background-size: cover; position: absolute; right: 0px; top: 600px; height: 640px; width: 610px;"></div>
    <div style="background: url(upperright.png); background-repeat: no-repeat; background-size: cover; position: absolute; right: 0px; top: 600px; height: 640px; width: 610px;"></div>
    <link href="http://static.crazycafe.net/crazycafe/inkist/assets/css/bootstrap.min.css" rel="stylesheet">
    <div id="lol">
        <h3 id="big" style="color: #8725a0; padding-left: 43px; font-weight: 500;">Find your vendors :<span style="color: red;"></span></h3>
    </div>
    <br>

    <div style="width: 98%; padding-left: 43px;">
        <div class="row">
            <div class="col-md-4 col1">
                <div class="card box container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="photographer7.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">Photography</h4>
                            <a href="PhotoPage.aspx" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col1">
                <div class="card hvr-grow  container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="venue.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">Venues</h4>
                            <a href="VenuePage.aspx" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col1">
                <div class="card hvr-grow  container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="food.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">Food</h4>
                            <a href="FoodPage.aspx" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <br>
    <br>

    <div style="width: 98%; padding-left: 43px;">
        <div class="row">
            <div class="col-md-4 col1">
                <div class="card box container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="music1.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">Music</h4>
                            <a href="MusicPage.aspx" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col1">
                <div class="card hvr-grow  container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="decor.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">Decorators</h4>
                            <a href="DecorPage.aspx" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col1">
                <div class="card hvr-grow  container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="entertain.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">Entertainers</h4>
                            <a href="EntertainPage.aspx" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <br>
    <br>



    <br>
    <br>

    <div style="width: 98%; padding-left: 43px;">
        <div class="row">
            <div class="col-md-4 col1">
                <div class="card box container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="photographer.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">nimi</h4>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col1">
                <div class="card hvr-grow  container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="venue.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">alex</h4>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-4 col1">
                <div class="card hvr-grow  container1">
                    <div class="card bg-dark text-white">
                        <img class="card-img image" src="food.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title middle text">hritik</h4>
                            <a href="#" class="stretched-link"></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <button class="btn1">Show More</button>
    
   
    <div style="position: relative;bottom: 10px;left: 44%;font-size: xxx-large;color: purple;width: 250px;text-align: center;font-weight: 600;text-shadow: 0px 0px 3px purple;">About us:</div>
    <!-- <iframe  width="560" height="315" src="https://www.youtuberepeater.com/watch?v=53nwh1aHCU8#gsc.tab=0?rel=0&autoplay=1"  frameborder="0"></iframe> -->
    <div class="div container3" style="z-index: 3;background: url(aboutcom.jpg);background-position: center;" data-aos-delay="50" data-aos="fade-right" data-aos-duration="1000" id="about-us"   >
 <span style="color: #c7c389;font-size: 21px;">
  <div style="text-align: center; position: relative; top: -26px; font-size: 30px !important; color: #c1b000;">Who are we?</div>
  <div style="padding-left: 70px;padding-right: 70px;position: relative;top: -15px;">Extravagant events are becoming more and more popular, but one of the main problem of planning such events is to piece every element of that event together.</div> 
        <div style="position: relative;top: 0px;padding-left: 70px;padding-right: 70px;" >With the view of tackling this problem we decided to come up with our brand <b>EVELANCE</b>. 
          Our brand <b> EVELANCE </b> is a combination of Events and Free-Lance. The main objective of EVELANCE is to provide a platform that would be equally helpful for both the customers
           as well as the freelancers/vendors and make the process of organising an event a less stressful job.</div> 
</span>
    </div>
    
    <div class="beech"></div>
    <div class="div1 container4" style="z-index: 3;background: url(aboutcom.jpg);background-position: center;" data-aos="fade-left" data-aos-duration="1000"  >
      <span style="color: #c7c389;font-size: 21px;">
        <div style="text-align: center; position: relative; top: -25px; font-size: 30px !important; color: #c1b000;">What we do?</div>
        <div style="padding-left: 70px;padding-right: 70px;position: relative;top: -16px;">In this superfast world where everything is available online, here, the customers are provided with variety of options for a particular service they 
          require for their event on just their finger tips, and the vendors can find new audience which may provide them opportunities and reach that wouldn't have been possible if they were doing it only offline.</div>
         <div style="position: relative;top: -10px;padding-left: 70px;padding-right: 70px;" >So, in short, the aim of this project is to give customer more options while also providing the vendors more exposure.</div>     
        </span>     
 </div>
 


    <!-- <div class="right" style="display: flex;justify-content: flex-end;">
  <h1>about company</h1>
</div> -->


    <script src="sakura.js" text="text/javascript"></script>
    <script>
        var z = 0;
        console.log($(".col1:hidden"));
        $(".col1").slice(0, 3).show()
        $(".btn1").on("click", function () {
            $(".btn1").html('Show Less');
            $(this).toggleClass('btn1');
            $(this).toggleClass('btn2');
            if (z == 0) {
                $(".col1:hidden").slice(0, 3).slideToggle();
                z = 1;
            }
            else if (z == 1) {
                $(".btn1").html('Show More');
                $(".col1").slice(3).slideUp()
                z = 0;
            }
        })
        $('#cat').click(function () {
            gsap.to(window, { duration: 0, scrollTo: { y: 400, ease: "none" } });
        })
        var sakura = new Sakura('body', {
            colors: [
                {
                    gradientColorStart: 'rgba(255, 183, 197, 0.9)',
                    gradientColorEnd: 'rgba(255, 197, 208, 0.9)',
                    gradientColorDegree: 120,
                },
                {
                    gradientColorStart: 'rgba(255,189,189)',
                    gradientColorEnd: 'rgba(227,170,181)',
                    gradientColorDegree: 120,
                },
                {
                    gradientColorStart: 'rgba(212,152,163)',
                    gradientColorEnd: 'rgba(242,185,196)',
                    gradientColorDegree: 120,
                },
            ],
            delay: 150,
        });

    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
    <footer class="ft" style=" background:#5a1a6b;position: relative; display: flex; align-items: center; justify-content: space-between; bottom: -350px; height: 50px;">
    <span class="support fol">Follow Us</span>
    <a href="https://www.facebook.com/Evelance-108016448048271" class="face"><img src="facebook.png" style="height: 35px;"></a>
    <a href="https://twitter.com/Evlance1" class="tweet"><img src="twitter.png" style="height: 35px;" ></a>
    <a href="https://www.instagram.com/_evelance/" class="linked"><img src="insta.png" style="height: 35px;"></a>
</footer>
    </div>
</body>


</html>


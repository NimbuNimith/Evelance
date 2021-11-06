<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VendorProfileEdit.aspx.cs" Inherits="Final_year_Project.VendorProfileEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Vendor Page</title> <link rel="shortcut icon" href="logo.ico" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="ha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
    <link rel="stylesgeet" href="https://rawgit.com/creativetimofficial/material-kit/master/assets/css/material-kit.css">
    <link href="vendorpage.css" rel="stylesheet" />
    
    <link href="homeshow.css" rel="stylesheet">
    <style>
       
        @font-face{
    font-family: Gilroy;
    src:url(fonts/Gilroy-SemiBold.ttf)format("opentype");
  }
        .circle{
            box-shadow: 0px 0px 20px 1px #472056;
            height:160px;
            max-width:160px;
            object-fit:cover;
        }
        .company{
            font-family:Gilroy;
            font-size:5.25rem;
            color:goldenrod;
        }
        .category{
            
            font-family:Gilroy;
            font-size:3.15rem;
            position: relative;
            right: 8%;
        }
        .city{
            font-family:Gilroy;
            font-size:3.15rem;
            position: relative;
            left: 10%;
        }
        .price{
            
            font-family:Gilroy;
            font-size:3.15rem;
        }
        .about-head{
            
            font-family:Gilroy;
            font-size:2.15rem;
            color:black;
        }
        .about{
            font-family:Gilroy;
            font-size:2.15rem;
        }
        .contact-head{
            font-family:Gilroy;
            font-size:2.15rem;
        }
        .contact{
            font-family:Gilroy;
            font-size:2.15rem;
        }
        .bt1{
            position: relative;
    background-color: purple;
    width: 23%;
    padding: 2%;
    font-weight: 600;
    color: goldenrod;
    border: none;
    border-radius: 1.5rem;
    left: 24%;
    top: 10px;
        }
.bt2{
        position: relative;
    background-color: purple;
    width: 23%;
    padding: 2%;
    font-weight: 600;
    color: goldenrod;
    border: none;
    border-radius: 1.5rem;
    left: 30%;
    top: 10px;
        
    }
    .bt:hover{
        background:#7c2494;
        transition:ease-in 0.1s;
    }
}
    </style>
</head>

<body class="profile-page" style="background: linear-gradient(to top, #000222 44%, #923cb5 90%);">
    <div class="dd" style="position: fixed; z-index: 4; width: 100%;">
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
                            <asp:HyperLink ID="ProfileLink" runat="server">Profile</asp:HyperLink></li>
                        <li class="dir"><a href="Favourite.aspx"> Favourites</a> </li>
                        <li class="dir">
                            <form runat="server">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
                            <%--</form>--%>
                        </li>

                    </ul>
                </li>
            </ul>
            </nav>
    </div>

    <div class="page-header header-filter" data-parallax="true" style="background-image: url('http://wallpapere.org/wp-content/uploads/2012/02/black-and-white-city-night.png');"></div>
    <div class="main main-raised" style="
    position: relative;
    top: -125px;">
        <div class="profile-content">
            <div class="container">
                <%--<div style="background: url(backg2.jpg); background-repeat: no-repeat; background-size: cover; position: absolute;left:0px;  height: 100%; width: 100%;z-index: -2;"></div>--%>
                <div style="background: url(upperleft.png); background-repeat: no-repeat; background-size: cover; position: absolute; left:0px;  height: 640px; width: 610px;z-index: -1;"></div>
                <div style="background: url(upperleft.png); background-repeat: no-repeat; background-size: cover; position: absolute; left:0px;  height: 640px; width: 610px;z-index: -1;"></div>
                <div style="background: url(upperright.png); background-repeat: no-repeat; background-size: cover; position: absolute; right:0px;  height: 640px; width: 610px;"></div>
                <div style="background: url(upperright.png); background-repeat: no-repeat; background-size: cover; position: absolute; right:0px;  height: 640px; width: 610px;"></div>
                <div class="row">
                    <div class="col-md-6 ml-auto mr-auto">
                        <div class="profile">
                            <div class="avatar">
                                <asp:Image ID="Image1" runat="server" alt="Circle Image" class="img-raised rounded-circle img-fluid circle"/>
                                <%--<img src="" alt="Circle Image" class="img-raised rounded-circle img-fluid">--%>
                            </div>
                            <div class="name">
                                <asp:Label ID="company" runat="server" class="title company" Text=""></asp:Label>
                                <%--<h3 class="title">Christian Louboutin</h3>--%>
                            </div>
                            <br />
                            <div class="category-div">
                                <%--<asp:Image ID="Image2" runat="server" />--%>
                                <asp:Label ID="category" runat="server" class="title category" Text=""></asp:Label>
                                <img src="pin2.png" style=" position:relative;height:30px; left:10%; width: 18px; top: 6px;"/>
                                <asp:Label ID="city" runat="server" class="title city" Text=""></asp:Label>
                            </div>
                            <br />
                            <div class="">
                                <asp:Label ID="price" runat="server" class="title price" Text=""></asp:Label>
                            </div>
                            <br />
                            <div class="">
                                <h5 class="contact-head"> Contact Us :</h5>
                                    <span class="glyphicon glyphicon-earphone" aria-hidden="true" style="position:relative; right:10%;"></span>
                                    <asp:Label ID="Phone" runat="server" class="title contact" style="position:relative; right:10%;" Text=""></asp:Label>
                                    
                                    <span class="glyphicon glyphicon-send" aria-hidden="true" style="position:relative; left:10%;"></span>
                                    <asp:Label ID="eid" runat="server" class="title contact" style="position:relative; left:10%;" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="description text-center">
                    <h5 class="about-head">About Us</h5>
                    <p>
                        <asp:Label ID="About" runat="server" class="title about" Text=""></asp:Label></p>
                </div>



                <br>

                <div id="myCarousel" class=" carousel slide carousel-fade">
                    <%--<ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3" ></li> 
                  <li data-target="#myCarousel" data-slide-to="4" ></li> 
                </ol>--%>
                <div class="carousel-inner" role="listbox">
                    <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="carousel-item <%#GetActiveClass(Container.ItemIndex) %>">
                            <img src="data:/<%#Eval("extension") %>;base64,<%#Eval("Name") %>" class="d-block w-100" data-mdb-interval="1000000" height="650px" style="object-fit:cover"" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                    </div>
                    <a href="#myCarousel" class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span>
                    </a>
                    <a href="#myCarousel" class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span>
                    </a>
                </div>
                <%--<form runat="server">--%>
                    <asp:Button ID="Button3" runat="server" class="bt bt1" Text="Update Portfolio" OnClick="Button3_Click" />
                    <%--<input id="Button1" type="button" class="bt bt1" value="Update Portfolio" link=""/>--%>
                    <asp:Button ID="Button1" runat="server" class="bt bt2" Text="Update Personal Info" OnClick="Button1_Click1" />
                    <%--<input id="Button2" type="button" class="bt bt2" value="Update Personal Info" />--%>
                </form>
               
                <br>
            </div>
            <br>
        </div>
        <br>
    </div>



    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>




</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VendorProfile.aspx.cs" Inherits="Final_year_Project.VendorProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Vendor Page</title>
    <link rel="shortcut icon" href="logo.ico" />
    <!-- MODAL --->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link href="vendorpage.css" rel="stylesheet" />

    <link href="homeshow.css" rel="stylesheet">

    <!-- default styles -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.6/js/star-rating.min.js" type="text/javascript"></script>

    <style>
        * {
            box-sizing: border-box;
        }

        .heading {
            font-size: 25px;
            margin-right: 25px;
        }

        .fa {
            font-size: 25px;
        }

        .checked {
            color: orange;
        }

        /* Three column layout */
        .side {
            float: left;
            width: 15%;
            margin-top: 10px;
        }

        .middle {
            float: left;
            width: 70%;
            margin-top: 10px;
        }

        /* Place text to the right */
        .right {
            text-align: right;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* The bar container */
        .bar-container {
            width: 100%;
            background-color: #f1f1f1;
            text-align: center;
            color: white;
        }

        /* Individual bars */
        .bar-5 {
            height: 18px;
            background-color: #4CAF50;
        }

        .bar-4 {
            height: 18px;
            background-color: #2196F3;
        }

        .bar-3 {
            height: 18px;
            background-color: #00bcd4;
        }

        .bar-2 {
            height: 18px;
            background-color: #ff9800;
        }

        .bar-1 {
            height: 18px;
            background-color: #f44336;
        }

        /* Responsive layout - make the columns stack on top of each other instead of next to each other */
        @media (max-width: 400px) {
            .side, .middle {
                width: 100%;
            }
            /* Hide the right column on small screens */
            .right {
                display: none;
            }
        }

        @font-face {
            font-family: Gilroy;
            src: url(fonts/Gilroy-SemiBold.ttf)format("opentype");
        }

        .circle {
            box-shadow: 0px 0px 20px 1px #472056;
            height: 160px;
            max-width: 160px;
            object-fit: cover;
        }

        .company {
            font-family: Gilroy;
            font-size: 5.25rem;
            color: goldenrod;
        }

        .category {
            font-family: Gilroy;
            font-size: 3.15rem;
            position: relative;
            right: 8%;
        }

        .city {
            font-family: Gilroy;
            font-size: 3.15rem;
            position: relative;
            left: 10%;
        }

        .price {
            font-family: Gilroy;
            font-size: 3.15rem;
        }

        .about-head {
            font-family: Gilroy;
            font-size: 2.15rem;
            color: black;
        }

        .about {
            font-family: Gilroy;
            font-size: 2.15rem;
        }

        .contact-head {
            font-family: Gilroy;
            font-size: 2.15rem;
        }

        .contact {
            font-family: Gilroy;
            font-size: 2.15rem;
        }

        /* Favoutite icon*/
        .heart {
            position: absolute;
            width: 100px;
            height: 90px;
            left: 90%;
            top: 5%;
            border: 2px red;
        }

            .heart:hover:before,
            .heart:hover:after {
                background: rgb(255, 0, 76);
                box-shadow: 0px 0px 15px red;
                width: 52px;
                height: 90px;
            }


            .heart:before,
            .heart:after {
                position: absolute;
                content: "";
                left: 50px;
                top: 0;
                width: 50px;
                height: 80px;
                background: grey;
                -moz-border-radius: 50px 50px 0 0;
                border-radius: 50px 50px 0 0;
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                transform: rotate(-45deg);
                -webkit-transform-origin: 0 100%;
                -moz-transform-origin: 0 100%;
                -ms-transform-origin: 0 100%;
                -o-transform-origin: 0 100%;
                transform-origin: 0 100%;
            }

            .heart:after {
                left: 0;
                -webkit-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -o-transform: rotate(45deg);
                transform: rotate(45deg);
                -webkit-transform-origin: 100% 100%;
                -moz-transform-origin: 100% 100%;
                -ms-transform-origin: 100% 100%;
                -o-transform-origin: 100% 100%;
                transform-origin: 100% 100%;
            }

        .heart1 {
            position: absolute;
            width: 100px;
            height: 90px;
            left: 90%;
            top: 5%;
            border: 2px red;
        }

            .heart1:hover:before,
            .heart1:hover:after {
                background: rgb(255, 0, 76);
                box-shadow: 0px 0px 15px red;
                width: 52px;
                height: 90px;
            }

            .heart1:before,
            .heart1:after {
                position: absolute;
                content: "";
                left: 50px;
                top: 0;
                width: 50px;
                height: 80px;
                background: red;
                -moz-border-radius: 50px 50px 0 0;
                border-radius: 50px 50px 0 0;
                -webkit-transform: rotate(-45deg);
                -moz-transform: rotate(-45deg);
                -ms-transform: rotate(-45deg);
                -o-transform: rotate(-45deg);
                transform: rotate(-45deg);
                -webkit-transform-origin: 0 100%;
                -moz-transform-origin: 0 100%;
                -ms-transform-origin: 0 100%;
                -o-transform-origin: 0 100%;
                transform-origin: 0 100%;
            }

            .heart1:after {
                left: 0;
                -webkit-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -o-transform: rotate(45deg);
                transform: rotate(45deg);
                -webkit-transform-origin: 100% 100%;
                -moz-transform-origin: 100% 100%;
                -ms-transform-origin: 100% 100%;
                -o-transform-origin: 100% 100%;
                transform-origin: 100% 100%;
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
                            
                            </li>

                        </ul>
                    </li>
            </ul>
        </nav>
    </div>

    <div class="page-header header-filter" data-parallax="true" style="background-image: url('http://wallpapere.org/wp-content/uploads/2012/02/black-and-white-city-night.png');">
    </div>
    <div class="main main-raised" style="position: relative; top: -125px;">
        <div class="profile-content">
            <div class="container">
                <%--<div style="background: url(backg2.jpg); background-repeat: no-repeat; background-size: cover; position: absolute;left:0px;  height: 100%; width: 100%;z-index: -2;"></div>--%>
                <div style="background: url(upperleft.png); background-repeat: no-repeat; background-size: cover; position: absolute; left: 0px; height: 640px; width: 610px; z-index: -1;"></div>
                <div style="background: url(upperleft.png); background-repeat: no-repeat; background-size: cover; position: absolute; left: 0px; height: 640px; width: 610px; z-index: -1;"></div>
                <div style="background: url(upperright.png); background-repeat: no-repeat; background-size: cover; position: absolute; right: 0px; height: 640px; width: 610px;"></div>
                <div style="background: url(upperright.png); background-repeat: no-repeat; background-size: cover; position: absolute; right: 0px; height: 640px; width: 610px;"></div>
                <div class="row">
                    <div class="col-md-6 ml-auto mr-auto">
                        <div class="profile">

                            <div class="avatar">
                                <asp:Image ID="Image1" runat="server" alt="Circle Image" class="img-raised rounded-circle img-fluid circle" />
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
                                <img src="pin2.png" style="position: relative; height: 30px; left: 10%; width: 18px; top: 6px;" />
                                <asp:Label ID="city" runat="server" class="title city" Text=""></asp:Label>
                            </div>
                            <br />
                            <div class="">
                                <asp:Label ID="price" runat="server" class="title price" Text=""></asp:Label>
                            </div>
                            <br />
                            <div class="">
                                <h5 class="contact-head">Contact Us :</h5>
                                <span class="glyphicon glyphicon-earphone" aria-hidden="true" style="position: relative; right: 10%;"></span>
                                <asp:Label ID="Phone" runat="server" class="title contact" Style="position: relative; right: 10%;" Text=""></asp:Label>

                                <span class="glyphicon glyphicon-send" aria-hidden="true" style="position: relative; left: 10%;"></span>
                                <asp:Label ID="eid" runat="server" class="title contact" Style="position: relative; left: 10%;" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <div class="description text-center">
                    <h5 class="about-head">About Us</h5>
                    <p>
                        <asp:Label ID="About" runat="server" class="title about" Text=""></asp:Label>
                    </p>
                </div>



                <br>

                <div id="myCarousel" class=" carousel slide carousel-fade">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                        <li data-target="#myCarousel" data-slide-to="4"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="carousel-item <%#GetActiveClass(Container.ItemIndex) %>">
                                    <img src="data:/<%#Eval("extension") %>;base64,<%#Eval("Name") %>" class="d-block w-100" data-mdb-interval="1000000" height="650px" style="object-fit: cover" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <a href="#myCarousel" class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span>
                    </a>
                    <a href="#myCarousel" class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span>
                    </a>
                </div>
                

                <br>

                <div class="row">
                    <div class="col-md-8">
                            <asp:TextBox ID="TextBox2" runat="server" type="number" class="rating  rating-loading" data-symbol="*" min="0" max="5" step="0.1" data-size="xl" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <p>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </p>
                <hr style="border: 3px solid #f1f1f1">

                <div class="row">
                    <div class="side">
                        <div>5 star</div>
                    </div>
                    <div class="middle">
                        <div class="bar-container">
                            <div id="Bar5" class="bar-5" runat="server"></div>
                        </div>
                    </div>
                    <div class="side right">
                        <div><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
                    </div>
                    <div class="side">
                        <div>4 star</div>
                    </div>
                    <div class="middle">
                        <div class="bar-container">
                            <div class="bar-4" id="Bar4" runat="server"></div>
                        </div>
                    </div>
                    <div class="side right">
                        <div><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></div>
                    </div>
                    <div class="side">
                        <div>3 star</div>
                    </div>
                    <div class="middle">
                        <div class="bar-container">
                            <div class="bar-3" id="Bar3" runat="server"></div>
                        </div>
                    </div>
                    <div class="side right">
                        <div><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div>
                    </div>
                    <div class="side">
                        <div>2 star</div>
                    </div>
                    <div class="middle">
                        <div class="bar-container">
                            <div class="bar-2" id="Bar2" runat="server"></div>
                        </div>
                    </div>
                    <div class="side right">
                        <div><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></div>
                    </div>
                    <div class="side">
                        <div>1 star</div>
                    </div>
                    <div class="middle">
                        <div class="bar-container">
                            <div class="bar-1" id="Bar1" runat="server"></div>
                        </div>
                    </div>
                    <div class="side right">
                        <div><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></div>
                    </div>
                    <div>
                        <h2><a href="Review.aspx?id=<%=Request.QueryString["id"] %>">Leave/Read Reviews</a></h2>
                        <%--<h2>Modal Example</h2>
                        <!-- Button to Open the Modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                            Open modal
                        </button>--%>

                        <!-- The Modal -->
                        <%--<div class="modal " id="myModal">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Modal Heading</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <asp:TextBox ID="TextBox1" runat="server" type="number" class="rating rating-loading" data-symbol="*" min="0" max="5" step="0.5" data-size="lg" ReadOnly="False"></asp:TextBox>

                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Style="width: 100%; height: 100px;" placeHolder="Optional"></asp:TextBox>
                                    </div>

                                    
                                        <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                    </div>

                                </div>
                            </div>

                        </div>--%>
                    </div>
                </div>
                <button title="Favourite"  id="butt" style="border: none;background: none;outline: none;" runat="server" onserverclick="butt_ServerClick"></button>
            </form>
            </div>
            <br>

        </div>
        <br>
    </div>



   
</body>
</html>

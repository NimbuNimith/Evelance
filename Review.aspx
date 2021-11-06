<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="Final_year_Project.Review" %>


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
            width: 60%;
            height: 18px;
            background-color: #4CAF50;
        }

        .bar-4 {
            width: 30%;
            height: 18px;
            background-color: #2196F3;
        }

        .bar-3 {
            width: 10%;
            height: 18px;
            background-color: #00bcd4;
        }

        .bar-2 {
            width: 4%;
            height: 18px;
            background-color: #ff9800;
        }

        .bar-1 {
            width: 15%;
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

        .company1 {
            font-family: Gilroy;
            font-size: 3.15rem;
            color: goldenrod;
        }
        .rating-sm{
            position: relative;
            right: 33%;
}
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
        .rating-xl {
            width: 170%;
        }
    </style>
</head>

<body class="profile-page" style="background: linear-gradient(to top, #000222 44%, #923cb5 90%);">
    <form runat="server">
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
                                <li class="dir"><a href="Favourite.aspx">Favourites</a> </li>
                                
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


                                <br />

                                <div class="row">
                                    <div class="col-md-8">

                                        <asp:TextBox ID="TextBox2" runat="server" type="number" class="rating  rating-loading" ReadOnly="true" data-symbol="*" min="0" max="5" step="0.1" data-size="xl"></asp:TextBox>
                                    </div>
                                </div>
                                <p>
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </p>
                                <div class="row">
                                    <div class="card" style="width: 100%;">
                                        <h2><asp:Label ID="Label2" runat="server" Text="Know the vendor?<br />Leave a Review"></asp:Label></h2>
                                        <asp:TextBox ID="TextBox1" runat="server" type="number" class="rating  rating-loading" data-symbol="*" min="0" max="5" step="1" data-size="lg"></asp:TextBox>
                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Style="position: relative; width: 90%; left: 5%; height: 100px;"></asp:TextBox>
                                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" Style="position: relative; width: 10%; left: 45%; margin-top: 5%; margin-bottom: 5%;" />
                                    </div>
                                </div>
                                <h2>Read Other Reviews</h2>
                                <div class="row" style="position: relative; width: 150%; right: 22.5%;">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <div class="card" style="width: 100%;">
                                                <h4 style="text-align: left; padding-left: 4%;">
                                                    <asp:Label ID="Name" runat="server" class="title company1"><%#Eval("Name") %></asp:Label>
                                                </h4>
                                                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" type="number" class="rating  rating-loading" data-symbol="*" value='<%#Eval("stars") %>' min="0" max="5" step="0.5" data-size="sm"></asp:TextBox>
                                                <h3 style="text-align: left; padding-left: 4%;">
                                                    <%#Eval("about") %>
                                                </h3>
                                                <h5 style="text-align: left; padding-left: 4%;">
                                                    <%#Eval("date") %>
                                                </h5>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>

                            <%--<button title="Favourite"  id="butt" style="border: none;background: none;outline: none;" runat="server" onserverclick="butt_ServerClick"></button>--%>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="arrow.png" OnClick="ImageButton1_Click" Style="position: absolute; top: 3%; height: 7%; left: -100%;" />
                        </div>
                    </div>

                </div>
                <br />
            </div>
            <br />
        </div>

    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MusicPage.aspx.cs" Inherits="Final_year_Project.MusicPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Music</title> <link rel="shortcut icon" href="logo.ico" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="photopage3.css">
    <!--  <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">-->
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font: 400 15px/1.8 "Lato", sans-serif;
            color: #777;
        }

        html {
            scroll-behavior: smooth;
        }

        .navbar {
            border-radius: 0;
            background: #5a1a6b;
        }

        a {
            color: #edd805;
            font-weight: bold;
        }

        .navbar a:hover {
            color: #918506;
        }

        .text-white {
            text-shadow: 2px 2px #000000;
        }

        .imgbg1, .imgbg2, .imgbg3 {
            position: relative;
            /* background-attachment: fixed; */
            background-position: all;
            background-repeat: no-repeat;
            background-size: auto;
        }

        .imgbg1 {
            /* The image used */
            background-image: url("musicpage.jpg");
            /* Set a specific height */
            min-height: 420px;
            /* width: 100%; */
        }

        .caption {
            position: absolute;
            left: 0;
            top: 50%;
            width: 100%;
            text-align: center;
            color: #000;
        }

            .caption span.border {
                background-color: #111;
                color: #fff;
                padding: 18px;
                font-size: 25px;
                letter-spacing: 10px;
            }

        .conta {
            color: black;
        }

        .fa-search {
            color: black;
        }

        .conta1 {
            height: 32px;
            width: 40px;
        }

        #loading {
            -webkit-animation: rotation 50s infinite linear;
            z-index: -1;
        }

        #try:hover {
            -webkit-animation: bruh 1s 0s linear;
        }

        .d-block {
            object-fit: cover;
        }

        #big:hover {
            -webkit-transform: font-size:30px;
        }



        /* Turn off parallax scrolling for tablets and phones */

        @-webkit-keyframes rotation {
            from {
                -webkit-transform: rotate(0deg);
            }

            to {
                -webkit-transform: rotate(359deg);
            }
        }
        .card {
                background: -webkit-linear-gradient(left,#5a1a6b,#b244ef);

            height: 285px;
            left:5%;
        }

        .profile-card-2 .card-img-block {
            float: left;
            width: 519px;
            height: 100%;
            overflow: hidden;
        }
        .img-fluid{
            width:519px
        }
        .profile-card-2 .card-body {
            position: absolute;
            width: 100%;
        }

        .profile-card-2 .profile {
            object-fit: cover;
            border-radius: 50%;
            position: absolute;
            top: 20%;
            left: 35%;
            width: 185px;
            height: 185px;
            border: 3px solid rgba(255, 255, 255, 1);
            -webkit-transform: translate(-50%, 0%);
            transform: translate(-50%, 0%);
        }

        .profile-card-2 h5 {
            position: absolute;
    left: 625px;
    font-weight: 600;
    color: #EDD805;
    top: 99px;
    font-size: 3.5rem;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 13ch;
        }

        .profile-card-2 .card-text {
            font-weight: 300;
            font-size: 15px;
        }

        .profile-card-2 .icon-block {
            float: left;
            width: 100%;
        }

            .profile-card-2 .icon-block a {
                text-decoration: none;
            }

        .profile-card-2 i {
            display: inline-block;
            font-size: 16px;
            color: #6ab04c;
            text-align: center;
            border: 1px solid #6ab04c;
            width: 30px;
            height: 30px;
            line-height: 30px;
            border-radius: 50%;
            margin: 0 5px;
        }

            .profile-card-2 i:hover {
                background-color: #6ab04c;
                color: #fff;
            }
        .profile-card-2 h4{
            position: relative;
    left: 70%;
    color: #EDD805;
    font-size: 3.1rem;
    text-shadow:0px 0px 8px black;
        }
    </style>
</head>
<body style="background: #1a1a1a; overflow-x: hidden;">
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
    <div class="imgbg1">
        <div class="caption">
            <span class="border">Music</span>
        </div>
    </div>





    <div class="sidebar-container">
        <div class="sidebar-logo">
            Categories
        </div>
        <ul class="sidebar-navigation">
            <li>
                <a href="PhotoPage.aspx">
                    <img src="https://img.icons8.com/material/24/ffffff/compact-camera--v1.png" />Photographers</a>
            </li>
            <li>
                <a href="FoodPage.aspx">
                    <img src="https://img.icons8.com/android/24/ffffff/restaurant.png">Food</a>
            </li>
            <li>
                <a href="VenuePage.aspx">
                    <img src="https://img.icons8.com/android/24/ffffff/place-marker.png">Venue</a>
            </li>
            <li>
                <a href="DecorPage.aspx">
                    <img src="decor2.png">Decorators</a>
            </li>
            <li>
                <a href="EntertainPage.aspx">
                    <img src="magic.png">Entertainers</a>
            </li>
        </ul>
        <br>

        <div class="sidebar-logo">
            Price
        </div>
        <br>
        <div class="form row">
            <div class="col-md-12">
                <%--<form runat="server">--%>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Style="position: relative; background: #5a1a6b; color: #edd807; left: 5%; width: 90%; font-size: 25px;">
                        <asp:ListItem Selected="True">Select Price</asp:ListItem>
                        <asp:ListItem>&lt;₹1000</asp:ListItem>
                        <asp:ListItem>₹1000-₹5000</asp:ListItem>
                        <asp:ListItem>₹5000-₹10000</asp:ListItem>
                        <asp:ListItem>₹10000&gt;</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="position: relative; background: #5a1a6b; color: #edd807; left: 5%; width: 90%; font-size: 25px; top: 20px;" AutoPostBack="True">
                        <asp:ListItem>Select City</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Bangalore</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                    </asp:DropDownList>
                </form>
            </div>
        </div>

    </div>

    <div>
        <asp:Label ID="Label1" runat="server" Text="" Style="position: relative; left: 35%; font-size: 90px; /* color: goldenrod; */
                                                            top: 10px;">
        </asp:Label>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="content-container">

                    <div class="container-fluid">

                        <div class="col-md-11">
                            <div class="card profile-card-2">
                                <div class="card-img-block">
                                    <%--<asp:Image ID="Image1" runat="server"  alt="Card image cap"  ImageUrl="data:<%#Eval("DPExtension") %>;base64,<%#Eval("DisplayPhoto") %>" class="img-fluid"/>--%>
                                    <img class="img-fluid"
                                        src="data:<%#Eval("DPExtension") %>;base64,<%#Eval("DisplayPhoto") %>"
                                        alt="Card image cap">
                                </div>
                                <div class="card-body pt-5 ">
                                    <h5 class="card-title"><%#Eval("company") %> </h5>
                                    <img src="data:/<%#Eval("PPExtension") %>;base64,<%#Eval("ProfilePhoto") %>" alt="profile-image" class="profile" />
                                    <h4 class=""><%#Eval("category") %></h4>
                                    <h4 class="">Price : ₹<%#Eval("cost") %></h4>
                                    <h4 class=""><%#Eval("city") %></h4>
                                </div>
                            </div>
                            <a href="VendorProfile.aspx?id=<%#Eval("id") %>" class="stretched-link"></a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</body>
</html>

 
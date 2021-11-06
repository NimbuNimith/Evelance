<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Final_year_Project.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Profile </title> <link rel="shortcut icon" href="logo.ico" />
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <%--<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />--%>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">--%>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="photopage3.css">
    <!------ Include the above in your HEAD tag ---------->
    <style>
        body {
            background: -webkit-linear-gradient(left,#7579ff,#b244ef);
        }

        .emp-profile {
            padding: 3%;
            margin-top: 3%;
            margin-bottom: 3%;
            border-radius: 0.5rem;
            background: #fff;
        }

        .profile-img {
            text-align: center;
        }

            .profile-img img {
                width: 70%;
                height: 100%;
            }

            .profile-img .file {
                position: relative;
                overflow: hidden;
                margin-top: -20%;
                width: 70%;
                border: none;
                border-radius: 0;
                font-size: 15px;
                background: #212529b8;
            }

                .profile-img .file input {
                    position: absolute;
                    opacity: 0;
                    right: 0;
                    top: 0;
                }

        .profile-head h5 {
            color: #333;
        }

        .profile-head h6 {
            color: #0062cc;
        }

        .profile-edit-btn {
            border: none;
            border-radius: 1.5rem;
            width: 70%;
            padding: 2%;
            font-weight: 600;
            color: #6c757d;
            cursor: pointer;
        }

        .proile-rating {
            font-size: 12px;
            color: #818182;
            margin-top: 5%;
        }

        .nav-tabs {
            border-bottom: 0px solid #dee2e6;
        }

        .proile-rating span {
            color: #495057;
            font-size: 15px;
            font-weight: 600;
        }

        .profile-head .nav-tabs {
            margin-bottom: 5%;
        }

            .profile-head .nav-tabs .nav-link {
                font-weight: 600;
                border: none;
            }

                .profile-head .nav-tabs .nav-link.active {
                    border: none;
                    border-bottom: 2px solid #5a1a6b;
                }

        .profile-work {
            padding: 14%;
            margin-top: -15%;
        }

            .profile-work p {
                font-size: 12px;
                color: #818182;
                font-weight: 600;
                margin-top: 10%;
            }

            .profile-work a {
                text-decoration: none;
                color: #495057;
                font-weight: 600;
                font-size: 14px;
            }

            .profile-work ul {
                list-style: none;
            }

        .profile-tab label {
            font-weight: 600;
        }

        .profile-tab p {
            font-weight: 600;
            color: #0062cc;
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

        #loading {
            -webkit-animation: rotation 50s infinite linear;
            z-index: -1;
        }

        @-webkit-keyframes rotation {
            from {
                -webkit-transform: rotate(0deg);
            }

            to {
                -webkit-transform: rotate(359deg);
            }
        }

        .siz {
            position: relative;
            top: 9px;
            left: 240px;
        }

        .bt {
            color: #edd805;
            background: #5a1a6b;
            border-radius: 4px;
            position: relative;
            top: 400px;
            right: 334px;
            width: 150px;
            height: 43px;
        }

            .bt:hover {
                background: #7c2494;
                transition: ease-in 0.1s;
            }

        .pur {
            color: goldenrod;
            position: relative;
            left: 92px;
        }
    </style>
</head>
<body>
    <div class="dd" style="position: fixed; z-index: 2; width: 100%;">
        <div style="display: flex; align-items: center; justify-content: flex-start; position: fixed;">

            <div style="position: absolute; z-index: 3; display: flex; justify-content: center; align-items: center; top: -210px;">
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
    <%--<form id="form1" runat="server">--%>
        <div class="container emp-profile" style="position: relative; top: 101px; height: 600px; box-shadow: 0px 2px 20px; width: 800px;">
            <div class="siz">
                <div class="row">
                    <div class="col-md-6">
                        <div class="profile-head">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" style="font-size: 25px; position: relative; left: 55px; top: -35px;" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home">About</a>
                                </li>
                                <!-- <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Timeline</a>
                                </li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="Button1" runat="server" class="profile-edit-btn bt" Text="Update Info" OnClick="Button1_Click" />
                        <%--<input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>--%>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" style="position: relative; left: -132px;" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>
                                            <asp:Label ID="name" Class="pur" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>
                                            <asp:Label ID="eid" Class="pur" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Mobile Number</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>
                                            <asp:Label ID="mobno" Class="pur" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Date of birth</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>
                                            <asp:Label ID="dob" Class="pur" runat="server" Text="Label"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    </form>

</body>
</html>


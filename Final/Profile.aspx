<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Final_year_Project.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
     body{
    background:-webkit-linear-gradient(left,#7579ff,#b244ef);
} 
.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
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
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #0062cc;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.nav-tabs {
    border-bottom: 0px solid #dee2e6;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #5a1a6b;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
}
.profile-work p{
    font-size: 12px;
    color: #818182;
    font-weight: 600;
    margin-top: 10%;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0062cc;
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
    .siz{
     position: relative;
    top: 9px;
    left: 240px;
    }
    .bt{
        color:#edd805;
        background: #5a1a6b;
        border-radius:4px;
        position: relative;
        top: 400px;
        right: 334px;
        width: 150px;
        height: 43px;
        
    }
    .bt:hover{
        background:#7c2494;
        transition:ease-in 0.1s;
    }
    .pur{
            color: goldenrod;
    position: relative;
    left: 188px;
    }
</style>
</head>
<body>
    <div style="position: fixed;z-index: 2;width: 100%;top:0px">
<div style="display: flex;align-items: center;justify-content: flex-start; position: fixed;">
 
  <div style="position: absolute;z-index: 3;display: flex;justify-content: center;align-items: center;">
    <img src="logo-bg.png" id="loading">
  <img src="lo.png" style="position: absolute;background-size: 20px;height: 100px;bottom:55px">
  </div>
  
</div>

<nav class="navbar navbar-expand-lg " style="z-index: -1;">
  
  
    
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

 

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto" id="pad">
      
        
      
      <a class="nav-link" href="profile.html">Your account <span class="sr-only">(current)</span></a>    
    </ul>
  </div>
</nav>
</div>
    <form id="form1" runat="server">
<div class="container emp-profile" style=" position: relative; top: 101px; height: 600px; box-shadow: 0px 2px 20px;width: 800px; ">
     <div class="siz">
                <div class="row">
                    <!-- <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div> -->
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <asp:Label ID="headName" runat="server" Text=""></asp:Label>
                                        
                                    </h5>
                                    <!-- <h6>
                                        Web Developer and Designer
                                    </h6> -->
                                    <!-- <p class="proile-rating">RANKINGS : <span>8/10</span></p> -->
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" style="font-size: 25px;position: relative; left: 55px; top: -35px;" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" >About</a>
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
                    <!-- <div class="col-md-4">
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div> -->
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" style="position: relative; left: -132px;" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <%--<div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Kshiti123</p>
                                            </div>
                                        </div>--%><br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><asp:Label ID="name" Class="pur" runat="server" Text="Label"></asp:Label></p>
                                            </div>
                                        </div><br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><asp:Label ID="eid" Class="pur" runat="server" Text="Label"></asp:Label></p>
                                            </div>
                                        </div><br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Mobile Number</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><asp:Label ID="mobno" Class="pur" runat="server" Text="Label"></asp:Label></p>
                                            </div>
                                        </div><br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Date of birth</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><asp:Label ID="dob" Class="pur" runat="server" Text="Label"></asp:Label></p>
                                            </div>
                                        </div>
                                </div>
                            </div>
                            <!-- <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                </div>
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
    </form>
        
        </body>

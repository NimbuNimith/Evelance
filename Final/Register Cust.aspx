<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register Cust.aspx.cs" Inherits="Final_year_Project.Register_Cust" %>

<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/owl.carousel.min.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">

  <!-- Style -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="css/hover.css" rel="stylesheet">
  <link href="css/shreyas.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
  <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
  <title>REg2</title>
  <style>
    #category{
      border-bottom: 1px solid #ced4da;
    }
    .redstar{
        color:red;
    }
    .btn-primary{
        color:greenyellow
    }
    .shdw{
         box-shadow: 0px 2px 30px;
    }
    .tog1{
        background:-webkit-linear-gradient(right,#7579ff,#b244ef);
        
        font-size:18px;
    }
     .tog2{
        background:#5a1a6b;
        
    }
    a{
	color:darkgoldenrod;
    
	
	}
    .nav-link{
        color:#edd805;

    }
    .tog1:hover{
       background:-webkit-linear-gradient(top,#7579ff,#b244ef);
       
    }
    a:link {
  text-decoration: none;
}
    .active{
        background:white !important;
        text-shadow:none; 
        font-size:20px;
    }
    .nav-tabs .nav-link {
     border: none;
     border-top-left-radius: 0px !important;
    /*border-top-right-radius: 0px;*/
}
    .but{
        color: #edd805; 
        background: #5a1a6b;
        font-size:inherit;
    }
     .but:hover{
     background:#7c2494;
     color:#edd805;
 }
 .but:focus{
     background:#7c2494;
     color:#edd805;
     
 }
 
  </style>
</head>
<body style="background:-webkit-linear-gradient(left,#7579ff,#b244ef);">



    <form id="form1" runat="server">



  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
        <!-- <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div> -->
        <div class="col-md-8 contents">
          <div class="row justify-content-center no-gutters">
            <div class="col-md-12  shdw no-gutters" ">
              <ul class="nav nav-tabs nav-fill" id="myTab" role="tablist">
               <li class="nav-item" role="presentation">
                <a class="nav-link active tog1 b1" style="color:#edd805;" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Customer</a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link tog1 b2" id="profile-tab" style="color:#edd805;" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Vendor</a>
              </li>
            </ul>




            <div class="tab-content" id="myTabContent">


              <!-------------CUSTOMER------------->


              <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="form-block">
                  <div class="mb-8">
                    <h3>Register as Customer</h3>
                  </div>
                  <br>
                    <div class="row">
                      <div class="col">
                        <div class="form-group first">
                          <label for="fnameCust">First name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="fnameCust" ValidationGroup="a"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="fnameCust" class="form-control" runat="server" ValidationGroup="a"></asp:TextBox>
                          <%--<input type="text" class="form-control" id="fnameCust">--%>

                        </div>
                      </div>

                      <div class="col">
                        <div class="form-group first">
                          <label for="lnameCust">Last name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="lnameCust" ValidationGroup="a"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="lnameCust" class="form-control" runat="server"></asp:TextBox>
                          <%--<input type="text" class="form-control" id="lnameCust">--%>

                        </div>
                      </div>
                    </div>
                    <div class="form-group last mb-4">
                      <label for="eidCust">Email ID<asp:RequiredFieldValidator ID="RequiredFieldValidator3" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="eidCust" ValidationGroup="a"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="eidCust" class="form-control" runat="server"></asp:TextBox>

                      <%--<input type="text" class="form-control" id="eidCust">--%>

                    </div>
                    <div class="form-group last mb-4">
                      <label for="mobnoCust">Mobile no<asp:RequiredFieldValidator ID="RequiredFieldValidator4" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="mobnoCust" ValidationGroup="a"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="mobnoCust" class="form-control" runat="server"></asp:TextBox>

                      <%--<input type="text" class="form-control" id="mobnoCust">--%>

                    </div>
                    <div class="form-group last mb-4">
                      <label for="datepicker">Date of Birth<asp:RequiredFieldValidator ID="RequiredFieldValidator5" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="datepicker" ValidationGroup="a"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="datepicker" class="form-control" runat="server"></asp:TextBox>
                      <%--<input type="text" class="form-control" id="datepicker">--%>
                      <script>
                        $('#datepicker').datepicker({
                          showOtherMonths: true
                        });
                      </script>

                    </div>
                    <div class="form-group last mb-4">
                      <label for="passCust">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator6" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="passCust" ValidationGroup="a"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="passCust" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                      <%--<input type="password" class="form-control" id="pass">--%>

                    </div>
                    <div class="form-group last mb-4">
                      <label for="cpassCust">Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator7" class="redstar" runat="server" ErrorMessage="*" ControlToValidate='cpassCust' ValidationGroup="a"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="cpassCust" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" class="redstar" ErrorMessage="Password doesn't match" ControlToCompare="passCust" ControlToValidate="cpassCust"></asp:CompareValidator>
                      <%--<input type="password" class="form-control" id="cpass">--%>

                    </div>
                      <asp:Button ID="Button1" class="btn btn-pill btn-block but" runat="server" Text="Register" OnClick="Button1_Click" ValidationGroup="a" />
                      

                    <%--<input type="submit" value="Log In" class="btn btn-pill text-white btn-block btn-primary">--%>


                  <%--</form>--%>
                </div>
              </div>


              <!-----------------VENDOR------------------------->


              <div class="tab-pane fade " id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <div class="form-block">
                  <div class="mb-4">
                    <h3>Register as Vendor</h3>
                  </div>
                  <br>
                  <%--<form action="#" runat="server">--%>
                    <div class="row">
                      <div class="col">
                        <div class="form-group first">
                          <label for="fnameVend">First name<asp:RequiredFieldValidator ID="RequiredFieldValidator8" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="fnameVend" ValidationGroup="b"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="fnameVend" class="form-control" runat="server"></asp:TextBox>
                          <%--<input type="text" class="form-control" id="fname">--%>

                        </div>
                      </div>

                      <div class="col">
                        <div class="form-group first">
                          <label for="lnameVend">Last name<asp:RequiredFieldValidator ID="RequiredFieldValidator9" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="lnameVend" ValidationGroup="b"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="lnameVend" class="form-control" runat="server"></asp:TextBox>
                          <%--<input type="text" class="form-control" id="lnameVend">--%>

                        </div>
                      </div>
                    </div>
                    <div  class="row">
                      <div class="col">
                        <div class="form-group last mb-4">
                          <label for="eidVend">Email ID<asp:RequiredFieldValidator ID="RequiredFieldValidator10" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="eidVend" ValidationGroup="b"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="eidVend" class="form-control" runat="server"></asp:TextBox>
                          <%--<input type="text" class="form-control" id="eidVend">--%>

                        </div>
                      </div>
                      <div class="col">
                        <div class="form-group last mb-4">
                          <label for="mobnoVend">Mobile no<asp:RequiredFieldValidator ID="RequiredFieldValidator11" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="mobnoVend" ValidationGroup="b"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="mobnoVend" class="form-control" runat="server"></asp:TextBox>
                          <%--<input type="text" class="form-control" id="mobnoVend">--%>

                        </div>
                      </div>
                    </div>
                    <div class="form-group last mb-4">
                      <label for="datepicker2">Date of Birth<asp:RequiredFieldValidator ID="RequiredFieldValidator12" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="datepicker2" ValidationGroup="b"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="datepicker2" class="form-control" runat="server"></asp:TextBox>
                      <%--<input type="text" class="form-control" id="datepicker2">--%>
                      <script>
                        $('#datepicker2').datepicker({
                          showOtherMonths: true
                        });
                      </script>

                    </div>
                    <div class="row">
                      <div class="col">
                        <div class="form-group first">
                          <label for="compname">Company Name<asp:RequiredFieldValidator ID="RequiredFieldValidator13" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="compname" ValidationGroup="b"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="compname" class="form-control" runat="server"></asp:TextBox>
                          <%--<input type="text" class="form-control" id="compname">--%>

                        </div>
                      </div>

                      <div class="col">
                        <div class="form-group first">
                            <asp:DropDownList class="form-control" ID="category" runat="server">
                                <asp:ListItem>Category</asp:ListItem>
                                <asp:ListItem>Photos</asp:ListItem>
                                <asp:ListItem>Venues</asp:ListItem>
                                <asp:ListItem>Food</asp:ListItem>
                            </asp:DropDownList>



                          <%--<select class="form-control" id="category">
                            <option selected>Category </option>
                            <option>Photography</option>
                            <option>Venue</option>
                            <option>Food</option>
                          </select> --%>

                        </div>
                      </div>
                    </div>
                    <div class="form-group last mb-4">
                      <label for="passVend">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator14" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="passVend" ValidationGroup="b"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="passVend" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                      <%--<input type="password" class="form-control" id="passVend">--%>

                    </div>
                    <div class="form-group last mb-4">
                      <label for="cpassVend">Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator15" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="cpassVend" ValidationGroup="b"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="cpassVend" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Password doen't match" class="redstar" ControlToCompare="passVend" ControlToValidate="cpassVend"></asp:CompareValidator>
                      <%--<input type="password" class="form-control" id="cpassVend">--%>

                    </div>                            
                      <asp:Button ID="Button2" class="btn btn-pill btn-block but"  runat="server" Text="Register" OnClick="Button2_Click" ValidationGroup="b" />
                    <%--<input type="submit" value="Log In" class="btn btn-pill text-white btn-block btn-primary">--%>


                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString %>" SelectCommand="SELECT * FROM [Customer]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>

    </div>
  </div>
</div>
        <%--<script>
            $(".b1").on("click", function () {
                $(this).css('background', '#5a1a6b')
                $('.b2').css('background', 'white')
            }
        </script>--%>

<script src="js/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
    </form>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString2 %>" SelectCommand="SELECT * FROM [Vendor2]"></asp:SqlDataSource>


                  </form>
                </body>
</html>
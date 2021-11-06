<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Final_year_Project.Signup" %>

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
    <link rel="stylesheet" href="Sakura/sakura.css" />
    <title>Signup</title>
    <link rel="shortcut icon" href="logo.ico" />
    <style>
        #category {
            border-bottom: 1px solid #ced4da;
        }

        .redstar {
            color: red;
        }

        .btn-primary {
            color: greenyellow
        }

        .content {
        }

        .form-block {
            /* position:relative;
        
        background:rgba(255,255,255,1);
        border-radius:6px;
        box-shadow:0 5px 35px rgba(0,0,0,0.7);*/
            border-top-right-radius: 30px;
            border-bottom-right-radius: 30px;
        }

            .form-block::after {
                /* content:'';
       position:relative;
       top:5px;
       left:5px;
       right:5px;
       bottom:5px;
       pointer-events:none;
       background:linear-gradient(to bottom, rgba(255,255,255,0.3) 0%,rgba(255,255,15,0.1) 15%, trasparent 50%, trasparent 85%,rgba(255,255,255,0.1) 100%);
       border-radius:5px;
       box-shadow:0 5px 35px rgba(0,0,0,0.2);*/
            }

        .row {
            background: white;
            border-radius: 30px;
            box-shadow: 0px 2px 26px;
        }

        .img-fluid {
            height: 100%;
            width: 100%;
        }

        img {
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
        }

        #Button1 {
            border: none;
            outline: none;
            height: 50px;
            width: 100%;
            background: #5a1a6b;
            color: gold;
            border-radius: 4px;
        }

            #Button1:hover {
                background: #7f2598 /*#862ebd*/;
            }

        input::placeholder {
            font-size: 13px;
        }

        .hide {
            position: relative;
            width: 100%;
            height: 147px;
            top: 83px;
            z-index: 2;
            background: -webkit-linear-gradient(left, rgb(117, 121, 255), rgb(178, 68, 239));
        }
    </style>
</head>
<body style="background: -webkit-linear-gradient(left,#7579ff,#b244ef); overflow-y: hidden">



    <form id="form1" runat="server">



        <div class="content my-4 mx-5 ">
            <div class="container ">
                <div class="row justify-content-center no-gutters" style="z-index: 4; height: 49%;">
                    <div class="col-lg-8" style="z-index: 2;">
                        <img src="images/log2.jpg" class="img-fluid" alt="" />
                    </div>
                    <div class="col-md-4 contents" style="z-index: 2;">
                        <div class="row justify-content-center no-gutters">
                            <div class="col-md-12">
                                <div class="form-block">
                                    <div class="mb-4">
                                        <h2><strong>Sign In </strong></h2>
                                    </div>
                                    <div class="form-group first">
                                        <label for="username">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="username"></asp:RequiredFieldValidator></label>
                                        <asp:TextBox placeholder="Email ID" ID="username" class="form-control" runat="server"></asp:TextBox>
                                        <%--<input type="text" class="form-control" id="username">--%>
                                    </div>
                                    <div class="form-group last mb-4">
                                        <label for="password">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="redstar" runat="server" ErrorMessage="*" ControlToValidate="password"></asp:RequiredFieldValidator></label>
                                        <asp:TextBox placeholder="Password" ID="password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                                        <%--<input type="password" class="form-control" id="password">--%>
                                    </div>

                                    <div class="d-flex mb-5 align-items-center">

                                        <span class="mr-auto"><a href="#" class="forgot-pass">Forgot Password</a></span>
                                    </div>
                                    <asp:Button ID="Button1" class="btn btn-pill text-white btn-block btn-primary" runat="server" Text="Log In" OnClick="Button1_Click" />

                                    <!--<input type="submit" value="Log In" class="btn btn-pill text-white btn-block btn-primary">-->


                                    <hr />
                                    <p style="font-size: 16px; color: black;">
                                        Don't have an account?
                      <asp:HyperLink ForeColor="#026aa7" ID="HyperLink1" runat="server" NavigateUrl="~/Register Cust.aspx">Register</asp:HyperLink>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
        <div class="hide">
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString2 %>" SelectCommand="SELECT * FROM [Vendor2]"></asp:SqlDataSource>
    </form>
    <script src="Sakura/sakura.js" text="text/javascript"></script>
    <script>
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
</body>
</html>
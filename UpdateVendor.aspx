<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateVendor.aspx.cs" Inherits="Final_year_Project.UpdateVendor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>Update</title> <link rel="shortcut icon" href="logo.ico" />
    <style>
        body {
            background: -webkit-linear-gradient(left,#7579ff,#b244ef);
        }

        .hed {
            display: grid;
            background: #5a1a6b;
            color: #edd805;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }

        .but {
            color: #edd805;
            background: #5a1a6b;
            position: relative;
            top: -12px;
            border: none;
        }

            .but:hover {
                background: #7c2494;
                color: #edd805;
            }

            .but:focus {
                background: #7c2494;
                color: #edd805;
            }
    </style>
</head>
<body>

    <form id="form1" runat="server">


        <div class="content">
            <div class="container">
                <div class="row justify-content-center">
                    <!-- <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div> -->
                    <div class="col-md-8 contents">
                        <div class="row justify-content-center">
                            <div class="col-md-12" style="position: relative; top: 80px;">






                                <div style="box-shadow: 0px 2px 12px 2px; border-radius: 8px;">
                                    <div class="mb-8 hed ">
                                        <h3 style="position: relative; left: 270px; top: -3px;">Edit your information </h3>
                                    </div>
                                    <div class="card " style="border-bottom-left-radius: 8px; border-bottom-right-radius: 8px;">
                                        <br>

                                        <%--<div class="row">
                      <div class="form-group last col-md-12">
                      <div class="text-center">
                      <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                      <h6>Upload a different photo...</h6>
                      <input type="file" class="text-center center-block file-upload">
                      </div>
                    </div>
                  </div>--%>
                                        <div class="card-body">
                                            <div class="col">
                                                <div class="form-group first">
                                                    <label for="fname">First name</label>
                                                    <asp:TextBox class="form-control" ID="fname" runat="server" OnTextChanged="Unnamed1_TextChanged"></asp:TextBox>

                                                    <%--                          <input type="text" class="form-control" id="fname">--%>
                                                </div>
                                            </div>

                                            <div class="col">
                                                <div class="form-group first">
                                                    <label for="lname">Last name</label>
                                                    <asp:TextBox runat="server" class="form-control" ID="lname"></asp:TextBox>
                                                    <%--<input type="text" class="form-control" id="lname">--%>
                                                </div>
                                            </div>
                                            <%--<div class="col">--%>

                                                <%--<div class="form-group ">
                                                    <label for="eid">Email ID</label>
                                                    <asp:TextBox runat="server" class="form-control" ID="eid"></asp:TextBox>
                                                    <%--<input type="text" class="form-control" id="eid">--%>
                                               <%-- </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-group ">
                                                    <label for="mobno">Mobile no</label>
                                                    <asp:TextBox runat="server" class="form-control" ID="mobno"></asp:TextBox>--%>
                                                    <%--<input type="text" class="form-control" id="mobno">--%>
                                               <%-- </div>
                                            </div>--%>  
                                            <%--<div class="col">
                      <div class="form-group first mb-4">
                      <label for="datepicker">Date of Birth</label>
                        <asp:TextBox runat="server"></asp:TextBox>
                      <input type="text" class="form-control" id="datepicker">
                      <script>
                        $('#datepicker').datepicker({
                          showOtherMonths: true
                        });
                      </script>
                    </div>
                    </div>--%>
                                            <div class="col">
                                                <div class="form-group last mb-4">
                                                    <label for="pass">Password</label>
                                                    <asp:TextBox runat="server" class="form-control" ID="pass" TextMode="Password"></asp:TextBox>
                                                    <%--<input type="password" class="form-control" id="pass">--%>
                                                </div>
                                            </div>
                                            <div class="card-body form-group last mb-4">
                                                <label for="cpass">Confirm Password</label>
                                                <asp:TextBox runat="server" class="form-control" ID="cpass" TextMode="Password"></asp:TextBox>
                                                <%--<input type="password" class="form-control" id="cpass">--%>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <br>
                                                    <asp:LinkButton runat="server" class="btn btn-lg  but" OnClick="Unnamed1_Click"><i class="glyphicon glyphicon-ok-sign"></i> Save Changes</asp:LinkButton>
                                                    <%--<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save Changes</button>--%>
                                                    <asp:LinkButton runat="server" class="btn btn-lg  but" Style="position: relative; left: 385px;" OnClick="Unnamed2_Click"><i class="glyphicon glyphicon-remove"></i>Cancel</asp:LinkButton>
                                                    <%--<button class="btn btn-secondary" type="reset"><i class="glyphicon glyphicon-remove"></i> cancel</button>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
</body>
</html>                    
               
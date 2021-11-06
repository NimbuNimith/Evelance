<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg2Vend.aspx.cs" Inherits="Final_year_Project.Reg2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(function(){
            $("#FileUpload1").change(function () {
                var FileType = ["jpeg", "jpg", "png"];
                if ($.inArray($(this).val().split(".").pop().toLowerCase(), FileType) == -1)
                {
                    $("#Label1").text("Upload Only Image Types!");
                    $("#Label1").css('color', 'Red');
                    $("#FileUpload1").val("");
                    $("#Button1").attr('disabled', true);
                }
                else {
                    $("#Button1"). attr('disabled', false);
                    $("#Label1").text("");
                }
            })
        })
        $(function () {
            $("#FileUpload2").change(function () {
                var FileType = ["jpeg", "jpg", "png"];
                if ($.inArray($(this).val().split(".").pop().toLowerCase(), FileType) == -1) {
                    $("#Label2").text("Upload Only Image Types!");
                    $("#Label2").css('color', 'Red');
                    $("#FileUpload2").val("");
                    $("#Button3").attr('disabled', true);
                }
                else {
                    $("#Button3").attr('disabled', false);
                    $("#Label12").text("");
                }
            })
        })
    </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>Vendor</title>
    <style type="text/css">
       .upload-drop-zone {
  height: 200px;
  border-width: 2px;
  margin-bottom: 20px;
}

/* skin.css Style*/
.upload-drop-zone {
  color: #ccc;
  border-style: dashed;
  border-color: #ccc;
  line-height: 200px;
  text-align: center
}
.upload-drop-zone.drop {
  color: #222;
  border-color: #222;
} 
.reg{
    background:#5a1a6b;
    color:gold;
    width: 150px;
    height: 46px;
}
.reg:hover{
    background:#732687;
    color:gold;
}
    </style>
          
</head>
<body style="overflow-x:hidden;background:-webkit-linear-gradient(left,#7579ff,#b244ef);">


<br>
<br>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8 no-gutters">
                    <div class="card" style="border-radius:12px;border:none;box-shadow: 0px 2px 20px;top:10%">
                        <div class="card-header " style="height: 43px; background: #5a1a6b; color: gold; border-top-left-radius: 10px; border-top-right-radius: 10px;"><span style="position:absolute;left:50%;top:10px;font-size:18px;">Register</span></div>
                        <div class="card-body">
                            <form  runat="server">

                                <div class="form-group row ">
                                    <div class="col-md-5 "><h1></h1></div>
                                    <div class="col-md-3 text-center">
                                      <%--<img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">--%>
                                        <%--<asp:Image ID="Image1" runat="server" class="avatar img-circle img-thumbnail" ImageUrl='http://ssl.gstatic.com/accounts/ui/avatar_2x.png' />--%>
                                                <h6>Upload a Profile photo</h6>
                                           <%-- <input type="file" class="text-center center-block file-upload">--%>
                                        <div class="col-md-8">
                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></div>
<%--                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Upload an image" ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>--%>

                                        <asp:Button ID="Button3" runat="server" Text="Upload" OnClick="Button3_Click" />
                                                  </div>
                                </div>
                                <br>
                                <div class="form-group row">
                                    <label for="" class="col-md-4 col-form-label text-md-right">Location:</label>
                                    <div class="col-md-6">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Selected="True">Select a city</asp:ListItem>
                                        <asp:ListItem>Mumbai</asp:ListItem>
                                        <asp:ListItem>Bangalore</asp:ListItem>
                                        <asp:ListItem>Chennai</asp:ListItem>
                                        <asp:ListItem>Kolkata</asp:ListItem>
                                    </asp:DropDownList>
                                        </div>
                                    </div>
                                
                                

                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">About 
                                        your
                                        company:</label>
                                    <div class="col-md-6">
                                        <%--<textarea class="form-control" id="exampleFormControlTextarea2" rows="3"></textarea>--%>
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" Rows="3" Height="100px" Width="495px" MaxLength="240" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="" class="col-md-4 col-form-label text-md-right">Approximate Cost:</label>
                                    <div class="col-md-6">
                                        <%--<textarea class="form-control" id="exampleFormControlTextarea2" rows="3"></textarea>--%>
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" Rows="1" Width="495px" MaxLength="240" TextMode="Singleline"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Recent works:</label>
                                    <div class="col-md-5 d-inline-flex p-2">
                                        <div class="container">
                                          <div class="panel panel-default">
                                            <div class="panel-heading"><strong>Upload Files</strong> </div>
                                            <div class="panel-body">

                                              <!-- Standar Form -->
                                              <h4>Select files from your computer</h4>
                                              <%--<form runat="server">--%>
                                                <div class="form-inline">
                                                  <div class="form-group">
                                                      <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
                                                    <%--<input type="file" name="files[]" id="js-upload-files" multiple>--%>
                                                  </div><br />
                                                    <asp:Button ID="Button1"  class="btn btn-sm btn-primary"  runat="server" Text="Upload Photos" OnClick="Button1_Click" />
                                                  <%--<button type="submit" class="btn btn-sm btn-primary" id="js-upload-submit">Upload files</button>--%>
                                                </div>
                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


                                              

                                            </div>
                                          </div>
                                        </div> <!-- /container -->
                                    </div>
                                </div>

                                        <br>       
                                
                                <div class="form-group row">
                                    <div class="col-md-6 offset-md-4">
                                        <asp:Button ID="Button2" class="btn btn-primary reg" style="position: absolute; left: 26%;" runat="server" Text="Register"  OnClick="Button2_Click" />
                                        <%--<button type="submit" class="btn btn-primary">
                                        Register
                                        </button>--%>
                                    </div>
                                </div>
                                   
                            </form>
                            <br>
                            <br>
                        </div>
                    </div>
            </div>
        </div>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString2 %>" SelectCommand="SELECT * FROM [Vendor2]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementConnectionString3 %>" SelectCommand="SELECT * FROM [Vendor2b]"></asp:SqlDataSource>
</body>
</html>
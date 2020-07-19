<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RastgeleSoruOlusturma_.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link rel="stylesheet" href=" https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <style>
         body {
          font-family: sans-serif;
          background-image: linear-gradient(to left, #5ee7df 0%, #b490ca 100%);
      }
         .special{
             margin-top:15px;

         }
   
      .jumbotron{
          margin-left:25%;
          margin-top:50px;
      }
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <div class="container">
            <a class="navbar-brand text-white" href="Home.aspx">Rastgele Soru Oluşturma Uygulaması</a>
        </div>
    </nav>
        <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron w-50">
                    <h2 class="display-5 text-primary text-center">Kullanıcı Girişi</h2>
                    <hr />
                <div class="form-group">
                    
<asp:Label runat="server">Kullanıcı Adı:</asp:Label><asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
<hr />
<asp:Label runat="server">Şifre:</asp:Label><asp:TextBox ID="password"  runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:Button ID="Giris" runat="server" Text="Giriş Yap" CssClass="btn btn-primary w-100  mt-3" OnClick="Giris_Click"/>
                    
                   </div>
                    <asp:Label ID="KullaniciSifre" runat="server" Text="" CssClass="alert alert-danger form-control"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kullanıcı Adı Boş Geçilemez" ControlToValidate="username" CssClass="alert alert-danger special form-control"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Şifre Boş Geçilemez" ControlToValidate="password" CssClass="alert alert-danger mt-2 form-control special"></asp:RequiredFieldValidator>
                
                </div>
            </div>
          
        </div>
    </div>

    </form>
</body>
</html>

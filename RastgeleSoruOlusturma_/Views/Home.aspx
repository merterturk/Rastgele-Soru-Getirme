<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RastgeleSoruOlusturma_.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
  <asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

  

     <div class="container">
        <div class="row mt-5">
            <div class="col-md-4">
                <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                    <div class="card-header text-center">Soru Sayısı</div>
                    <div class="card-body">
                        <h4 class="text-center" id="Soru">
                            <asp:Label ID="SoruSayisi" runat="server" Text="Label"></asp:Label> 

                        </h4>
                    </div>
                </div>
            </div>
            <div class="col-md-4" id="deneme">
                <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header text-center">Kullanıcı Sayısı</div>
                    <div class="card-body">
                        <h4 class="text-center">
                              <asp:Label ID="KullaniciSayisi" runat="server" Text="Label"></asp:Label> 
                        </h4>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-info mb-3" style="max-width: 18rem;">
                    <div class="card-header text-center"> Ders Sayısı</div>
                    <div class="card-body">
                        <h4 class="text-center">
                              <asp:Label ID="DersSayisi" runat="server" Text="Label"></asp:Label> 
                        </h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
                    <div class="card-header text-center">En Çok Soru Ekleyen Kullanıcı</div>
                    <div class="card-body">
                        <p class="text-center">
                              <asp:Label ID="EncokSoruEkleyenKullanici" runat="server" Text="Label"></asp:Label> 
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-warning mb-3" style="max-width: 18rem;">
                    <div class="card-header text-center">En Az Soru Ekleyen Kullanıcı</div>
                    <div class="card-body">
                        <p class="text-center">
                              <asp:Label ID="EnazSoruEkleyenKullanici" runat="server" Text="Label"></asp:Label> 
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white mb-3" style="max-width: 18rem; background-color:tomato;">
                    <div class="card-header text-center">En Çok Soru Eklenen Ders</div>
                    <div class="card-body">
                        <p class="text-center">
                              <asp:Label ID="EncokSoruEklenenDers" runat="server" Text="Label"></asp:Label> 
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card text-white  mb-3" style="max-width: 18rem; background-color:cornflowerblue;">
                    <div class="card-header text-center">En Az Soru Eklenen Ders</div>
                    <div class="card-body">
                      <p class="text-center">
                            <asp:Label ID="EnazSoruEklenenDers" runat="server" Text="Label"></asp:Label> 
                      </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white mb-3" style="max-width: 18rem; background-color:darkturquoise;">
                    <div class="card-header text-center">En Son Eklenen Ders</div>
                    <div class="card-body">
                        <p class="text-center">
                              <asp:Label ID="EnsonEklenenDers" runat="server" Text="Label"></asp:Label> 
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white mb-3" style="max-width: 18rem; background-color:darkseagreen;">
                    <div class="card-header text-center">En Son Eklenen Kullanıcı</div>
                    <div class="card-body">
                        <p class="text-center">
                              <asp:Label ID="EnsonEklenenKullanici" runat="server" Text="Label"></asp:Label> 
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/MasterPage.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="RastgeleSoruOlusturma_.Views.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <div class="jumbotron w-75">
                    <h3 class="display-5 text-primary text-center">Kişisel Bilgilerim</h3>
                    <hr />
                    <div class="form-group">
                        <label>Kullanıcı Adı:</label><asp:TextBox ID="txtadsoyad" runat="server" CssClass="form-control"></asp:TextBox>
                        <label>Şifre</label><asp:TextBox ID="txtsifre" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btnkiselbilgi" runat="server" Text="Güncelle" ValidationGroup="Group1"  CssClass="btn btn-success form-control mt-3" OnClick="btnkiselbilgi_Click" />
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Group1" ControlToValidate="txtadsoyad" ErrorMessage="Kullanıcı adı boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group1" ControlToValidate="txtsifre" ErrorMessage="Şifre boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-md-6">
                <div class="jumbotron w-75">
                    <h3 class="display-5 text-primary text-center">Kullanıcı Ekle</h3>
                    <hr />
                    <label>Ad Soyad:</label><asp:TextBox ID="txtyenikulad" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>Şifre</label><asp:TextBox ID="txtyenikulsifre" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:Button ID="btnkullaniciekle"  runat="server" ValidationGroup="Group2" Text="Ekle" CssClass="btn btn-primary form-control mt-3" OnClick="btnkullaniciekle_Click" />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Group2" ControlToValidate="txtyenikulad"  ErrorMessage="Kullanıcı adı boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ValidationGroup="Group2" ControlToValidate="txtyenikulsifre"   ErrorMessage="Şifre boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
    </div>



</asp:Content>

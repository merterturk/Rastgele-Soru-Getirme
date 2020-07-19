<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateCourse.aspx.cs" Inherits="RastgeleSoruOlusturma_.UpdateCourse1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron mt-5">
                    <h1 class="display-5 text-center">Ders Güncelleme</h1>
                    <asp:Label ID="lblDersID" runat="server" Text="Ders ID:"></asp:Label>
                    <asp:TextBox ID="txtDersID" runat="server" CssClass="form-control"></asp:TextBox>
                    <hr />
                    <asp:Label ID="lblDersAdi" runat="server" Text="Ders Adı:"></asp:Label>
                    <asp:TextBox ID="txtDersAdi" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:Button ID="btn_guncelle" runat="server" Text="Güncelle" CssClass="btn btn-success form-control mt-4" OnClick="btn_guncelle_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

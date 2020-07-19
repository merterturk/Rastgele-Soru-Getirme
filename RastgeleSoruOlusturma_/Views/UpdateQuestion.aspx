<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateQuestion.aspx.cs" Inherits="RastgeleSoruOlusturma_.Views.UpdateQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
 <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="jumbotron mt-5">
                    <h1 class="display-5 text-center">Soru Güncelleme</h1>
                  <label>SoruID:</label>
                    <asp:TextBox ID="txtSoruID" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>Ders:</label>
                    <asp:DropDownList ID="drpders" runat="server" CssClass="form-control"></asp:DropDownList>
                    <label>Soru:</label>
                    <asp:TextBox ID="txtsoru" runat="server" CssClass="form-control" TextMode="MultiLine" Height="90px"></asp:TextBox>
                    <label>A</label>
                    <asp:TextBox ID="txtA" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>B</label>
                    <asp:TextBox ID="txtB" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>C</label>
                    <asp:TextBox ID="txtC" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>D</label>
                    <asp:TextBox ID="txtD" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>E</label>
                    <asp:TextBox ID="txtE" runat="server" CssClass="form-control"></asp:TextBox>
                     <label>Doğru Cevap</label>
                    <asp:DropDownList ID="drpcevap" runat="server" CssClass="form-control" AutoPostBack="False"></asp:DropDownList>
                    <div class="text-center">
                    <asp:Button ID="btnguncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary w-50 mt-3" OnClick="btnguncelle_Click"/>
                        </div>
                    
                
                </div>
            </div>
        </div>
    </div>






</asp:Content>

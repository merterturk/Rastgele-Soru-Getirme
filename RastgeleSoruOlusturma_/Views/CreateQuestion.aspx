<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateQuestion.aspx.cs" Inherits="RastgeleSoruOlusturma_.Views.CreateQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container mt-3">
        <div class="form-group">
            <label class="font-weight-bold">Ders Seçiniz:</label>
            <asp:DropDownList ID="drpdersler" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <div class="form-group">
            <label class="font-weight-bold">Soru Sayısı:</label>
            <asp:TextBox ID="txtsorusayisi" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
        </div>
        <asp:Button ID="btnsoruolustur" runat="server" Text="Soru Oluştur" CssClass="btn btn-primary form-control" OnClick="btnsoruolustur_Click" />
    </div>
    <div class="mt-5 text-center">
        <asp:Label ID="lblsorubilgi" runat="server" Text="" CssClass="alert alert-primary" Visible="False"></asp:Label>
    </div>
    <table class="table table-bordered mt-3">
        <asp:Repeater ID="rptquestion" runat="server">
            <HeaderTemplate>
                <tr>
                    <th>DersAdı</th>
                    <th>Soru</th>
                    <th>A</th>
                    <th>B</th>
                    <th>C</th>
                    <th>D</th>
                    <th>E</th>
                    <th>Doğru Cevap</th>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("subject")%></td>
                    <td><%#Eval("QuestionContent")%></td>
                    <td><%#Eval("A")%></td>
                    <td><%#Eval("B")%></td>
                    <td><%#Eval("C")%></td>
                    <td><%#Eval("D")%></td>
                    <td><%#Eval("E")%></td>
                    <td class="text-danger font-weight-bolder"><%#Eval("Correctanswer")%></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>

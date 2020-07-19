<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/MasterPage.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="RastgeleSoruOlusturma_.Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary form-control mt-2" data-toggle="modal" data-target="#exampleModal">
            Ders Ekle
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ders Ekleme</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <label>Ders Adı:</label>
                        <asp:TextBox ID="txtdersadi" runat="server" CssClass="form-control" MaxLength="100"></asp:TextBox>
                    </div>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ders Adı Boş Geçilemez" ControlToValidate="txtdersadi" CssClass="alert alert-danger special form-control"></asp:RequiredFieldValidator>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Kapat</button>
                        <asp:Button ID="btnekle" CssClass="btn btn-primary" runat="server" Text="Ekle" OnClick="Btnekle_Click" />
                    </div>
                </div>
            </div>
        </div>


        <table class="table table-bordered mt-3">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <tr>
                        <th>ID</th>
                        <th>Ders Adı</th>
                        <th>Güncelle</th>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("SubjectID")%></td>
                        <td><%#Eval("SubjectName")%></td>
                        <td><a href="UpdateCourse.aspx?SubjectID=<%#Eval("SubjectID")%>" class="btn btn-success form-control">Güncelle</a></td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </table>
    </div>
</asp:Content>


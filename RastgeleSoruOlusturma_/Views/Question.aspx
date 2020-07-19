<%@ Page Title="" Language="C#" MasterPageFile="~/Layout/MasterPage.Master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="RastgeleSoruOlusturma_.Views.Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary form-control mt-2" data-toggle="modal" data-target="#exampleModal">
            Soru Ekle
        </button>
        <h4 class="text-center mt-3 ">Eklediğim Sorular</h4>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Soru Ekleme</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <label>Ders:</label>
                        <asp:DropDownList ID="dersler" runat="server" CssClass="form-control"></asp:DropDownList>
                        <label>Soru:</label>
                        <asp:TextBox ID="txtsoruicerik" runat="server" CssClass="form-control" TextMode="MultiLine" Height="80px"></asp:TextBox>
                        <label>A:</label>
                        <asp:TextBox ID="txtA" runat="server" CssClass="form-control"></asp:TextBox>
                        <label>B:</label>
                        <asp:TextBox ID="txtB" runat="server" CssClass="form-control"></asp:TextBox>
                        <label>C:</label>
                        <asp:TextBox ID="txtC" runat="server" CssClass="form-control"></asp:TextBox>
                        <label>D:</label>
                        <asp:TextBox ID="txtD" runat="server" CssClass="form-control"></asp:TextBox>
                        <label>E:</label>
                        <asp:TextBox ID="txtE" runat="server" CssClass="form-control"></asp:TextBox>
                        <label>Doğru Cevap:</label>
                        <asp:DropDownList ID="drpcevap" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Kapat</button>
                        <asp:Button ID="btnsoruekle" runat="server" Text="Ekle" CssClass="btn btn-primary" ValidationGroup="group1" OnClick="btnsoruekle_Click" />
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="group1" ControlToValidate="txtsoruicerik" ErrorMessage="Soru İçeriği boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="group1" ControlToValidate="txtA" ErrorMessage="A şıkkı boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="group1" ControlToValidate="txtB" ErrorMessage="B şıkkı boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="group1" ControlToValidate="txtC" ErrorMessage="C şıkkı boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="group1" ControlToValidate="txtD" ErrorMessage="D şıkkı boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="group1" ControlToValidate="txtE" ErrorMessage="E şıkkı boş bırakılamaz" CssClass="alert alert-danger mt-3 form-control"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>


        <table class="table table-bordered mt-3">
            <asp:Repeater ID="rptquestion" runat="server">
                <HeaderTemplate>
                    <tr>
                        <th>SoruID</th>
                        <th>Ders Adı</th>
                        <th>Soru İçeriği</th>
                        <th>A</th>
                        <th>B</th>
                        <th>C</th>
                        <th>D</th>
                        <th>E</th>
                        <th>Doğru Cevap</th>
                        <th>İşlemler</th>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("QuestionID")%></td>
                        <td><%# Eval("SubjectName")%></td>
                        <td><%# Eval("QuestionContent") %></td>
                        <td><%# Eval("A")%></td>
                        <td><%# Eval("B")%></td>
                        <td><%# Eval("C")%></td>
                        <td><%# Eval("D")%></td>
                        <td><%# Eval("E")%></td>
                        <td class="text-danger font-weight-bolder"><%# Eval("Correctanswer")%></td>
                        <td><a href="UpdateQuestion.aspx?QuestionID=<%#Eval("QuestionID")%>" class="btn btn-success">Güncelle</a>
                            <a href="Question.aspx?QuestionID=<%#Eval("QuestionID")%>" onclick="btnsil_Click" class="btn btn-danger form-control mt-2">Sil
                            </a>


                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </table>
    </div>
</asp:Content>











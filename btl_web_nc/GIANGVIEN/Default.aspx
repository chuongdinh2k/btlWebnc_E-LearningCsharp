<%@ Page Title="" Language="C#" MasterPageFile="~/GIANGVIEN/Giangvien.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="btl_web_nc.GIANGVIEN.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <asp:Repeater ID="rptLophoc" runat="server" OnItemCommand="rptLophoc_ItemCommand">
        <ItemTemplate>
            <div class="col-4">
                <div class="card" style="width: 18rem;">
                  <div class="card-body">
                    <h5 class="card-title"><%# Eval("sTenLop") %></h5>
                    <p class="card-text">Mã lớp: <%# Eval("sLopid") %></p>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# string.Concat("Chitietlophoc.aspx?ID=", Eval("sLopid"))%>' CssClass="btn btn-success" runat="server">Xem chi tiết</asp:HyperLink>
                  </div>
            </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
   </div>
</asp:Content>

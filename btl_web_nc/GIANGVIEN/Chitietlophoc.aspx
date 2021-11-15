<%@ Page Title="" Language="C#" MasterPageFile="~/GIANGVIEN/Giangvien.Master" AutoEventWireup="true" CodeBehind="Chitietlophoc.aspx.cs" Inherits="btl_web_nc.GIANGVIEN.Chitietlophoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
           .room__list{
              box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
           }
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">LỊCH GIẢNG DẠY</h2>
    <asp:Repeater ID="rptBuoihoc" runat="server">
        <ItemTemplate>
            <div class="row pt-2 pb-2">
                <div class="col-12 d-flex room__list">
                    <h2 class="pr-4">Buổi học <%# Eval("iBuoiHocId") %></h2>
                    <p class="pr-4 pt-2">Thời gian: <%# Eval("dthoigian") %></p>
                    <p class="pr-4 pt-2">Tiêu đề: </p>
                    <p class="pr-4 pt-2">Thời gian bắt đầu: <%# Eval("sThoigianbatday") %></p>
                    <p class="pr-4 pt-2">Thời gian kết thúc: <%# Eval("sthoigianketthuc") %></p>
                     <asp:HyperLink ID="HyperLink1" CssClass="pt-2" NavigateUrl='<%# string.Concat("Chitietbuoihoc.aspx?ID=", Eval("iBuoihocid"))%>'  runat="server">Xem chi tiết</asp:HyperLink>
                </div>
            </div>
            <div class="row pt-2 pb-2">
                <div class="col-12 d-flex room__list">
                    <h2 class="pr-4">Buổi học <%# Eval("iBuoiHocId") %></h2>
                    <p class="pr-4 pt-2">Thời gian: <%# Eval("dthoigian") %></p>
                    <p class="pr-4 pt-2">Tiêu đề: </p>
                    <p class="pr-4 pt-2">Thời gian bắt đầu: <%# Eval("sThoigianbatday") %></p>
                    <p class="pr-4 pt-2">Thời gian kết thúc: <%# Eval("sthoigianketthuc") %></p>
                     <asp:HyperLink ID="HyperLink2" CssClass="pt-2" NavigateUrl='<%# string.Concat("Chitietbuoihoc.aspx?ID=", Eval("iBuoihocid"))%>'  runat="server">Xem chi tiết</asp:HyperLink>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/SINHVIEN/Sinhvien.Master" AutoEventWireup="true" CodeBehind="chitietlophocSV.aspx.cs" Inherits="btl_web_nc.SINHVIEN.chitietlophocSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                     <asp:HyperLink ID="HyperLink1" CssClass="pt-2" NavigateUrl='<%# string.Concat("ChitietbuoihocSV.aspx?ID=", Eval("iBuoihocid"))%>'  runat="server">Xem chi tiết</asp:HyperLink>
                    <%--<asp:HyperLink ID="HyperLink1" CssClass="pt-2" NavigateUrl='<%# String.Format("ChitietbuoihocSV.aspx?lopId={0}&name={1}", Eval("iBuoihocid"), Eval("Receipt_Name"))%>'  runat="server">Xem chi tiết</asp:HyperLink>--%>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

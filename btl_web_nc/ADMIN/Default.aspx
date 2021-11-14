<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="btl_web_nc.ADMIN.Default"  enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- List khóa học --%>
<div class="list__room d-flex">
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                  <th scope="col">#</th>
                  <th scope="col">Mã lớp</th>
                  <th scope="col">Tên lớp</th>
                  <th scope="col">Giảng viên</th>
                  <th scope="col">Xem danh sách sv</th>
                 <th scope="col">Xem chi tiết</th>
                  <th scope="col">Remove</th>
            </tr>
        </thead>
        <tbody>              
            <asp:Repeater ID="rptLophoc" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th scope="row"></th>
                            <td><%# Eval("sLopid") %> </td>
                            <td><%# Eval("sTenLop") %> </td>
                            <td><%# Eval("sGiangvienid") %></td>
                             <td>30</td>
                             <td>Xem chi tết lớp học</td>
                             <td>
                                 <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Delete" />
                             </td>
                         </tr>
                    </ItemTemplate>
                </asp:Repeater>

        </tbody>
    </table>
   
</div>
</asp:Content>

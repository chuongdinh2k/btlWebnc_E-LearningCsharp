<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="danhsachsinhvien.aspx.cs" Inherits="btl_web_nc.ADMIN.danhsachsinhvien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-striped table-bordered">
        <thead>
            <tr>

                  <th scope="col">#</th>
                  <th scope="col">Mã GV</th>
                  <th scope="col">Họ tên</th>
                  <th scope="col">Giới tính</th>
                  <th scope="col">Ngày sinh</th>
                 <th scope="col">Địa chỉ</th>
                 <th scope="col">Email</th>
                 <th scope="col">CMND</th>
                 <th scope="col">Số điện thoại</th>
                 <th scope="col">Account</th>

                  <th scope="col">Remove</th>
            </tr>
        </thead>
        <tbody>              
            <asp:Repeater ID="rptSinhvien" runat="server">
                    <ItemTemplate>
                        <tr>
                             <asp:HiddenField ID="hidden" runat="server" Value='<%# Eval("sSinhvienId") %>' />
                            <th scope="row"></th>
                            <td><%# Eval("sSinhvienId") %> </td>
                            <td><%# Eval("sTen") %> </td>
                            <td><%# Eval("sGioitinh") %></td>
                            <td><%# Eval("dNgaysinh") %></td>
                            <td><%# Eval("sDiachi") %></td>
                            <td><%# Eval("sEmail") %></td>
                            <td><%# Eval("sCmnd") %></td>
                            <td><%# Eval("sSodienthoai") %></td>
                            <td><%# Eval("sAccount") %></td>
                             <td>
                                 <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Delete" />
                             </td>
                         </tr>
                    </ItemTemplate>
                </asp:Repeater>

        </tbody>
    </table>
</asp:Content>

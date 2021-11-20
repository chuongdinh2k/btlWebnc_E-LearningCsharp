<%@ Page Title="" Language="C#" MasterPageFile="~/GIANGVIEN/Giangvien.Master" AutoEventWireup="true" CodeBehind="danhsachdiemdanh.aspx.cs" Inherits="btl_web_nc.GIANGVIEN.danhsachdiemdanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Danh sách điểm danh</h2>
    <table>
         <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">First</th>
              <th scope="col">Last</th>
              <th scope="col">Handle</th>
            </tr>
          </thead>
        <tbody>
            <asp:Repeater ID="rptdiemdanh" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("sSinhvienid") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

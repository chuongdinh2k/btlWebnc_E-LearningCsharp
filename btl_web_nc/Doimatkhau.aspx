<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doimatkhau.aspx.cs" Inherits="btl_web_nc.Doimatkhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Css/login.css" />
    <title>Đổi mật khẩu</title>
</head>
<body>
     <h1>Đổi mật khẩu</h1>
    <form id="form1" runat="server">
        <div class="row">
    <label>Username</label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox> <%--textbox tên đăng nhập--%>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên đăng nhập không được để trống!" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <div class="row">
    <label for="password">Password</label> <%--textbox mật khẩu--%>
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không được để trống!" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
     <div class="row">
    <label for="password">Mật khẩu mới</label> <%--textbox mật khẩu--%>
      <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mật khẩu không được để trống!" ControlToValidate="txtNewPassword" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  
    <div class="row">
    <label for="password">Nhập lại mật khẩu</label> <%--textbox mật khẩu--%>
      <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mật khẩu không được để trống!" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>

        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
        <asp:Label ID="error" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Đăng nhập</asp:HyperLink>
    </form>
</body>
</html>

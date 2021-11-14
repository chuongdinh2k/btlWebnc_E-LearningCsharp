<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="btl_web_nc.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" type="text/css" href="Css/login.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<head runat="server">
    <title></title>
</head>
<body>
  <h1>Đăng nhập</h1>
<form id="form1" runat="server">
  <div class="row">
    <label>Tài khoản</label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox> <%--textbox tên đăng nhập--%>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên đăng nhập không được để trống!" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <div class="row">
    <label for="password">Mật khẩu cũ</label> <%--textbox mật khẩu--%>
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không được để trống!" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
    
    
    <asp:Button ID="Button1" CssClass="btn" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
    <asp:Label ID="error" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
</form>
</body>
</html>

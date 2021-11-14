<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="btl_web_nc.ADMIN.Default"  enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
   <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#add" aria-controls="add" role="tab" data-toggle="tab">Thêm Giảng viên</a></li>
        <li role="presentation"><a href="#delete" aria-controls="profile" role="tab" data-toggle="tab">Xóa giảng viên</a></li>
        <li role="presentation"><a href="#update" aria-controls="messages" role="tab" data-toggle="tab">Cập nhật giảng viên</a></li>
      </ul>
      <!-- Tab panes -->
      <div class="tab-content">
        
        <div role="tabpanel" class="tab-pane active" id="add">
              <%--thêm giảng viên--%>
            <h2 class="text-center">THÊM GIẢNG VIÊN</h2>
            <form id="ThemGiangVien">
              
                <div class="form-group">
                <label for="exampleInputEmail1">Mã giảng viên</label>
                  <asp:TextBox ID="txtMagv" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống!" ControlToValidate="txtMagv" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              
                <div class="form-group">
                 <label for="exampleInputEmail1">Họ và tên</label>
                  <asp:TextBox ID="txtHoten" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="không được để trống!" ControlToValidate="txtHoten" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
               
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Nam" GroupName="gender" />  
               <asp:RadioButton ID="RadioButton2" runat="server" Text="Nữ" GroupName="gender" />  
               
                <div class="form-group">
                 <label >Ngày sinh</label>
                  <asp:TextBox ID="txtNgaysinh" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="không được để trống!" ControlToValidate="txtNgaysinh" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                 <label >Địa chỉ</label>
                  <asp:TextBox ID="txtDiaChi" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="không được để trống!" ControlToValidate="txtDiaChi" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>

                <div class="form-group">
                 <label >Email</label>
                  <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="không được để trống!" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>

                <div class="form-group">
                 <label >Số chứng minh nhân dân / căn cước công dân</label>
                  <asp:TextBox ID="txtCmnd" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="không được để trống!" ControlToValidate="txtCmnd" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>

                  <div class="form-group">
                 <label >Số điện thoại</label>
                  <asp:TextBox ID="txtPhoneNumber" CssClass="form-control" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="không được để trống!" ControlToValidate="txtPhoneNumber" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>


                  <div class="form-group">
                    <label >Bằng cấp</label><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Thạc sĩ" GroupName="bangcap" />  
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="Tiến sĩ" GroupName="bangcap" />  
               
                </div>

                <br />
                <asp:Button ID="Button1" CssClass="btn btn-primary" Text="SUBMIT" runat="server" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </form>
        </div>
        <div role="tabpanel" class="tab-pane" id="delete">This is Profile content</div>
        <div role="tabpanel" class="tab-pane" id="update">This is Messages content</div>
      </div>
</asp:Content>

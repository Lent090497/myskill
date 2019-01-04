<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Light.master" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
     
<div class="accountHeader">
    <h2>
        Đăng nhập</h2>
    <p>
        Nhập đầy đủ tên đăng nhập và mật khâu.</p>
</div>
<dx:ASPxLabel ID="lblUserName" runat="server" AssociatedControlID="tbUserName" Text="Tên đăng nhập:" />
<div class="form-field">
    <dx:ASPxTextBox ID="tbUserName" runat="server" Width="200px">
        <ValidationSettings ValidationGroup="LoginUserValidationGroup">
            <RequiredField ErrorText="User Name is required." IsRequired="true" />
        </ValidationSettings>
    </dx:ASPxTextBox>
</div>
<dx:ASPxLabel ID="lblPassword" runat="server" AssociatedControlID="tbPassword" Text="Mật khẩu:" />
<div class="form-field">
    <dx:ASPxTextBox ID="tbPassword" runat="server" Password="true" Width="200px">
        <ValidationSettings ValidationGroup="LoginUserValidationGroup">
            <RequiredField ErrorText="Password is required." IsRequired="true" />
        </ValidationSettings>
    </dx:ASPxTextBox>
</div>
<dx:ASPxButton ID="btnLogin" runat="server" Text="Đăng nhập" ValidationGroup="LoginUserValidationGroup"
    OnClick="btnLogin_Click" BackColor="Red" Font-Bold="True">
</dx:ASPxButton>
 
</asp:Content>
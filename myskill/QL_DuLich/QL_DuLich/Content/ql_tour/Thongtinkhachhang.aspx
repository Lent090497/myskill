<%@ Page Language="C#" Title="" AutoEventWireup="true" MasterPageFile="~/Content/ql_tour/Trangchu.master" CodeFile="Thongtinkhachhang.aspx.cs" Inherits="Content_ql_tour_Thongtinkhachhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div style="margin-left:10%">
            <h4> Vui lòng nhập đầy đủ thông tin khách hàng(*)</h4>
    <table style="width: 100%;">
        <tr>
            <td style="width: 199px">Tên(*):</td>
            <td style="width: 137px">
                <asp:TextBox ID="txt_tennv" runat="server" Width="193px"></asp:TextBox>
            </td>
            <td colspan="2">&nbsp;</td>
            <td style="width: 200px">CMND(*):</td>
            <td>
                <asp:TextBox ID="txt_cmnd" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 199px">Giới tính:</td>
            <td style="width: 137px">
                <asp:RadioButton ID="rd_nu" runat="server" Text="Nữ" />
&nbsp;<asp:RadioButton ID="rd_nam" runat="server" Text="Nam" />
            </td>
            <td colspan="2">&nbsp;</td>
            <td style="width: 200px">SDT(*):</td>
            <td>
                <asp:TextBox ID="txt_sdt" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 199px">Ngày sinh(*):</td>
            <td style="width: 137px">
                <asp:TextBox ID="txt_ns" runat="server" Width="193px"></asp:TextBox>
            </td>
            <td colspan="2">&nbsp;</td>
            <td style="width: 200px">Địa chỉ(*):</td>
            <td>
                <asp:TextBox ID="txt_dc" runat="server" Width="193px" Height="16px" style="margin-bottom: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 199px">&nbsp;</td>
            <td style="width: 137px">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td style="width: 200px">Email(*):</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server" Width="193px" Height="16px" style="margin-bottom: 0px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style1" rowspan="3">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="(*)Email không phù hợp" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                &nbsp;<br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_tennv" ErrorMessage="(*)Chưa nhập tên" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_sdt" ErrorMessage="(*)Chưa nhập số điện thoại" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_email" ErrorMessage="(*)Chưa nhập email" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td colspan="3" class="auto-style1">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="27px" ImageUrl="~/Content/Images/next.png" OnClick="ImageButton3_Click" style="margin-top: 0px" Width="89px" />
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style2">
            </td>
        </tr>
    </table>
            </div>
</asp:Content>
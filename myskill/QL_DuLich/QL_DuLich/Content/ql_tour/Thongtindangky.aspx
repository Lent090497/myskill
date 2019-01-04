<%@ Page Title="" Language="C#" MasterPageFile="~/Content/ql_tour/Trangchu.master" AutoEventWireup="true" CodeFile="Thongtindangky.aspx.cs" Inherits="Content_ql_tour_Thongtindangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table style="width:27%; margin-left:25%;margin-top:100px">
            <tr>
                <td class="auto-style1" style="text-align:center"><h3>Xác nhận thông tin</h3></td>
            </tr>
            <tr>
                <td class="auto-style1">Số lượng người lớn:&nbsp;
                    <asp:Label ID="lb_sl_nguoi_lon" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Số lượng trẻ em :&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="sl_tre_em" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Thành tiền&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lb_thanh_tien" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Content/Images/next.png" OnClick="ImageButton1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
        </table>
 </asp:Content>

      


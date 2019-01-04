<%@ Page Title="" Language="C#" MasterPageFile="~/Content/ql_tour/Trangchu.master" AutoEventWireup="true" CodeFile="Huytour.aspx.cs" Inherits="Content_ql_tour_Lienhe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        <table style="width:100%;margin-left:20%;margin-top:100px">
            <tr>
                <td colspan="2">Vui lòng nhập Email và số điện thoại</td>
            </tr>
            <tr>
                <td style="width: 95px">Email</td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" Width="178px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 95px">Số điện thoại</td>
                <td>
                    <asp:TextBox ID="txt_sdt" runat="server" Width="178px"></asp:TextBox>
                    
                </td>
            </tr>
            
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="30px" ImageUrl="~/Content/Images/next.png" OnClick="ImageButton6_Click" />
                </td>
            </tr>
            
        </table>
    </p>

</asp:Content>


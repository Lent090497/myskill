<%@ Page Title="" Language="C#" MasterPageFile="~/Content/ql_tour/Trangchu.master" AutoEventWireup="true" CodeFile="Timkiem.aspx.cs" Inherits="Content_ql_tour_Timkiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaCT" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
        <br />
        <table style="width:100%;">
            <tr>
                <td colspan="2">
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="300px" Width="300px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="txt_tentour" runat="server" Text='<%# Eval("TenTour") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">Loại tour:
                    <asp:Label ID="txt_loaitour" runat="server" Text='<%# Eval("LoaiTour") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">Giá:&nbsp;
                    <asp:Label ID="txt_gia" runat="server" Text='<%# Eval("GiaTour") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">Số ngày:&nbsp;&nbsp;
                    <asp:Label ID="txt_songay" runat="server" Text='<%# Eval("SoNgay") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">Ngày khởi hành:&nbsp;
                    <asp:Label ID="txt_ngaykhoihanh" runat="server" Text='<%# Eval("NgayKhoiHanh") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="30px" ImageUrl="~/Content/Images/view.png" OnClick="ImageButton5_Click" style="margin-left: 45px" CommandName="XemCT" CommandArgument='<%# Eval("MaCT") %>' />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT ChiTiet.MaCT, ChiTiet.Hinh, ChiTiet.NgayKhoiHanh, Tour.MaTour, Tour.TenTour, Tour.GiaTour, Tour.SoNgay, Tour.LoaiTour FROM ChiTiet INNER JOIN Tour ON ChiTiet.MaTour = Tour.MaTour where Tour.TenTour=@TenTour">
    <SelectParameters>
        <asp:QueryStringParameter Name="TenTour" QueryStringField="id" />
    </SelectParameters>
</asp:SqlDataSource>

</asp:Content>


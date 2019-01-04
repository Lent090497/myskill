<%@ Page Title="" Language="C#" MasterPageFile="~/Content/ql_tour/Trangchu.master" AutoEventWireup="true" CodeFile="Dattour.aspx.cs" Inherits="Content_ql_tour_Dattour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="text-align:center;color:#011345" >DANH SÁCH TOUR</h3>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" DataKeyField="MaTour" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="200px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lb_tenT" runat="server" Text='<%# Eval("TenTour") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Loại:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lb_LoaiT" runat="server" Text='<%# Eval("LoaiTour") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Số ngày:<asp:Label ID="lb_songay" runat="server" Text='<%# Eval("SoNgay") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Giá:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lb_gia" runat="server" Text='<%# Eval("GiaTour") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" CommandName="xemchitiet" CommandArgument='<%# Eval("MaCT") %>' Height="30px" ImageUrl="~/Content/Images/view.png" />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT Tour.TenTour, Tour.LoaiTour, Tour.SoNgay, Tour.GiaTour, ChiTiet.Hinh, ChiTiet.MaCT, Tour.MaTour FROM ChiTiet INNER JOIN Tour ON ChiTiet.MaTour = Tour.MaTour"></asp:SqlDataSource>
    </asp:Content>
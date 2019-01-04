<%@ Page Title="" Language="C#" MasterPageFile="~/Content/ql_tour/Trangchu.master" AutoEventWireup="true" CodeFile="Danhsachtourngoainuoc.aspx.cs" Inherits="Content_ql_tour_Danhsachtourngoainuoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <h3 style="text-align:center;color:#011345" >DANH SÁCH TOUR</h3>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT Tour.TenTour, Tour.LoaiTour, Tour.SoNgay, Tour.GiaTour, ChiTiet.Hinh, Tour.MaTour, ChiTiet.NgayKhoiHanh FROM ChiTiet INNER JOIN Tour ON ChiTiet.MaTour = Tour.MaTour WHERE (Tour.LoaiTour = @LoaiTour)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Ngoài nước" Name="LoaiTour" />
        </SelectParameters>
    </asp:SqlDataSource>
       <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTour" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
           <ItemTemplate>
               <table style="width:100%;">
                   <tr>
                       <td colspan="2">
                           <asp:ImageButton ID="ImageButton4" runat="server" Height="300px" ImageUrl='<%# Eval("Hinh") %>' Width="300px" />
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2">
                           <asp:Label ID="lb_ten_tour" runat="server" Text='<%# Eval("TenTour") %>'></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2">Giá:&nbsp;&nbsp;
                           <asp:Label ID="lb_gia" runat="server" Text='<%# Eval("GiaTour") %>'></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2">Số ngày:&nbsp;&nbsp;
                           <asp:Label ID="lb_songay" runat="server" Text='<%# Eval("SoNgay") %>'></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2">Ngày khởi hành:&nbsp;
                           <asp:Label ID="lb_ngay_khoi_hanh" runat="server" Text='<%# Eval("NgayKhoiHanh") %>'></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>
                           <asp:ImageButton ID="ImageButton5" runat="server" Height="30px" CommandName="xemchitiet" CommandArgument='<%# Eval("MaTour") %>' ImageUrl="~/Content/Images/view.png" style="margin-left: 46px" />
                       </td>
                   </tr>
               </table>
               <br />
               <br />
           </ItemTemplate>
       </asp:DataList>
</asp:Content>


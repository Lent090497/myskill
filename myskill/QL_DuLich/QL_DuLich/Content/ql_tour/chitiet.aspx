<%@ Page Language="C#" Title="" AutoEventWireup="true" MasterPageFile="~/Content/ql_tour/Trangchu.master" CodeFile="chitiet.aspx.cs" Inherits="Content_ql_tour_chitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaCT" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table style="width:auto;">
                    <tr>
                        <td class="auto-style1" rowspan="4">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Height="200px" Width="200px" />
                        </td>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenTour") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("NgayKhoiHanh") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lb_giatour" runat="server" Text='<%# Eval("GiaTour") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Người lớn:<asp:TextBox ID="txt_slnl" runat="server" Width="24px" OnTextChanged="txt_slnl_TextChanged"></asp:TextBox>
                        </td>
                        <td>Trẻ em:(*)
                            <asp:TextBox ID="txt_sl_tre_em" runat="server" Width="24px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td colspan="2">
                            (*) Trè em cao dưới 1m3</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txt_slnl" ErrorMessage="Dữ liệu không phù hợp" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txt_sl_tre_em" ErrorMessage="Dữ liệu không phù hợp" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                        </td>
                        <td colspan="2">
                            <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("MaTour") %>' CommandName="XemCT" Height="30px" ImageUrl="~/Content/Images/buy.png" OnClick="ImageButton2_Click" />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("LichTrinh") %>'></asp:Label>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT ChiTiet.Hinh, ChiTiet.NgayKhoiHanh, ChiTiet.LichTrinh, Tour.TenTour, ChiTiet.MaTour, ChiTiet.MaCT, Tour.MaTour AS Expr1, Tour.GiaTour FROM ChiTiet INNER JOIN Tour ON ChiTiet.MaTour = Tour.MaTour WHERE (ChiTiet.MaCT = @MaT)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaT" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>
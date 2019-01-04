<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="DanhSachTour.aspx.cs" Inherits="Content_DanhSachTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT * FROM [Tour] ">
    </asp:SqlDataSource>


     <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="MaTour" Width="100%">
         <Columns>
             <dx:GridViewDataTextColumn Caption="Mã tour" FieldName="MaTour" ReadOnly="True" VisibleIndex="0">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="Tên tour" FieldName="TenTour" VisibleIndex="1">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="Loại tour" FieldName="LoaiTour" VisibleIndex="2">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="Số ngày" FieldName="SoNgay" VisibleIndex="3">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="Giá tour" FieldName="GiaTour" VisibleIndex="4">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataComboBoxColumn Caption="Nhân viên phụ trách" FieldName="MaNV" VisibleIndex="5">
                 <PropertiesComboBox DataSourceID="SqlDataSource3" TextField="TenNV" ValueField="MaNV">
                 </PropertiesComboBox>
             </dx:GridViewDataComboBoxColumn>
         </Columns>
    </dx:ASPxGridView>


     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT MaNV, TenNV FROM NhanVien"></asp:SqlDataSource>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>
</asp:Content>



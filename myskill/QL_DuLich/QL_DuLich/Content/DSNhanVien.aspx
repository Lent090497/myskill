<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="DSNhanVien.aspx.cs" Inherits="Content_DSNhanVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT MaNV, TenNV, NgSinh, GioiTinh, CMND, Dchi, SoDienThoai, TenDN FROM NhanVien" DeleteCommand="DELETE FROM NhanVien WHERE (MaNV = @MaNV)" InsertCommand="INSERT INTO NhanVien(MaNV, TenNV, NgSinh, GioiTinh, CMND, Dchi, SoDienThoai) VALUES (@MaNV, @TenNV, @NgSinh, @GioiTinh, @CMND, @Dchi, @SDT)" UpdateCommand="UPDATE NhanVien SET TenNV = @TenNV, NgSinh = @NgSinh, GioiTinh = @GioiTinh, CMND = @CMND, Dchi = @Dchi, SoDienThoai = @SoDienThoai, TenDN = @TenDN WHERE (MaNV = @MaNV)">
        <DeleteParameters>
            <asp:Parameter Name="MaNV" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaNV" />
            <asp:Parameter Name="TenNV" />
            <asp:Parameter Name="NgSinh" />
            <asp:Parameter Name="GioiTinh" />
            <asp:Parameter Name="CMND" />
            <asp:Parameter Name="Dchi" />
            <asp:Parameter Name="SDT" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenNV" />
            <asp:Parameter Name="NgSinh" />
            <asp:Parameter Name="GioiTinh" />
            <asp:Parameter Name="CMND" />
            <asp:Parameter Name="Dchi" />
            <asp:Parameter Name="SoDienThoai" />
            <asp:Parameter Name="TenDN" />
            <asp:Parameter Name="MaNV" />
        </UpdateParameters>
    </asp:SqlDataSource>


     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT TenDN, MatKhau FROM NguoiDung"></asp:SqlDataSource>


     <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="MaNV" Width="100%">
         <Settings ShowFilterRow="True" />
         <SettingsSearchPanel Visible="True" />
         <Columns>
             <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
             </dx:GridViewCommandColumn>
             <dx:GridViewDataTextColumn Caption="Mã nhân viên" FieldName="MaNV" VisibleIndex="1">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="Tên nhân viên" FieldName="TenNV" VisibleIndex="2">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataDateColumn Caption="Ngày sinh" FieldName="NgSinh" VisibleIndex="3">
             </dx:GridViewDataDateColumn>
             <dx:GridViewDataTextColumn FieldName="CMND" VisibleIndex="5">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="Địa chỉ" FieldName="Dchi" VisibleIndex="6">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="SDT" FieldName="SoDienThoai" VisibleIndex="7">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataComboBoxColumn Caption="Tên đăng nhập" FieldName="TenDN" VisibleIndex="8">
                 <PropertiesComboBox DataSourceID="SqlDataSource3" TextField="TenDN" ValueField="TenDN">
                 </PropertiesComboBox>
             </dx:GridViewDataComboBoxColumn>
             <dx:GridViewDataTextColumn Caption="Giới tính" FieldName="GioiTinh" VisibleIndex="4">
             </dx:GridViewDataTextColumn>
         </Columns>
     </dx:ASPxGridView>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>
</asp:Content>


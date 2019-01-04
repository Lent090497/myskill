<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="nguoidung.aspx.cs" Inherits="Content_quanlynguoidung_nguoidung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceND" ClientInstanceName="ASPxGridView1"
    Width="100%" KeyFieldName="TenDN">
    <SettingsPager PageSize="10" />
    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
    <%-- DXCOMMENT: Configure ASPxGridView's columns in accordance with datasource fields --%>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
        <SettingsSearchPanel Visible="True" />
    <Columns>
        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="TenDN" VisibleIndex="1" Caption="Tên đăng nhập" ReadOnly="True">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="MatKhau" VisibleIndex="2" Caption="Mật khẩu">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataCheckColumn FieldName="HoatDong" VisibleIndex="3" Caption="Trạng thái">
        </dx:GridViewDataCheckColumn>
        <dx:GridViewDataComboBoxColumn Caption="Trong nhóm" FieldName="MaNhom" VisibleIndex="4">
            <PropertiesComboBox DataSourceID="SqlDataSource2" TextField="TenNhom" ValueField="MaNhom">
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
    </Columns>
</dx:ASPxGridView>


    <asp:SqlDataSource ID="SqlDataSourceND" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT TenDN, MatKhau, HoatDong, MaNhom FROM NguoiDung" DeleteCommand="DELETE FROM NguoiDung WHERE (TenDN = @TenDN)" InsertCommand="INSERT INTO NguoiDung(TenDN, MatKhau, HoatDong, MaNhom) VALUES (@TenDN, @MatKhau, @HoatDong, @MaNhom)" UpdateCommand="UPDATE NguoiDung SET TenDN = @TenDN, MatKhau = @MatKhau, HoatDong = @HoatDong, MaNhom = @MaNhom WHERE (TenDN = @TenDN)">
        <DeleteParameters>
            <asp:Parameter Name="TenDN" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenDN" />
            <asp:Parameter Name="MatKhau" />
            <asp:Parameter Name="HoatDong" />
            <asp:Parameter Name="MaNhom" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenDN" />
            <asp:Parameter Name="MatKhau" />
            <asp:Parameter Name="HoatDong" />
            <asp:Parameter Name="MaNhom" />
        </UpdateParameters>
</asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT [MaNhom], [TenNhom] FROM [NhomNguoiDung]"></asp:SqlDataSource>

</asp:Content>


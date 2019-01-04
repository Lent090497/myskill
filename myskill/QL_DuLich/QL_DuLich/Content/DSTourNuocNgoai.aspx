<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="DSTourNuocNgoai.aspx.cs" Inherits="Content_DSTourNuocNgoai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ClientInstanceName="ASPxGridView1"
    Width="100%" KeyFieldName="MaTour">
    <SettingsPager PageSize="50" />
    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
        <SettingsSearchPanel Visible="True" />
    <Columns>
        <dx:GridViewDataTextColumn FieldName="MaTour" VisibleIndex="0" ReadOnly="True" Caption="Mã tour">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TenTour" VisibleIndex="1" Caption="Tên tour">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LoaiTour" VisibleIndex="2" Caption="Loại tour">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SoNgay" VisibleIndex="3" Caption="Số ngày">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="GiaTour" VisibleIndex="4" Caption="Giá tour">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="Nhân viên phụ trách" FieldName="MaNV" VisibleIndex="5">
            <PropertiesComboBox DataSourceID="SqlDataSource3" TextField="TenNV" ValueField="MaNV">
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
    </Columns>
</dx:ASPxGridView>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT * FROM [Tour] WHERE ([LoaiTour] = @LoaiTour2)">
        <SelectParameters>
            <asp:Parameter DefaultValue="ngoài nước" Name="LoaiTour2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT MaNV, TenNV FROM NhanVien"></asp:SqlDataSource>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>
</asp:Content>


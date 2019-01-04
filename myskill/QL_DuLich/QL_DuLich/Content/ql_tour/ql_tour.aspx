<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ql_tour.aspx.cs" Inherits="Content_ql_tour_ql_tour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" DeleteCommand="DELETE FROM Tour WHERE (MaTour = @MaTour)" InsertCommand="INSERT INTO Tour(MaTour, TenTour, LoaiTour, SoNgay, GiaTour) VALUES (@MaTour, @TenTour, @LoaiTour, @SoNgay, @GiaTour)" SelectCommand="SELECT MaTour, TenTour, LoaiTour, SoNgay, GiaTour, MaNV FROM Tour" UpdateCommand="UPDATE Tour SET MaTour = @MaTour, TenTour = @TenTour, LoaiTour = @LoaiTour, SoNgay = @SoNgay, GiaTour = @GiaTour, MaNV = @MaNV WHERE (MaTour = @MaTour)">
    <DeleteParameters>
        <asp:Parameter Name="MaTour" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MaTour" />
        <asp:Parameter Name="TenTour" />
        <asp:Parameter Name="LoaiTour" />
        <asp:Parameter Name="SoNgay" />
        <asp:Parameter Name="GiaTour" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MaTour" />
        <asp:Parameter Name="TenTour" />
        <asp:Parameter Name="LoaiTour" />
        <asp:Parameter Name="SoNgay" />
        <asp:Parameter Name="GiaTour" />
        <asp:Parameter Name="MaNV" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT [MaNV], [TenNV] FROM [NhanVien]"></asp:SqlDataSource>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="MaTour" OnRowCommand="ASPxGridView1_RowCommand">
    <Settings ShowFilterRow="True" />
    <SettingsBehavior AllowFocusedRow="True" />
    <SettingsSearchPanel Visible="True" />
    <Columns>
        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="TenTour" VisibleIndex="2" Caption="Tên tour">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="LoaiTour" VisibleIndex="3" Caption="Loại tour">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="SoNgay" VisibleIndex="4" Caption="Số ngày ở">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="GiaTour" VisibleIndex="5" Caption="Giá">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="MaTour" VisibleIndex="1" Caption="Mã tour">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn FieldName="MaNV" VisibleIndex="6" Caption="Nhân viên phụ trách">
            <PropertiesComboBox DataSourceID="SqlDataSource2" TextField="TenNV" ValueField="MaNV">
            </PropertiesComboBox>
        </dx:GridViewDataComboBoxColumn>
    </Columns>
</dx:ASPxGridView>

</asp:Content>


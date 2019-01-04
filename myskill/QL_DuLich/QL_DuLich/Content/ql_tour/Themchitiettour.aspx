<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Themchitiettour.aspx.cs" Inherits="Content_ql_tour_Themchitiettour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="MaCT">
        <Settings ShowFilterRow="True" />
        <SettingsBehavior AllowSelectByRowClick="True" />
        <SettingsSearchPanel Visible="True" />
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="MaCT" ShowInCustomizationForm="True" VisibleIndex="1" Caption="Mã chi tiết">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Hinh" ShowInCustomizationForm="True" VisibleIndex="2" Caption="Hình">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="NgayKhoiHanh" ShowInCustomizationForm="True" VisibleIndex="3" Caption="Ngày khởi hành">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="LichTrinh" ShowInCustomizationForm="True" VisibleIndex="5" Caption="Lịch trình">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn FieldName="MaTour" ShowInCustomizationForm="True" VisibleIndex="4" Caption="Tour">
                <PropertiesComboBox DataSourceID="SqlDataSource2" TextField="TenTour" ValueField="MaTour">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" DeleteCommand="DELETE FROM ChiTiet WHERE (MaCT = @MaCT)" InsertCommand="INSERT INTO ChiTiet(MaCT, Hinh, NgayKhoiHanh, MaTour, LichTrinh) VALUES (@MaCT, @Hinh, @NgayKhoiHanh, @MaTour, @LichTrinh) " SelectCommand="SELECT MaCT, Hinh, NgayKhoiHanh, MaTour, LichTrinh FROM ChiTiet" UpdateCommand="UPDATE ChiTiet SET Hinh = @Hinh, NgayKhoiHanh = @NgayKhoiHanh, MaTour = @MaTour, LichTrinh = @LichTrinh where (MaCT=@MaCT)">
        <DeleteParameters>
            <asp:Parameter Name="MaCT" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaCT" />
            <asp:Parameter Name="Hinh" />
            <asp:Parameter Name="NgayKhoiHanh" />
            <asp:Parameter Name="MaTour" />
            <asp:Parameter Name="LichTrinh" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Hinh" />
            <asp:Parameter Name="NgayKhoiHanh" />
            <asp:Parameter Name="MaTour" />
            <asp:Parameter Name="LichTrinh" />
            <asp:Parameter Name="MaCT" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" SelectCommand="SELECT MaTour, TenTour FROM Tour"></asp:SqlDataSource>

</asp:Content>


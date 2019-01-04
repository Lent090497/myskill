<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="nhomnguoidung.aspx.cs" Inherits="Content_quanLyNhomNguoiDung_nhomnguoidung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
   
     <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="MaNhom" Width="100%">
         <Settings ShowFilterRow="True" />
         <Columns>
             <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
             </dx:GridViewCommandColumn>
             <dx:GridViewDataTextColumn Caption="Mã nhóm" FieldName="MaNhom" VisibleIndex="1">
             </dx:GridViewDataTextColumn>
             <dx:GridViewDataTextColumn Caption="Tên nhóm" FieldName="TenNhom" VisibleIndex="2">
             </dx:GridViewDataTextColumn>
         </Columns>
     </dx:ASPxGridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_DuLichConnectionString %>" DeleteCommand="DELETE FROM NhomNguoiDung WHERE (MaNhom = @MaNhom)" InsertCommand="INSERT INTO NhomNguoiDung(MaNhom, TenNhom) VALUES (@MaNhom, @TenNhom)" SelectCommand="SELECT MaNhom, TenNhom FROM NhomNguoiDung" UpdateCommand="UPDATE NhomNguoiDung SET MaNhom = @MaNhom, TenNhom = @TenNhom WHERE (MaNhom = @MaNhom)">
         <DeleteParameters>
             <asp:Parameter Name="MaNhom" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="MaNhom" />
             <asp:Parameter Name="TenNhom" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="MaNhom" />
             <asp:Parameter Name="TenNhom" />
         </UpdateParameters>
     </asp:SqlDataSource>


<%-- DXCOMMENT: Configure your datasource for ASPxGridView --%>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="Error_Message_When_Row_Cannot_Be_Deleted" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to show an error message when a record cAnnot be deleted</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
    </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/pubs.mdb"
            SelectCommand="SELECT [title_id], [title], [type], [pubdate], [price] FROM [titles]" DeleteCommand="DELETE FROM [titles] WHERE [title_id] = ?" InsertCommand="INSERT INTO [titles] ([title_id], [title], [type], [pubdate], [price]) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE [titles] SET [title] = ?, [type] = ?, [pubdate] = ?, [price] = ? WHERE [title_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="title_id" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="title_id" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="title_id" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="price" Type="Decimal" />
            </InsertParameters>
        </asp:AccessDataSource>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;<br />
<dxwgv:aspxgridview id="ASPxGridView1" runat="server" width="1090px" AutoGenerateColumns="False" KeyFieldName="title_id" DataSourceID="AccessDataSource1" OnRowDeleting="ASPxGridView1_RowDeleting">
  <Settings ShowGroupPanel="True"></Settings>
    <Columns>
        <dxwgv:GridViewCommandColumn VisibleIndex="0">
            <DeleteButton Visible="True">
            </DeleteButton>
        </dxwgv:GridViewCommandColumn>
        <dxwgv:GridViewDataTextColumn Caption="title_id" FieldName="title_id" ReadOnly="True"
            VisibleIndex="1">
        </dxwgv:GridViewDataTextColumn>
        <dxwgv:GridViewDataTextColumn Caption="title" FieldName="title" VisibleIndex="2">
        </dxwgv:GridViewDataTextColumn>
        <dxwgv:GridViewDataTextColumn Caption="type" FieldName="type" VisibleIndex="3">
        </dxwgv:GridViewDataTextColumn>
        <dxwgv:GridViewDataDateColumn Caption="pubdate" FieldName="pubdate" VisibleIndex="4">
        </dxwgv:GridViewDataDateColumn>
        <dxwgv:GridViewDataTextColumn Caption="price" FieldName="price" VisibleIndex="5">
        </dxwgv:GridViewDataTextColumn>
    </Columns>
    <SettingsEditing Mode="Inline" />
    <SettingsBehavior AllowFocusedRow="True" />
</dxwgv:aspxgridview>
    </form>
</body>
</html>
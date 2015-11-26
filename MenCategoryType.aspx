<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="MenCategoryType.aspx.cs" Inherits="MenCategoryType" %>

<%@ Register TagPrefix="uc" TagName="customGrid" Src="~/Controls/customGrid.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="line">
        <div class="unit size1of2">
            <h3>
                Mens ->
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
        </div>
        <div class="unit size1of2">
        <div class="collection">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource2"
                DataValueField="category_type_collection" DataTextField="category_type_collection"
                AutoPostBack="true" OnSelectedIndexChanged="getCollection_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/ddj-fashionworld.mdb"
                SelectCommand="SELECT DISTINCT [category_type_collection] FROM [tbl_product] WHERE (([category] = ?) AND ([category_type] = ?))">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Men" Name="category" Type="String" />
                    <asp:QueryStringParameter Name="category_type" QueryStringField="category_type" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            </div>
        </div>
    </div>
    <div class="aspGrid">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyNames="product_id" EnableModelValidation="True" PageSize="8">
            <Columns>
                <asp:BoundField DataField="product_id" HeaderText="product_id" InsertVisible="False"
                    ReadOnly="True" SortExpression="product_id" />
                <asp:BoundField DataField="picture_small_src" HeaderText="picture_small_src" SortExpression="picture_small_src" />
                <asp:ImageField DataImageUrlField="picture_small_src">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="product_id" DataNavigateUrlFormatString="~/ProductDetails.aspx?product_id={0}"
                    Text="view details" />
            </Columns>
        </asp:GridView>
    </div>
    <uc:customGrid ID="customGrid1" runat="server" MinValue="1" MaxValue="10" />
</asp:Content>

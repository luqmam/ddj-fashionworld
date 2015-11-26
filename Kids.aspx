<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Kids.aspx.cs" Inherits="Boys" Title="Untitled Page" %>

<%@ Register TagPrefix="uc" TagName="customGrid" Src="~/Controls/customGrid.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    
             <h2>Kids collection:</h2>
   
    
    <div class="aspGrid">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
            PageSize="8" AllowPaging="True" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="picture_small_src" HeaderText="picture_small_src" SortExpression="picture_small_src" />
                <asp:ImageField DataImageUrlField="picture_small_src">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="category_type" DataNavigateUrlFormatString="~/KidsCategoryType.aspx?category_type={0}"
                    DataTextField="category_type" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ddj-fashionworld.mdb"
            SelectCommand="SELECT picture_small_src, category_type FROM tbl_product WHERE (category = ?) AND (active_category=true)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Kids" Name="category" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </div>
    <uc:customGrid ID="customGrid1" runat="server" MinValue="1" MaxValue="10" />
</asp:Content>

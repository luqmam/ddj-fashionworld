<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript" src="../assets/scripts/jquery-1.4.1-vsdoc.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <style type="text/css">
        body { font-size: 70%; font-family: Arial; }
        .img1{ width: 20%;}
        .img2{ width: 10%;}
    </style>
    <script type="text/javascript">
     
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>
            Admin Section </h2>
            <p>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton></p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ddj-fashionworld.mdb"
            DeleteCommand="DELETE FROM [tbl_product] WHERE [product_id] = ?" InsertCommand="INSERT INTO [tbl_product] ([product_id], [category], [category_type], [active_category], [category_type_collection], [description], [cost_gbp], [cost_euro], [cost_german_currency], [picture_small_src], [picture_src], [active], [date_created], [date_modified], [sale]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            
            SelectCommand="SELECT [product_id], [category], [category_type], [active_category], [category_type_collection], [description], [cost_gbp], [cost_euro], [cost_german_currency], [picture_small_src], [picture_src], [active], [date_created], [date_modified], [sale] FROM [tbl_product] WHERE ([category] = ?)" 
            
            
            UpdateCommand="UPDATE [tbl_product] SET [category] = ?, [category_type] = ?, [active_category] = ?, [category_type_collection] = ?, [description] = ?, [cost_gbp] = ?, [cost_euro] = ?, [cost_german_currency] = ?, [picture_small_src] = ?, [picture_src] = ?, [active] = ?, [date_created] = ?, [date_modified] = ?, [sale] = ? WHERE [product_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="product_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_id" Type="Int32" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="category_type" Type="String" />
                <asp:Parameter Name="active_category" Type="Boolean" />
                <asp:Parameter Name="category_type_collection" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="cost_gbp" Type="String" />
                <asp:Parameter Name="cost_euro" Type="String" />
                <asp:Parameter Name="cost_german_currency" Type="String" />
                <asp:Parameter Name="picture_small_src" Type="String" />
                <asp:Parameter Name="picture_src" Type="String" />
                <asp:Parameter Name="active" Type="Boolean" />
                <asp:Parameter Name="date_created" Type="DateTime" />
                <asp:Parameter Name="date_modified" Type="DateTime" />
                <asp:Parameter Name="sale" Type="Boolean" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ddl_Category" Name="category" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="category_type" Type="String" />
                <asp:Parameter Name="active_category" Type="Boolean" />
                <asp:Parameter Name="category_type_collection" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="cost_gbp" Type="String" />
                <asp:Parameter Name="cost_euro" Type="String" />
                <asp:Parameter Name="cost_german_currency" Type="String" />
                <asp:Parameter Name="picture_small_src" Type="String" />
                <asp:Parameter Name="picture_src" Type="String" />
                <asp:Parameter Name="active" Type="Boolean" />
                <asp:Parameter Name="date_created" Type="DateTime" />
                <asp:Parameter Name="date_modified" Type="DateTime" />
                <asp:Parameter Name="sale" Type="Boolean" />
                <asp:Parameter Name="product_id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id"
            DataSourceID="AccessDataSource1" AllowPaging="True" AllowSorting="True"  >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="product_id" HeaderText="product_id" InsertVisible="False"
                    ReadOnly="True" SortExpression="product_id" />
                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                <asp:BoundField DataField="category_type" HeaderText="Type" SortExpression="category_type" />
                <asp:CheckBoxField DataField="active_category" HeaderText="Display" 
                    SortExpression="active_category" />
                <asp:BoundField DataField="category_type_collection" HeaderText="Collection" SortExpression="category_type_collection" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:BoundField DataField="cost_gbp" HeaderText="GBP" SortExpression="cost_gbp" />
                <asp:BoundField DataField="cost_euro" HeaderText="Euro" SortExpression="cost_euro" />
                <asp:BoundField DataField="cost_german_currency" HeaderText="DE" SortExpression="cost_german_currency" />
                <asp:BoundField DataField="picture_small_src" HeaderText="small path" SortExpression="picture_small_src" />
                <asp:BoundField DataField="picture_src" HeaderText="path" SortExpression="picture_src" />
                <asp:TemplateField HeaderText="img small path">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture_small_src") %>' />
                    </ItemTemplate>
                    <ControlStyle CssClass="img1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="img path">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("picture_src") %>' />
                    </ItemTemplate>                   
                    <ControlStyle CssClass="img2" />
                </asp:TemplateField>
                <asp:CheckBoxField DataField="sale" HeaderText="sale" SortExpression="sale" />
            </Columns>
        </asp:GridView>
        <br />
        <div class="AddProductForm">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="width: 143px">
                        Category
                    </td>
                    <td style="width: 275px">
                        <asp:DropDownList ID="ddl_Category" runat="server" AutoPostBack="true">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Women</asp:ListItem>
                            <asp:ListItem>Men</asp:ListItem>
                            <asp:ListItem>Kids</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 7px">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 143px">
                        Category type
                    </td>
                    <td style="width: 275px">
                        <asp:DropDownList ID="ddl_CategoryType" runat="server" Width="71px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Boys</asp:ListItem>
                            <asp:ListItem>Girls</asp:ListItem>
                            <asp:ListItem>Sareess</asp:ListItem>
                            <asp:ListItem>ShalwarKameez</asp:ListItem>
                            <asp:ListItem>Designer</asp:ListItem>
                            <asp:ListItem>Kurta</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 7px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px">
                        Description
                    </td>
                    <td style="width: 275px">
                        <asp:TextBox ID="txtBox_description" runat="server" Height="54px" TextMode="MultiLine"
                            Width="261px"></asp:TextBox>&nbsp;
                    </td>
                    <td style="width: 7px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px">
                        Cost GBP
                    </td>
                    <td style="width: 275px">
                        <asp:TextBox ID="txtBox_cost_gbp" runat="server" width="71px"></asp:TextBox>
                    </td>
                    <td style="width: 7px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px">
                        Cost Euro
                    </td>
                    <td style="width: 275px">
                        <asp:TextBox ID="txtBox_cost_euro" runat="server" width="71px"></asp:TextBox>
                    </td>
                    <td style="width: 7px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px">
                        Cost DKK
                    </td>
                    <td style="width: 275px">
                        <asp:TextBox ID="txtBox_cost_german_currency" runat="server" width="71px"></asp:TextBox>
                    </td>
                    <td style="width: 7px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px">
                        Picture small
                    </td>
                    <td style="width: 275px">
                        <asp:TextBox ID="txtBox_picture_small" runat="server" Width="265px" 
                            height="22px"></asp:TextBox>
                    </td>
                    <td style="width: 7px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px; height: 26px">
                        &nbsp;Picture big
                      </td>
                    <td style="width: 275px; height: 26px">
                        <asp:TextBox ID="txtBox_picture_big" runat="server" Width="263px" height="22px"></asp:TextBox>
                    </td>
                    <td style="width: 7px; height: 26px">
                      &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px; height: 26px">
                        &nbsp;
                    </td>
                    <td style="width: 275px; height: 26px">
                        <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="Add New" 
                            width="71px" />
                    </td>
                    <td style="width: 7px; height: 26px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 143px; height: 26px">
                        &nbsp;</td>
                    <td style="width: 275px; height: 26px">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                    <td style="width: 7px; height: 26px">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>

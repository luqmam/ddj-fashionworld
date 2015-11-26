<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript">
        $(function () {
            $("#tabs").tabs();
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Product details:</h2>
    <div class="customRepeater">
        <asp:Repeater runat="server" ID="rptList">
            <ItemTemplate>
                <div class="line">
                    <div class="unit size1of2">
                        <div class="mainimg">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture_src", "~/{0}") %>' /></div>
                    </div>
                    <div class="unit size1of2">
                        <div class="labels">
                            <p>
                                <asp:Label ID="category_typeLabel" runat="server" Text='<%# Eval("category_type") %>' />
                                <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' /></p>
                            <div id="gbp">
                                <h2>
                                    Cost GBP:
                                    <asp:Label ID="cost_gbpLabel" runat="server" Text='<%# Eval("cost_gbp") %>' /></h2>
                            </div>
                            <div id="euro">
                                <h2>
                                    Cost Euro:
                                    <asp:Label ID="cost_euroLabel" runat="server" Text='<%# Eval("cost_euro") %>' /></h2>
                            </div>
                            <div id="dkk">
                                <h2>
                                    Cost DKK:
                                    <asp:Label ID="cost_german_currencyLabel" runat="server" Text='<%# Eval("cost_german_currency") %>' /></h2>
                            </div>
                            <p>
                                Description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' /></p>
                        </div>
                        <div id="tabs">
                            <ul>
                                <li><a href="#tabs-1">How to Order</a></li>
                                <li><a href="#tabs-2">Disclaimer</a></li>
                                <li><a href="#tabs-3">Cancellations</a></li>
                            </ul>
                            <div id="tabs-1">
                                <p>
                                    By telephone: Simply call us on: +44 (0)203 538 2502 Our lines are open from 9 am
                                    to 9 pm 7 days a week
                                </p>
                                <p>
                                    By internet: log on to www.ddj-fashionworld.com to browse and order. Giving you
                                    easy access 24/7.</p>
                            </div>
                            <div id="tabs-2">
                                <p>
                                    All items are subject to availability. Designs, colours, size may vary slightly.
                                    Every care is taken to ensure the product description is as accurate as possible.
                                    Please be aware that once an order has been placed we are unable to make amendments
                                    to that order until you have received it. Order on the phone by calling: *0203 538
                                    2502* Where our helpful, experienced staff will be able to help with any queries
                                    you may have regarding ordering.
                                </p>
                            </div>
                            <div id="tabs-3">
                                <p>
                                    If, for any reason, you wish to do so you have the right to cancel any order you
                                    have placed (other than in respect of goods made to your specification).
                                </p>
                                <p>
                                    If you wish to cancel before the items are dispatched you are asked to e-mail us
                                    on info@ddjfashionworld.com or contact our customer service team immediately.</p>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

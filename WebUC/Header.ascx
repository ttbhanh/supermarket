<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="_1685009.WebUC.Header" %>

<!-- header -->
<div class="agileits_header">
    <div class="container">
        <div class="w3l_offers">
            <p>SALE UP TO 70% OFF. USE CODE "SALE70%" . <a href="Products.aspx">SHOP NOW</a></p>
        </div>
        <div class="agile-login">
            <ul>
                <li><a href="Register.aspx">Create Account </a></li>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="Contact.aspx">Help</a></li>

            </ul>
        </div>
        <div class="product_list_header">
            <asp:LinkButton ID="LinkButtonViewCart" runat="server" PostBackUrl="~/Cart.aspx" ClientIDMode="Static" CssClass="w3view-cart">
                <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                <span style="background-color: red" class="badge badge-notify my-cart-badge">
                    <asp:Label ID="LabelItemCount" runat="server" Text=""></asp:Label> 
                </span>
            </asp:LinkButton>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<div class="logo_products">
    <div class="container">
        <div class="w3ls_logo_products_left1">
            <ul class="phone_email">
                <li><i class="fa fa-phone" aria-hidden="true"></i>Order online or call us : (+0123) 234 567</li>

            </ul>
        </div>
        <div class="w3ls_logo_products_left">
            <h1><a href="Default.aspx">super Market</a></h1>
        </div>
        <div class="w3l_search">
            <asp:TextBox ID="TextBoxKeyword" runat="server" TextMode="Search" AutoPostBack="true" ClientIDMode="Static" ValidationGroup="search" placeholder="Search for a Product..." OnTextChanged="TextBoxKeyword_TextChanged"></asp:TextBox>
            <asp:LinkButton ID="LinkButtonSearch" runat="server" ClientIDMode="Static" ValidationGroup="search" CssClass="btn btn-default search" aria-label="Left Align" OnClick="LinkButtonSearch_Click">
                <i class="fa fa-search" aria-hidden="true"></i>
            </asp:LinkButton>
            <div class="clearfix"></div>
        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!-- //header -->

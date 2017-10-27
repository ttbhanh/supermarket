<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="Single.aspx.cs" Inherits="_1685009.Single" %>

<%@ Register Src="~/WebUC/NewOffers.ascx" TagPrefix="uc1" TagName="NewOffers" %>
<%@ Register Src="~/WebUC/Product.ascx" TagPrefix="uc1" TagName="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                <li><a href="Default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                <li class="active">Singlepage</li>
            </ol>
        </div>
    </div>
    <!-- //breadcrumbs -->

    <uc1:Product runat="server" id="Product" />

    <uc1:NewOffers runat="server" ID="NewOffers" />
</asp:Content>

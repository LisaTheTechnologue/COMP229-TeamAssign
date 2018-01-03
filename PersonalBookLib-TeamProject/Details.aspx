<%@ Page Title="My Book" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="PersonalBookLib_TeamProject.Details" %>
<asp:Content ID="DetailsBody" ContentPlaceHolderID="MainContent" runat="server">
    <!--a.	Display all item details: a name, format/platform/type, a description, a review score, completed status, if it is currently owned/loaned/wanted, other details as appropriate (such as reviews or links).
b.	Empty fields should be hidden.
c.	For authorized users only, link to a page to edit the item, or include that functionality in this page.
d.	Allow for quickly setting the item as owned/wanted/loaned, and changing between them.
e.	Anonymous users may view owned items only, but will be prevented from making any changes.
-->
    <asp:DetailsView runat="server" ID="myBook">

    </asp:DetailsView>
</asp:Content>

<%@ Page Title="My Book" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="PersonalBookLib_TeamProject.Details" %>

<asp:Content ID="DetailsBody" ContentPlaceHolderID="MainContent" runat="server">
    <!--a.	Display all item details: a name, format/platform/type, 
        a description, a review score, completed status, 
        if it is currently owned/loaned/wanted, 
        other details as appropriate (such as reviews or links).
        b.	Empty fields should be hidden.
        c.	For authorized users only, link to a page to edit the item, or include that functionality in this page.
        d.	Allow for quickly setting the item as owned/wanted/loaned, and changing between them.
        e.	Anonymous users may view owned items only, but will be prevented from making any changes.
-->
    <asp:DetailsView runat="server" ID="myBook" AutoGenerateColumns="false">
        <Fields>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:Label ID="lblImg" runat="server"
                        Text='<%# Eval("ImgURL")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtImg" runat="server"
                        Text='<%# Eval("ImgURL")%>'></asp:TextBox>                    
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book ID" Visible="True" InsertVisible="True">
                <ItemTemplate>
                    <asp:Label ID="lblBookID" Text='<%# Eval("ISBN") %>' runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtBookID" runat="server" Text='<%# Bind("ISBN") %>' MaxLength="10" />
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lblBName" runat="server"
                        Text='<%# Eval("BookName")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtBName" runat="server" Text='<%# Eval("BookName")%>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author Name">
                <ItemTemplate>
                    <asp:Label ID="lblAName" runat="server"
                        Text='<%# Eval("AuthorName")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtAName" runat="server" Text='<%# Eval("AuthorName")%>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Publisher">
                <ItemTemplate>
                    <asp:Label ID="lblPub" runat="server"
                        Text='<%# Eval("Publisher")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPub" runat="server"
                        Text='<%# Eval("Publisher")%>'></asp:TextBox>                    
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server"
                        Text='<%# Eval("Price")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPrice" runat="server"
                        Text='<%# Eval("Price")%>'></asp:TextBox>                    
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rating">
                <ItemTemplate>
                    <asp:Label ID="lblRate" runat="server"
                        Text='<%# Eval("Rating")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtRate" runat="server"
                        Text='<%# Eval("Rating")%>'></asp:TextBox>                    
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Plot">
                <ItemTemplate>
                    <asp:Label ID="lblPlot" runat="server"
                        Text='<%# Eval("Plot")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPlot" runat="server"
                        Text='<%# Eval("Plot")%>'></asp:TextBox>                    
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:Label ID="lblCat" runat="server"
                        Text='<%# Eval("Category")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtCat" runat="server"
                        Text='<%# Eval("Category")%>'></asp:TextBox>                    
                </EditItemTemplate>
            </asp:TemplateField>            
        </Fields>
    </asp:DetailsView>
</asp:Content>

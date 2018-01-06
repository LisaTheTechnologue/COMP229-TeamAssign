<%@ Page Title="My Book" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="PersonalBookLib_TeamProject.Details" %>

<asp:Content ID="DetailsBody" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:DetailsView runat="server" ID="myBook" AutoGenerateColumns="false" AutoGenerateRows="False" OnItemUpdating="myBook_ItemUpdating" OnModeChanging="myBook_ModeChanging" >
        <%--CellPadding="4" ForeColor="#333333" GridLines="None" OnItemUpdating="myBook_ItemUpdating" OnModeChanging="myBook_ModeChanging">--%>
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:Image ID="lblImg" runat="server"
                        ImageUrl='<%# Eval("ImgURL")%>'></asp:Image>
                </ItemTemplate>
                <%--<EditItemTemplate>
                    <asp:TextBox ID="txtImg" runat="server"
                        Text='<%# Bind("ImgURL")%>'></asp:TextBox>
                                        
                </EditItemTemplate>
                <InsertItemTemplate>
                   <asp:TextBox ID="insertImg" runat="server"
                        Text='<%# Bind("ImgURL")%>'></asp:TextBox>  
                </InsertItemTemplate>--%>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book ID" Visible="True" InsertVisible="True">
                <ItemTemplate>
                    <asp:Label ID="lblBookID" Text='<%# Eval("ISBN") %>' runat="server"></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtBookID" runat="server" Text='<%#Bind("ISBN") %>' MaxLength="10" />
                </EditItemTemplate>
                <InsertItemTemplate>
                     <asp:TextBox ID="insertBookID" runat="server" Text='<%#Bind("ISBN") %>' MaxLength="10" />
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lblBName" runat="server"
                        Text='<%# Eval("BookName")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtBName" runat="server" Text='<%# Bind("BookName")%>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                     <asp:TextBox ID="insertBName" runat="server" Text='<%# Bind("BookName")%>'></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author Name">
                <ItemTemplate>
                    <asp:Label ID="lblAName" runat="server"
                        Text='<%# Eval("AuthorName")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtAName" runat="server" Text='<%# Bind("AuthorName")%>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertAName" runat="server" Text='<%# Bind("AuthorName")%>'></asp:TextBox>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Publisher">
                <ItemTemplate>
                    <asp:Label ID="lblPub" runat="server"
                        Text='<%# Eval("Publisher")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPub" runat="server"
                        Text='<%# Bind("Publisher")%>'></asp:TextBox>                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertPub" runat="server"
                        Text='<%# Bind("Publisher")%>'></asp:TextBox> 
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server"
                        Text='<%# Eval("Price")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPrice" runat="server"
                        Text='<%# Bind("Price")%>'></asp:TextBox>                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertPrice" runat="server"
                        Text='<%# Bind("Price")%>'></asp:TextBox> 
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rating">
                <ItemTemplate>
                    <asp:Label ID="lblRate" runat="server"
                        Text='<%# Eval("Rating")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtRate" runat="server"
                        Text='<%# Bind("Rating")%>'></asp:TextBox>                    
                </EditItemTemplate>
                <InsertItemTemplate>
                     <asp:TextBox ID="insertRate" runat="server"
                        Text='<%# Bind("Rating")%>'></asp:TextBox> 
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Plot">
                <ItemTemplate>
                    <asp:Label ID="lblPlot" runat="server"
                        Text='<%# Eval("Plot")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPlot" runat="server"
                        Text='<%# Bind("Plot")%>'></asp:TextBox>                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertPlot" runat="server"
                        Text='<%# Bind("Plot")%>'></asp:TextBox>  
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:Label ID="lblCat" runat="server"
                        Text='<%# Eval("Status")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtCat" runat="server"
                        Text='<%# Bind("Status")%>'></asp:TextBox>                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="insertCat" runat="server"
                        Text='<%# Bind("Status")%>'></asp:TextBox>   
                </InsertItemTemplate>
            </asp:TemplateField> 
            <asp:CommandField ShowEditButton="True" />           
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    
    <h1>Comments</h1>
    <asp:GridView id="Comment" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />

    </asp:GridView>
    <h1>Add Comment</h1>
   <table>
         <tr>
             <td>Input UsernameID</td>
             <td>
             <asp:TextBox ID="in_user" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
         <td>Input Comment</td>
          <td>
             <asp:TextBox ID="in_comment" runat="server"></asp:TextBox>
          </td>
         </tr>
         <tr>
             <td></td>
             <td>
             <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
             </td>
         </tr>
     </table>
    <asp:Label ID="dbErrorLabel" runat="server" Text=""></asp:Label>
</asp:Content>

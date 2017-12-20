<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tracking.aspx.cs" Inherits="COMP229_TeamProj._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <!--Banner-->
        <div class="jumbotron">
            <div class="lead">
                <img src="https://i.imgur.com/2ExLqir.png" alt="logo" id="logo" />
                <p>
                    Knowledge has a beginning
                            <br />
                    but no end
                </p>
            </div>
        </div>
        <!--New Products-->
        <div class="row">
            <div class="sectionHeader">
                New Products
            </div>
            <div class="col-md-4">
                <div class="item">
                </div>
            </div>
            <div class="col-md-4">
                <div class="item">
                </div>
            </div>
            <div class="col-md-4">
                <div class="item">
                </div>
            </div>
        </div>
        <!--Menu-->
        <div class="row">
            <div class="sectionHeader">Category</div>
            <div class="col-md-4">Technology</div>
            <div class="col-md-4">Business</div>
            <div class="col-md-4">Nursing</div>
        </div>
        <!--Display Item List-->
        <div id="items">
            <asp:DataList ID="itemsList" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="item-img">
                        <img src="<%#Eval("ImgURL")%>" alt="<%#Eval("Name")%>" />
                    </div>
                    <strong>Book:  </strong><%#Eval("BookName")%><br />
                    <strong>Author:  </strong><%#Eval("AuthorName")%><br />
                    <strong>Price: </strong><%#Eval("Price")%><br />
                    <strong>Rating:</strong> <%#Eval("Rating")%><br />
                    <asp:LinkButton ID="detailsButton" runat="server"
                        Text='<%#"View more details about " + Eval("BookName")%>'
                        CommandName="MoreDetailsPlease"
                        CommandArgument='<%#Eval("ISBN")%>' />
                </ItemTemplate>
                <SeparatorTemplate>
                    <hr />
                </SeparatorTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>

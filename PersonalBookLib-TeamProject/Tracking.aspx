<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tracking.aspx.cs" Inherits="PersonalBookLib_TeamProject.Tracking" %>

<asp:Content ID="HomeBody" ContentPlaceHolderID="MainContent" runat="server">
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
            <div class="col-md-4">Web Development</div>
            <div class="col-md-4">Database Administration</div>
            <div class="col-md-4">Java Programming</div>
        </div>
        <!--Display-->
        <asp:DataList ID="itemsList" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div class="book">
                    <div class="item-img">
                        <a href='Details.aspx?bookID=<%# Eval("ISBN") %>'></a>
                        <img src="<%#Eval("ImgURL")%>" alt="<%#Eval("BookName")%>" width="100" height="75" /></a>
                    </div>
                    <div class="item-details">
                        <span class="item-detail-list"><strong>Book:  </strong><%#Eval("BookName")%><br />
                        </span>
                        <span class="item-detail-list"><strong>Author:  </strong><%#Eval("AuthorName")%><br />
                        </span>
                        <span class="item-detail-list"><strong>Price: </strong><%#Eval("Price")%><br />
                        </span>
                        <span class="item-detail-list"><strong>Rating:</strong> <%#Eval("Rating")%><br />
                        </span>
                    </div>
                    <div class="item-viewmore">
                        <a href='Details.aspx?bookID=<%#Eval("ISBN")%>'>View more details</a>
                    </div>
                </div>
            </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
        </asp:DataList>
        <div id="Navigation" class="navigation" runat="server">
            <div id="leftnav">
                <a id="PrevPageNav" runat="server"><i class="fa fa-arrow-left" aria-hidden="true"></i>Previous Products</a>
            </div>

            <div id="rightnav">
                <a id="NextPageNav" runat="server">More Products <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
            </div>

            <div id="numnav">
                <asp:Label ID="PagerLocation" runat="server" />
            </div>

        </div>
        <asp:Label ID="dbErrorMessage" runat="server"></asp:Label>
    </div>
</asp:Content>

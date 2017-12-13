<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tracking.aspx.cs" Inherits="COMP229_TeamProj._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <!--Category-->
                <div id="MainMenu">
                    <div class="sectionHeader">
                        Categories
                    </div>
                    <div class="list-group panel">
                      <a href="#" class="list-group-item list-group-item-success" data-parent="#MainMenu">Item 1</a>
                      <a href="#" class="list-group-item list-group-item-success" data-parent="#MainMenu">Item 2</a>
                      <a href="#demo3" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Item 3 <i class="fa fa-caret-down"></i></a>
                      <div class="collapse" id="demo3">
                        <a href="#SubMenu1" class="list-group-item" data-toggle="collapse" data-parent="#SubMenu1">Subitem 1 <i class="fa fa-caret-down"></i></a>
                        <div class="collapse list-group-submenu" id="SubMenu1">
                          <a href="#" class="list-group-item" data-parent="#SubMenu1">Subitem 1 a</a>
                          <a href="#" class="list-group-item" data-parent="#SubMenu1">Subitem 2 b</a>
                          <a href="#SubSubMenu1" class="list-group-item" data-toggle="collapse" data-parent="#SubSubMenu1">Subitem 3 c <i class="fa fa-caret-down"></i></a>
                          <div class="collapse list-group-submenu list-group-submenu-1" id="SubSubMenu1">
                            <a href="#" class="list-group-item" data-parent="#SubSubMenu1">Sub sub item 1</a>
                            <a href="#" class="list-group-item" data-parent="#SubSubMenu1">Sub sub item 2</a>
                          </div>
                          <a href="#" class="list-group-item" data-parent="#SubMenu1">Subitem 4 d</a>
                        </div>
                        <a href="javascript:;" class="list-group-item">Subitem 2</a>
                        <a href="javascript:;" class="list-group-item">Subitem 3</a>
                      </div>
                      <a href="#demo4" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Item 4  <i class="fa fa-caret-down"></i></a>
                      <div class="collapse" id="demo4">
                        <a href="#" class="list-group-item">Subitem 1</a>
                        <a href="#" class="list-group-item">Subitem 2</a>
                        <a href="#" class="list-group-item">Subitem 3</a>
                      </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <!--Banner-->
                <div class="jumbotron">
                    <h1>Banner</h1>
                </div>
                <div class="row">
                    <div class="sectionHeader">
                        New Products
                    </div>
                    <div class="col-md-4">
                        <div class="item">
                            <span class="item-title"></span>
                            <span class="item-price"></span>
                            <span class="item-rate"></span>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h2>Get more libraries</h2>
                        <p>
                            NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                        </p>
                        <p>
                            <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <h2>Web Hosting</h2>
                        <p>
                            You can easily find a web hosting company that offers the right mix of features and price for your applications.
                        </p>
                        <p>
                            <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

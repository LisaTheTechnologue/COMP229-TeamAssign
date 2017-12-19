<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tracking.aspx.cs" Inherits="COMP229_TeamProj._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <!--Category-->
                <!-- prof did this -->
                <div id="MainMenu">
                    <div class="sectionHeader">
                        Categories
                    </div>
                    <div class="list-group panel">
                        <a href="#Sciences" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Sciences <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <div class="collapse" id="Sciences">
                            <a href="javascript:;" class="list-group-item">Computer Science</a>
                            <a href="javascript:;" class="list-group-item">Engineering</a>
                            <a href="javascript:;" class="list-group-item">Earth Science</a>
                        </div>
                        <a href="#" class="list-group-item list-group-item-success" data-parent="#MainMenu">Nursing</a>
                        <a href="#Business" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Business <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <div class="collapse" id="Business">
                            <a href="javascript:;" class="list-group-item">Accounting </a>
                            <a href="javascript:;" class="list-group-item">Marketing</a>
                            <a href="javascript:;" class="list-group-item">Human Resources</a>
                        </div>
                        <a href="#social" class="list-group-item list-group-item-success" data-toggle="collapse" data-parent="#MainMenu">Social Sciences <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                        <div class="collapse" id="social">
                            <a href="#" class="list-group-item">Criminology</a>
                            <a href="#" class="list-group-item">Psychology</a>
                            <a href="#" class="list-group-item">Sociology</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <!--Banner-->
                <div class="jumbotron">
                    <div class="lead">
                        <img src="https://i.imgur.com/2ExLqir.png" alt="logo" id="logo" />
                        <p>Knowledge has a beginning <br /> but no end</p>
                    </div>
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

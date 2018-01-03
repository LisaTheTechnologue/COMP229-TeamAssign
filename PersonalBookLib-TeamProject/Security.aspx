<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Security.aspx.cs" Inherits="PersonalBookLib_TeamProject.Security" %>

<asp:Content ID="RegisBody" ContentPlaceHolderID="MainContent" runat="server">
    <!--
a.	User Registration must be included. A form will allow the user to enter profile information (username, password, email address, etc.), which will be stored in a database table.
b.	A form will allow a registered user to Login.
c.	Upon successful Login, other forms or controls will allow the user to Logout and/or modify his or her profile.
d.	Site security will prevent non-registered (anonymous) users from modifying any item details.
-->
    <div id="registerForm" runat="server">
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="email" placeholder="Enter email">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Password:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="pwd" placeholder="Enter password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">
                        Remember me</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>
    </div>
</asp:Content>

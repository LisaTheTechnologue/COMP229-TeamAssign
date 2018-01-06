<%@ Page Title="Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Security.aspx.cs" Inherits="PersonalBookLib_TeamProject.Security" %>

<asp:Content ID="RegisBody" ContentPlaceHolderID="MainContent" runat="server">
    <!--
a.	User Registration must be included. 
        A form will allow the user to enter profile information 
        (username, password, email address, etc.), 
        which will be stored in a database table.
b.	A form will allow a registered user to Login.
c.	Upon successful Login, other forms or controls will allow the user to Logout and/or modify his or her profile.
d.	Site security will prevent non-registered (anonymous) users 
        from modifying any item details.
-->

    <!--Default: ASP.NET will assume the login page is Login.aspx unless we specify in <forms> tag-->
    <asp:Label ID="pageTitle" runat="server" />
    <div id="loginForm" runat="server">
        <div class="form-group">
            <label class="control-label col-sm-2" for="userID">UserID:</label>
            <div class="col-sm-10">
                <asp:TextBox runat="server" type="text" class="form-control" ID="userID" placeholder="Enter userID" />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Password:</label>
            <div class="col-sm-10">
                <asp:TextBox runat="server" class="form-control" ID="pwd" placeholder="Enter password" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <asp:CheckBox runat="server" ID="checkRemember" Text="Remember me" />
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class=" col-sm-6">
                <asp:Button runat="server" ID="submitbtn" class="btn btn-default" OnClick="SubmitUser" Text="Log In" />
            </div>
            <div class="col-sm-6">
                <asp:Button runat="server" ID="registerbtn" class="btn btn-default" OnClick="RegisterUser" Text="Register" />
            </div>
        </div>
    </div>

    <!--Register-->
    <div id="register" runat="server" class="registerForm">
        <div class="form-group">
            <label class="control-label col-sm-2" for="tbUsername">User Name</label>
            <div class="col-sm-10">
                <asp:TextBox ID="tbUsername" runat="server" placeholder="Enter username" />
            </div>
            <asp:RequiredFieldValidator ID="UsernameReq"
                runat="server"
                ControlToValidate="tbUsername"
                ErrorMessage="Username is required!"
                SetFocusOnError="True"
                Display="Dynamic" />
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="tbPassword">Password</label>
            <div class="col-sm-10">
                <asp:TextBox ID="tbPassword" runat="server"  />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="tbPassword">Confirm Password</label>
            <div class="col-sm-10">
                <asp:TextBox id="tbconfirmPassword" runat="server"  />
            </div>
        </div>
        <asp:RequiredFieldValidator ID="tbCfPasswordReq"
            runat="server"
            ControlToValidate="tbconfirmPassword"
            ErrorMessage="Password confirmation is required!"
            SetFocusOnError="True"
            Display="Dynamic" />
        <asp:CompareValidator ID="ComparePw" runat="server"
            ControlToCompare="tbPassword"
            ControlToValidate="tbconfirmPassword"
            ErrorMessage="Password not match"></asp:CompareValidator>
        <div class="form-group">
            <label class="control-label col-sm-2" for="tbFirstname">First Name</label>
            <div class="col-sm-10">
                <asp:TextBox ID="tbFirstname" runat="server" placeholder="Enter First name" />
            </div>
            <asp:RequiredFieldValidator ID="tbFirstnameReq"
                runat="server"
                ControlToValidate="tbFirstname"
                ErrorMessage="First name is required!"
                SetFocusOnError="True"
                Display="Dynamic" />
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="tbLastname">Last Name</label>
            <div class="col-sm-10">
                <asp:TextBox ID="tbLastname" runat="server" placeholder="Enter Last name" />
            </div>
            <asp:RequiredFieldValidator ID="tbLastnameReq"
                runat="server"
                ControlToValidate="tbLastname"
                ErrorMessage="Last name  is required!"
                SetFocusOnError="True"
                Display="Dynamic" />
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="tbEmail">Email</label>
            <div class="col-sm-10">
                <asp:TextBox ID="tbEmail" runat="server" placeholder="Enter Email" />
            </div>
            <asp:RequiredFieldValidator ID="tbEmailReq"
                runat="server"
                ControlToValidate="tbEmail"
                ErrorMessage="Email is required!"
                SetFocusOnError="True"
                Display="Dynamic" />
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button runat="server" ID="btnRegisterInfo" class="btn btn-default" OnClick="RegisteredUser" Text="Register" />
            </div>
        </div>
    </div>


    <!--Account Profile Info-->
    <asp:DetailsView runat="server" ID="profileInfo" CssClass="profile">
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
            <asp:TemplateField HeaderText="User Name">
                <ItemTemplate>
                    <asp:Label ID="lblUName" runat="server"
                        Text='<%# Eval("UserName")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtUName" runat="server" Text='<%# Eval("UserName")%>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FirstName">
                <ItemTemplate>
                    <asp:Label ID="lblFName" runat="server"
                        Text='<%# Eval("FirstName")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtFName" runat="server" Text='<%# Eval("FirstName")%>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName">
                <ItemTemplate>
                    <asp:Label ID="lblLName" runat="server"
                        Text='<%# Eval("LastName")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtLName" runat="server" Text='<%# Eval("LastName")%>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server"
                        Text='<%# Eval("Email")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("Email")%>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:Label ID="dbErrorMessage" runat="server" />
</asp:Content>

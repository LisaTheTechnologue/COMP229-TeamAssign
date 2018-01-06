<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Security.aspx.cs" Inherits="PersonalBookLib_TeamProject.Security" %>

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
    <div id="loginForm" runat="server">
        <div class="form-group">
            <label class="control-label col-sm-2" for="userID">UserID:</label>
            <div class="col-sm-10">
                <asp:TextBox runat="server" type="text" class="form-control" id="userID" placeholder="Enter userID"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Password:</label>
            <div class="col-sm-10">
                <asp:TextBox runat="server" class="form-control" id="pwd" placeholder="Enter password"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <asp:CheckBox runat="server" ID="checkRemember" Text="Remember me"/>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button runat="server" ID="submitbtn" class="btn btn-default" onclick="SubmitUser" Text="Submit" />
            </div>
            <%--<div class="col-sm-offset-2 col-sm-10">
                <asp:Button runat="server" ID="registerbtn" class="btn btn-default" onclick="RegisterUser" Text="Register" />
            </div>--%>
        </div>
    </div>
    

    <!--Register-->
    <asp:DetailsView ID="register" runat="server" DefaultMode="Insert"
        CssClass="registerForm" AutoGenerateRows="false">
        <Fields>
            <asp:TemplateField HeaderText="User Name">
                <InsertItemTemplate>
                    <asp:TextBox ID="Username" runat="server" />
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password">
                <InsertItemTemplate>
                    <input ID="Password" runat="server" type="password"/>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name">
                <InsertItemTemplate>
                    <asp:TextBox ID="Firstname" runat="server" />
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
                <InsertItemTemplate>
                    <asp:TextBox ID="Lastname" runat="server" />
                </InsertItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Email">
                <InsertItemTemplate>
                    <asp:TextBox ID="Email" runat="server" />
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>



    <!--Account Profile Info-->
    <%--<asp:DetailsView runat="server" ID="profileInfo" CssClass="profile">
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
    </asp:DetailsView>--%>
    <asp:Label ID="dbErrorMessage" runat="server" />
</asp:Content>

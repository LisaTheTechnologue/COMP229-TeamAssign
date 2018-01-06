<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comment.aspx.cs" Inherits="PersonalBookLib_TeamProject.Comment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="input_form" runat="server">
    <div>
     <table>
         <tr>
             <td>Input Username</td>
             <td>
             <asp:TextBox ID="in_user" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
         <td>Input Comment</td>
          <td>
             <textarea id="in_comment"></textarea>
          </td>
         </tr>
         <tr>
             <td></td>
             <td>
             <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
             </td>
         </tr>
     </table>
    </div>
    </form>
</body>
</html>

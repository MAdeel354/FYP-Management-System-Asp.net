<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SE_Projec.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FYP System</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="text-align:center";>
            FYP Management System
        </h1>
        <div>
            <center>
            <table>
               <tr>
                   <td>
                       <asp:Button ID="Student" runat="server" Text="Student" OnClick="Student_Click" />
                   </td>
               </tr>
                <tr>
                   <td>
                       <asp:Button ID="Advisor" runat="server" Text="Advisor" OnClick="Advisor_Click" />
                   </td>
               </tr>
                <tr>
                   <td>
                       <asp:Button ID="Project" runat="server" Text="Project" OnClick="Project_Click" />
                   </td>
               </tr>
                <tr>
                   <td>
                       <asp:Button ID="Group_assign" runat="server" Text="Group" OnClick="Group_assign_Click" />
                   </td>
               </tr>
                <tr>
                   <td>
                       <asp:Button ID="evaluation" runat="server" Text="Evaluation" OnClick="evaluation_Click" />
                   </td>
               </tr>
            </table>
            </center>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_Assign.aspx.cs" Inherits="SE_Projec.Project_Assign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FYP System</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <h1>Project Assign</h1>
            <table>
                <tr>
                    <td>
                        Student
                    </td>
                    <td><asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged"></asp:CheckBoxList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-3RBHRKA\SQLEXPRESS;Initial Catalog=SELAB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name] FROM [student]"></asp:SqlDataSource></td>
                </tr>

                <tr>
                    <td>
                        Advisor
                    </td>
                    <td> 
                        <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name"></asp:CheckBoxList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-3RBHRKA\SQLEXPRESS;Initial Catalog=SELAB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name] FROM [advisor]"></asp:SqlDataSource>
                    </td>
                </tr>

                <tr>
                    <td>
                        Project
                    </td>
                    <td><asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Project" DataValueField="Project"></asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=DESKTOP-3RBHRKA\SQLEXPRESS;Initial Catalog=SELAB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Project] FROM [project]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click"></asp:Button>
            <asp:Button ID="Assign" runat="server" Text="Assign" OnClick="Assign_Click" />
            <asp:Button ID="Next" runat="server" Text="Next" OnClick="Next_Click" />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
      </center>  
      </div>
    </form>
</body>
</html>

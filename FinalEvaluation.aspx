<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinalEvaluation.aspx.cs" Inherits="SE_Projec.FinalEvaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FYP System</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <h1>
                Final Evaluation
            </h1>
            <table>
                <tr>
                    <td>
                        Projects
                    </td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Project" DataValueField="Project"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-3RBHRKA\SQLEXPRESS;Initial Catalog=SELAB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Project] FROM [project]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        Total Marks
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>
                        Obt Marks
                    </td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="Evaluate" runat="server" Text="Evaluate" OnClick="Evaluate_Click" />
            <asp:Button ID="Print" runat="server" Text="Print" OnClick="Print_Click" />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
           
            </center>
         </div>
    </form>
</body>
</html>

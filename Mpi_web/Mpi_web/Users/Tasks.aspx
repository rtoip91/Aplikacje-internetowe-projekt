<%@ Page Title="" Language="C#" MasterPageFile="~/glowna.Master" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="Mpi_web.Users.Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .auto-style1 {
        width: 100%;
            height: 90px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />

    <table class="auto-style1">
    <tr>
        <td style="font-style: italic; text-decoration: underline; font-weight: 700">Wybierz zadanie:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="zadana_liczba" DataValueField="id_zadanie" Width="300px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="server=sql2.freesqldatabase.com;user id=sql29880;password=pE4%eF9*;persist security info=True;database=sql29880" ProviderName="MySql.Data.MySqlClient" SelectCommand=""></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="22px" OnClick="Button1_Click" Text="Pokaż" Width="143px" />
        </td>
    </tr>
        </table>
   
    <table class="auto-style1">
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label1" runat="server" Text="Liczba w zadaniu:" Visible="False" style="font-weight: 700"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="300px" Height="42px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; text-align: right">
            <asp:Label ID="Label2" runat="server" Text="Wynik:" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; text-align: right">
            <asp:Label ID="Label3" runat="server" Text="Postęp:" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label4" runat="server" Text="Czas rozpoczęcia:" Visible="False" style="font-weight: 700; text-align: right"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label5" runat="server" Text="Czas zakończenia:" Visible="False" style="font-weight: 700; text-align: right"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; text-align: right">
            <asp:Label ID="Label6" runat="server" Text="Czas dodania:" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; text-align: right">
            <asp:Label ID="Label8" runat="server" Text="Użyty algorytm:" Visible="False" style="font-weight: 700"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" Visible="False" Enabled="False" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
       
</asp:Content>

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

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowDelete="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="id_zadanie">
        <AlternatingRowStyle BackColor="White" />
        <Columns> 
                  
             <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
             <asp:BoundField  DataField="id_zadanie" HeaderText="ID"  />
             <asp:BoundField DataField="zadana_liczba" HeaderText="Zadana liczba" />
             <asp:BoundField DataField="czas_dodania" HeaderText="Czas dodania" />
             <asp:BoundField DataField="czas_zakonczenia" HeaderText="Czas zakończenia" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <sortedascendingcellstyle backcolor="#F5F7FB" />
        <sortedascendingheaderstyle backcolor="#6D95E1" />
        <sorteddescendingcellstyle backcolor="#E9EBEF" />
        <sorteddescendingheaderstyle backcolor="#4870BE" />
    </asp:GridView>
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

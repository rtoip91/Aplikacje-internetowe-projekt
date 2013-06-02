<%@ Page Title="" Language="C#" MasterPageFile="~/glowna.Master" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="Mpi_web.Users.Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .auto-style1 {
        width: 100%;
            height: 90px;
        }
        .auto-style2 {
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="5000" Enabled="True">
        </asp:Timer>
    <br />

    
    <br />

    <table class="auto-style1">
    <tr>
        <td style="font-style: italic; text-decoration: underline; font-weight: 700">Wybierz zadanie:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="zadana_liczba" DataValueField="id_zadanie" Width="300px">
            
            </asp:DropDownList>
             

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sql29880ConnectionString %>" ProviderName="<%$ ConnectionStrings:sql29880ConnectionString.ProviderName %>" >
           
            
            </asp:SqlDataSource>
            
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
            <asp:TextBox ID="TextBox2" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; text-align: right">
            <asp:Label ID="Label3" runat="server" Text="Postęp:" Visible="False"></asp:Label>
        </td>
        <td>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="250px"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" Height="21px" Text="Sprawdź postęp" OnClick="Button3_Click" Visible="False" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label4" runat="server" Text="Czas rozpoczęcia:" Visible="False" style="font-weight: 700; text-align: right"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Label ID="Label5" runat="server" Text="Czas zakończenia:" Visible="False" style="font-weight: 700; text-align: right"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; text-align: right">
            <asp:Label ID="Label6" runat="server" Text="Czas dodania:" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Visible="False" ReadOnly="True" Enabled="False" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-weight: 700; text-align: right">
            <asp:Label ID="Label8" runat="server" Text="Użyty algorytm:" Visible="False" style="font-weight: 700"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" Visible="False" Enabled="False" Width="250px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>

    </tr>
        <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" Height="22px" Visible="False" OnClick="Button2_Click" Text="Usuń zadanie" Width="107px" />
            
        </td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
        </tr>
        <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
        </td>
        </tr>
    <tr>
        <td style="text-align: right">
            &nbsp;</td>
    </tr>
</table>
        
</asp:Content>

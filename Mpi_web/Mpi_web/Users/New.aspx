<%@ Page Title="" Language="C#" MasterPageFile="~/glowna.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="Mpi_web.Users.New" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 33px;
        }
        .auto-style5 {
            height: 28px;
        }
        .auto-style6 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>Zadana Liczba</td>
            <td>
                <asp:TextBox ID="LiczbaBox" runat="server" Width="305px" OnTextChanged="LiczbaBox_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">plik txt</td>
            <td class="auto-style3">
               
                   
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="313px" />
                   
                
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">
                <asp:Button ID="AddButton" runat="server"  OnClick="AddButton_Click" style="height: 26px" Text="Dodaj" Width="98px" EnableViewState="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Dodano Pomyslnie" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                
            </td>
        </tr>
        
        
    </table>
    </asp:Content>

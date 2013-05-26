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
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            height: 31px;
            text-align: right;
        }
        .auto-style9 {
            height: 28px;
            text-align: right;
        }
        .auto-style10 {
            height: 33px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7"><strong>Algorytm</strong></td>
            <td>
                <asp:DropDownList ID="ListaAlgorytmow" runat="server">
                    <asp:ListItem Value="1">Miller-Rabin</asp:ListItem>
                    <asp:ListItem Value="2">AVR</asp:ListItem>
                    <asp:ListItem Value="3">Wszystkie</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="LiczbaBox" ErrorMessage="To nie jest liczba" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Zadana Liczba</strong></td>
            <td>
                <asp:TextBox ID="LiczbaBox" runat="server" Width="305px" OnTextChanged="LiczbaBox_TextChanged" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LiczbaBox" ErrorMessage="Należy podać liczbę" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style3">
               
                   
                <asp:Button ID="AddButton" runat="server"  OnClick="AddButton_Click" Text="Dodaj" Width="110px" EnableViewState="False" />
                   
                
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Wczytywanie z pliku .txt</strong></td>
            <td class="auto-style5">
               
                   
                        <asp:FileUpload ID="FileUpload" runat="server" Height="26px" Width="313px" />
                   
                
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">
               
                   
                <asp:Button ID="FileButton" runat="server" CausesValidation="False" OnClick="FileButton_Click" Text="Wczytaj z Pliku" Width="110px" />
                
                
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td style="text-align: left">
                
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Dodano Pomyslnie" Visible="False" style="text-align: right"></asp:Label>
                
            </td>
        </tr>
        
        
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                
                &nbsp;</td>
        </tr>
        
        
    </table>
    </asp:Content>

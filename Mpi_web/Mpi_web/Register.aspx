<%@ Page Title="" Language="C#" MasterPageFile="~/glowna.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Mpi_web.Users.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center">Nowy Użytkownik
            </td>
        </tr>
        <tr>
            <td>Login</td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:TextBox ID="LoginBox" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LoginBox" ErrorMessage="Należy podać login" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>Hasło</td>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:TextBox ID="PassBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassBox" ErrorMessage="Należy podać hasło" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Powtórz hasło</td>
            <td class="auto-style2">
                <asp:Panel ID="Panel3" runat="server">
                    <asp:TextBox ID="PassBox2" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassBox" ControlToValidate="PassBox2" ErrorMessage="Hasła nie są takie same" ForeColor="Red"></asp:CompareValidator>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="UserButton" runat="server" OnClick="UserButton_Click" Text="Dodaj" Width="128px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="UserButton" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>

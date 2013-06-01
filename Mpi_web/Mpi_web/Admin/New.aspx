<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="Mpi_web.Admin.New" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center">Nowy Administrator</td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Login</td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <asp:TextBox ID="LoginBox" runat="server" style="margin-bottom: 0px" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="LoginBox" ErrorMessage="Należy podać login" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" style="text-align: right">Hasło</td>
            <td>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:TextBox ID="PassBox" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassBox" ErrorMessage="Należy podać hasło" ForeColor="Red"></asp:RequiredFieldValidator>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Powtórz hasło</td>
            <td class="auto-style2">
                <asp:Panel ID="Panel3" runat="server" style="text-align: left">
                    <asp:TextBox ID="PassBox2" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassBox" ControlToValidate="PassBox2" ErrorMessage="Hasła nie są takie same" ForeColor="Red"></asp:CompareValidator>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="UserButton" runat="server" OnClick="UserButton_Click" Text="Dodaj" Width="128px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" Visible="False" ForeColor="#006600"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="UserButton" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>

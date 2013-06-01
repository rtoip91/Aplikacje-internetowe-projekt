<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Mpi_web.Admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Baza2Context" DefaultContainerName="Baza2Context" EnableFlattening="False" EntitySetName="uzytkownik" Select="it.[login], it.[id_uzytkownik], it.[typ_id_typ]">
</asp:EntityDataSource>
<table class="auto-style1">
    <tr>
        <td>Login</td>
        <td>
            <asp:DropDownList ID="UserList" runat="server" DataSourceID="EntityDataSource1" DataTextField="login" DataValueField="id_uzytkownik">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click" Text="Usuń" Width="91px" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<br />
</asp:Content>

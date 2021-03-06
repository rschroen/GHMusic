﻿<%@ Page Title="Registreren" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GHMusic.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblFormHandler" runat="server" Text=""></asp:Label>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Gebruikersnaam:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbUsername" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUsername" CssClass="form-error" ErrorMessage="Gebruikersnaam is verplicht!" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="CheckUsername" ControlToValidate="tbUsername" Display="Dynamic" ErrorMessage="Username already exists"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">E-Mail:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbEmail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbEmail" CssClass="form-error" ErrorMessage="E-Mail is verplicht" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="form-error" ErrorMessage="Vul een geldig e-mailadres in!" ControlToValidate="tbEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Wachtwoord:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPassword" CssClass="form-error" ErrorMessage="Wachtwoord is verplicht" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Wachtwoord bevestigen:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbConfirmPassword" CssClass="form-error" ErrorMessage="Wachtwoord bevestigen is verplicht!" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPassword" CssClass="form-error" ErrorMessage="Wachtwoorden moeten hetzelfde zijn" Display="Dynamic"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Leeftijd:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbAge" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RangeValidator runat="server" Type="Integer" MinimumValue="0" MaximumValue="200" ControlToValidate="tbAge" 
                    ErrorMessage="Moet een getal zijn tussen 0 en 200" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Interesses:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbInterests" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Handtekening:</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbSignature" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btSubmit" runat="server" OnClick="btSubmit_Click" Text="Submit" />
                <input id="btReset" type="reset" value="Reset" /></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registreren.aspx.cs" Inherits="PcExpert1.Registreren" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 25px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1>Registreren</h1>
    <p>
        Wilt u verdere informatie? <br />
        Dan kunt u hieronder uw gegevens invullen en dan zullen wij zo spoedig mogelijk contact met u opnemen.
    </p>

    <table class="auto-style1">
    <tr>
        <td>Voornaam:</td>
        <td>
            <asp:TextBox ID="txtNaam" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Achternaam:</td>
        <td>
            <asp:TextBox ID="txtAnaam" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAnaam" ErrorMessage="Hij is leeg!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>E-mail:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Hij is leeg!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Adres:</td>
        <td>
            <asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAdres" ErrorMessage="Hij is leeg!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Postcode:</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPostcode" ErrorMessage="Hij is leeg!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Woonplaats:</td>
        <td>
            <asp:TextBox ID="txtWoonplaats" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtWoonplaats" ErrorMessage="Hij is leeg!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>TelefoonNummer:</td>
        <td>
            <asp:TextBox ID="txtTelNr" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    
    
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="lblCookieError" runat="server" Text="....."></asp:Label>
            <asp:Label ID="lblMelding" runat="server" Text="....."></asp:Label>
        </td>
    </tr>
</table>


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Opzoeken.aspx.cs" Inherits="PcExpert1.Opzoeken" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvOpzoeken" runat="server" OnSelectedIndexChanged="gvOpzoeken_SelectedIndexChanged"></asp:GridView>

    <asp:Label ID="lblFout" runat="server" Text="...."></asp:Label>
</asp:Content>

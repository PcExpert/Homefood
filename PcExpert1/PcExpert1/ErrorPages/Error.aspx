<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="PcExpert1.ErrorPages.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>An error has occurred</h2>

    <p>

        <asp:Label ID="lblError" runat="server" Text="Error"></asp:Label>


        an unexpected error had occurred, the websites administrator has been notified.

    </p>

    <asp:hyperlink runat="server" ID="LinkHome" NavigateUrl="~/index.aspx" Text="Go back to home page"></asp:hyperlink>
    
</asp:Content>

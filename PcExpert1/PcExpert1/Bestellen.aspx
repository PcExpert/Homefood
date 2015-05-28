<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Bestellen.aspx.cs" Inherits="PcExpert1.Bestellen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 54px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Bestellen</h1>

    <p>
        Wilt u misschien een nieuwe computer? of wellicht een nieuw beeld?<br />
        Daar kunnen wij u ook mee van dienst zijn.<br />
        Hier zijn een aantal producten die wij kunnen leveren.<br />

    </p>



        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblMuizen" runat="server" Text="Vind hier al uw muizen en toetsenborden"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ImageButton ID="ibMuizen" CssClass="producten" ImageUrl="~/images/bestelpagina/bestel-muis.jpg" OnClick="ibMuizen_Click" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblKabels" runat="server" Text="Mist u een kabel?"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ImageButton ID="ibKabels" CssClass="producten" ImageUrl="~/images/bestelpagina/bestel-stekker.jpg" OnClick="ibKabels_Click" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblOverig"  runat="server" Text="Voor eventuele uitbreidingen van hardware of simpel weg wat nieuws."></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:ImageButton ID="ibOverig" CssClass="producten" OnClick="ibOverig_Click" ImageUrl="~/images/bestelpagina/bestel-usb.jpg" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

       



</asp:Content>

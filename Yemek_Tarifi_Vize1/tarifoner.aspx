<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="tarifoner.aspx.cs" Inherits="Yemek_Tarifi_Vize1.tarifoner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: right;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            background-color: #0099CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TxtTarifad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Malzemeler</td>
            <td>
                <asp:TextBox ID="txtTarifmalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Yapilis:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtTarifyapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Tarif Oneren:</td>
            <td>
                <asp:TextBox ID="txtTarifoneren" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mail Adresi:</td>
            <td>
                <asp:TextBox ID="txtTarifmail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btntarifoner" runat="server" CssClass="auto-style6" Text="Tarifi Oner" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>

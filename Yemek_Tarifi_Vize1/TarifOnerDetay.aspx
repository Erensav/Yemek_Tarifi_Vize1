<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifi_Vize1.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style7 {
            text-align: right;
            height: 134px;
        }
        .auto-style8 {
            height: 134px;
            margin-left: 40px;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Tarif Ad:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox11" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Tarif Malzemeler:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox22" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Yapilis:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox33" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Tarif Resim:</strong></td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Tarif Oneren:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox34" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Oneren Mail:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox35" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Kategori:&nbsp;</strong></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnOnayla" runat="server" OnClick="btnOnayla_Click" Text="Onayla" Width="200px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

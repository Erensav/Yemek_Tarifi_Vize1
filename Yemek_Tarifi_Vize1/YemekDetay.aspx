<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifi_Vize1.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: x-small;
        }
        .auto-style5 {
            margin-left: 40px;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            text-align: right;
            height: 134px;
        }
        .auto-style8 {
            height: 134px;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="lbl3" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: 2px">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        -<em><asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </em></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div>Yorum Yapma Panali</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Ad Soyad:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox11" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Mail:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox22" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Yorumunuz:</strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox33" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnyorumyap" runat="server" OnClick="btnyorumyap_Click" Text="Yorum Yap" Width="200px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Yemek_Tarifi_Vize1.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td><strong>


                       <a href="YemekDetay.aspx?Yemekid=3"> <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a></strong></td>


                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4">Yemek Puani:<strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    </strong></td>
                                <td>Eklenme Tarihi:<em><asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    </em></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: 4px; border-bottom-color: #800000">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

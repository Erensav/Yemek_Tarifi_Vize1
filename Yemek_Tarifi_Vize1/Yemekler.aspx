<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifi_Vize1.Yemekler" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            background-color: #C0C0C0;
        }

        .auto-style4 {
            text-align: right;
        }

        .auto-style5 {
            text-align: left;
            width: 251px;
        }

        .auto-style6 {
            text-align: right;
            width: 99px;
        }

        .auto-style7 {
            width: 31px;
        }

        .auto-style8 {
            width: 32px;
        }

        .auto-style9 {
            background-color: #CCCCCC;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>Yemek Listesi&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style4">
                            <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style9">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td>Yemek Ekleme</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Malzemeler:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarifi:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="btnekle" runat="server" CssClass="fb8" OnClick="btnekle_Click" Text="EKLE" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="mesajlar.aspx.cs" Inherits="Yemek_Tarifi_Vize1.mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            background-color: #C0C0C0;
        }

        .auto-style7 {
            width: 31px;
        }

        .auto-style8 {
            width: 32px;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" />
                </td>
                <td>Mesaj Listesi</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Mesajgonderen") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style9">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/yazma.jpg" Width="30px" /></a>
                        </td>

                        <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/yazma.jpg" Width="30px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

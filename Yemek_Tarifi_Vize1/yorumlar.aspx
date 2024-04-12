<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="Yemek_Tarifi_Vize1.yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 31px;
        }

        .auto-style8 {
            width: 32px;
        }

        .auto-style5 {
            text-align: left;
            width: 251px;
        }

        .auto-style6 {
            text-align: right;
            width: 99px;
        }

        .auto-style4 {
            text-align: right;
        }

        .auto-style9 {
            width: 31px;
            height: 34px;
        }

        .auto-style10 {
            width: 32px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" __designer:mapid="0">
        <tr __designer:mapid="1">
            <td class="auto-style7" __designer:mapid="2">
                <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style8" __designer:mapid="4">
                <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
            </td>
            <td __designer:mapid="6">Onaylanan Yorum Listesi</td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style4">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/update.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>


    </asp:Panel>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
            </td>
            <td class="auto-style8">
                <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
            </td>
            <td>Onaylanmayan Yorum Listesi</td>
        </tr>
    </table>
    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style4">
                            <a href="YorumDetay.aspx?Yorumid=<%# Eval("Yorumid")%>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icon/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

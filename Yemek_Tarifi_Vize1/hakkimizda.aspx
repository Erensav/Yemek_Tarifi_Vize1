<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="Yemek_Tarifi_Vize1.hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        <strong>Hakkimizda</strong></p>
    <p class="auto-style3">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>

    <asp:Image ID="Image1" runat="server" Height="203px" ImageUrl="~/resimler/blog.jpg" Width="450px" />

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/SiteStatuaryhall.Master" AutoEventWireup="true" CodeBehind="WebPasswordRetrieval.aspx.cs" Inherits="WebStatuaryHall.WebPasswordRetrieval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;border:1px solid #808080;">
        <span style="font-size:30px">密码找回</span>
        <p>
            <asp:DropDownList runat="server" Width="230" Height="50">
                <asp:ListItem Text="text1" />
                <asp:ListItem Text="text2" />
            </asp:DropDownList>
        </p>
        <p>
            问题答案：<asp:TextBox runat="server" Width="230" Height="26" />
        </p>
        <p>
            <asp:Button Text="找回密码" runat="server" Width="235" Height="30" />
        </p>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/SiteStatuaryhall.Master" AutoEventWireup="true" CodeBehind="WebRegister.aspx.cs" Inherits="WebStatuaryHall.WebRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border:1px solid #808080; text-align:center">
        <span style="font-size:30px;text-align:center;width:100%">注册</span>
        <br />
        <p>
        称号：<asp:TextBox ID="Name" runat="server" Width="230" Height="26" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
        </p>
        <p>
        账号：<asp:TextBox ID="loginname" runat="server" Width="230" Height="26" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginname" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
            </p>
        密码：<asp:TextBox ID="pwd" runat="server" Width="230" Height="26" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pwd" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
        <p>
        重复密码：<asp:TextBox ID="txtpwd" runat="server" Width="230" Height="26" TextMode="Password" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="txtpwd" ErrorMessage="密码不一致">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpwd" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
            </p>
        <p>
        <asp:Button Text="注册" runat="server" Width="235" Height="30" OnClick="Unnamed1_Click" />
            </p>
        <p>
            <asp:Label ID="lblmsg" Text="text" runat="server" />
        </p>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    </div>
</asp:Content>

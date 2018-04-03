<%@ Page Title="" Language="C#" MasterPageFile="~/SiteStatuaryhall.Master" AutoEventWireup="true" CodeBehind="WebBasicData.aspx.cs" Inherits="WebStatuaryHall.WebBasicData1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border:1px solid #808080; text-align:center">
        <span style="font-size:30px;text-align:center;width:100%">基础资料</span>
        <br />
        <p>
        年龄：<asp:TextBox ID="txtage" runat="server" Width="230" Height="26" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
        </p>
        <p>
        性别：<asp:TextBox ID="txtgender" runat="server" Width="230" Height="26" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtgender" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </p>
        <p>
        电话：<asp:TextBox ID="txtTelephone" runat="server" Width="230" Height="26" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelephone" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
            </p>
        QQ：<asp:TextBox ID="txtqq" runat="server" Width="230" Height="26" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtqq" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
        <p>
        邮箱：<asp:TextBox ID="txtMailbox" runat="server" Width="230" Height="26" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMailbox" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
            </p>
        <p>
        <asp:Button Text="保存" runat="server" Width="235" Height="30" OnClick="Unnamed1_Click" />
            </p>
        <p>
            <asp:Label ID="lblmsg" Text="text" runat="server" />
        </p>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    </div>
</asp:Content>

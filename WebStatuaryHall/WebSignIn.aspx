<%@ Page Title="" Language="C#" MasterPageFile="~/SiteStatuaryhall.Master" AutoEventWireup="true" CodeBehind="WebSignIn.aspx.cs" Inherits="WebStatuaryHall.WebSignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    </div>
    <div style="border:0px solid #ffffff; text-align:center;margin:100px">
        &nbsp;&nbsp;&nbsp;<span style="font-size:30px;">登录<br /></span>
        <br />
        <span>
            账号：<asp:TextBox ID="txtName" runat="server" Width="230" Height="26"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="账号不能为空">*</asp:RequiredFieldValidator>
            <br />
        </span>
        <br />
        <span>
            密码：<asp:TextBox ID="txtpwd" runat="server" Width="230" Height="26" TextMode="Password" />
            
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" ErrorMessage="账号不能为空">*</asp:RequiredFieldValidator>
            
        <br />
        </span>
        <br />
        <span>
             &nbsp;&nbsp;&nbsp;<asp:Button Text="登录" runat="server" Width="235" Height="30" OnClick="Unnamed1_Click"/><br />
        </span>
        <br />
        <span>
            &nbsp;&nbsp;&nbsp;<asp:HyperLink NavigateUrl="WebRegister.aspx" runat="server" Text="注册" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <span>
            <asp:HyperLink NavigateUrl="WebPasswordRetrieval.aspx" runat="server" Text="忘记密码" />
        </span>
        <br />
        <span>
            <asp:Label ID="lblmge" Text="text" runat="server" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </span>
    </div>
    <div>

    </div>
</asp:Content>

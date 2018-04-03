<%@ Page Title="" Language="C#" MasterPageFile="~/SiteStatuaryhall.Master" AutoEventWireup="true" CodeBehind="WebInformationPage.aspx.cs" Inherits="WebStatuaryHall.WebInformationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border:1px solid #808080">
        <div style="border-bottom:1px dashed #808080">
            <asp:SiteMapPath runat="server" ></asp:SiteMapPath>

        </div>
        <div style="margin:20px;">
            <table style="width:100%">
                <tr>
                    <td style="width:230px;" rowspan="7">
                        <asp:Image ID="imgName" ImageUrl="imageurl" runat="server" Width="200" Height="260" />
                    </td>
                    <td style="text-align:left">
                        图片名称：<asp:Label ID="Name" Text="text" runat="server" /><br />
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left">
                        图片状态：<asp:Label ID="Statnames" Text="text" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        图片分类：<asp:Label ID="StatenameIDs" Text="text" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        拍摄人：<asp:Label ID="Performers" Text="text" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        拍摄地区：<asp:Label ID="Regions" Text="text" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        拍摄年份：<asp:Label ID="Particularyears" Text="text" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        上传日期：<asp:Label ID="updatedates" Text="text" runat="server" />
                    </td>
                </tr>
            </table>
            <div style="margin-top:8px;margin-left:15px">
                <br />
            </div>
        </div>
        <div>

        </div>
        <div style="border:1px solid #808080;margin:10px;height:80px;">
            <div style="height:25px;border-bottom:1px solid #808080;margin-top:8px;background-color:#c3c1c1">&nbsp;百度网盘分享</div>
            <div style="margin-top:8px;margin-left:15px">
                <asp:Label Text="百度网盘 链接：" runat="server" /><asp:Label ID="BSLs" Text="text" runat="server" />&nbsp;&nbsp
                密码：<asp:Label ID="SDLPs" Text="text" runat="server"/>&nbsp
                <asp:Button Text="复制密码" runat="server" Height="25px" OnClick="Unnamed3_Click" />
            </div>
        </div>
        <div>

        </div>
    </div>
    <div style="border:1px solid #27ea97;background-color:#c3c1c1;">
        图片介绍：<asp:Label ID="plotintroductions" Text="text" runat="server" />
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/SiteStatuaryhall.Master" AutoEventWireup="true" CodeBehind="WebCategoryPage.aspx.cs" Inherits="WebStatuaryHall.WebCategoryPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%">
        <tr>
            <td>
    <asp:DataList runat="server" RepeatColumns="6" ID="datal" OnSelectedIndexChanged="datal_SelectedIndexChanged">
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <asp:HyperLink NavigateUrl="navigateurl" runat="server">
                            <asp:Image ID="images" ImageUrl='<%# "~/Image/12/"+Eval("PictureNumber")+".jpg" %>' runat="server" Width="100" Height="120" />
                               </asp:HyperLink> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="txtp" NavigateUrl="navigateurl" runat="server" Text="66" CssClass="Menu" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <table>
                <tr>
                    <td>
                        <asp:HyperLink NavigateUrl="navigateurl" runat="server" >
                            <asp:image ID="imageps" imageurl='<%# "~/Image/12/"+Eval("PictureNumber")+".jpg" %>' runat="server" Width="100" Height="120" />
                        </asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="txts" NavigateUrl="navigateurl" runat="server" Text="66" CssClass="Menu"/>
                    </td>
                </tr>
            </table>
        </AlternatingItemTemplate>
    </asp:DataList>
            </td>
            <td style="text-align:right;">
                <div style="text-align:center;">
                    排名
                </div>
                <div>

                </div>
            </td>
        </tr>
        <tr>
            <td>
                
                <asp:Button Text="上一页" runat="server" /><asp:Label Text="/" runat="server" /><asp:Button Text="下一页" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

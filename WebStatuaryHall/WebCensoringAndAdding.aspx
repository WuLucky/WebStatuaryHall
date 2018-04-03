<%@ Page Title="" Language="C#" MasterPageFile="~/SiteStatuaryhall.Master" AutoEventWireup="true" CodeBehind="WebCensoringAndAdding.aspx.cs" Inherits="WebStatuaryHall.WebCensoringAndAdding" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;">
        <b style="font-size:30px;">
    <asp:Label Text="图片信息" runat="server"/>
        </b>
        </div>
    <asp:GridView ID="dsSelect" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MIID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="PictureName" HeaderText="图片名称" SortExpression="MovieName" />
            <asp:BoundField DataField="Performer" HeaderText="上传人" SortExpression="Performer" />
            <asp:BoundField DataField="Region" HeaderText="拍摄地点" SortExpression="Region" />
            <asp:BoundField DataField="ParticularYear" HeaderText="拍摄年份" SortExpression="ParticularYear" />
            <asp:BoundField DataField="UpdateDate" HeaderText="拍摄日期" SortExpression="UpdateDate" />
            <asp:BoundField DataField="PictureNumber" HeaderText="图片编号" SortExpression="PictureNumber" />
            <asp:BoundField DataField="StateNameID" HeaderText="类型编号" SortExpression="StateNameID" />
            <asp:BoundField DataField="LinkID" HeaderText="链接编号" SortExpression="LinkID" />
            <asp:BoundField DataField="Statname" HeaderText="状态编号" SortExpression="Statname" />
            <asp:TemplateField><EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('删除选中的数据?');" CommandName="Delete" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StatuaryHallConnectionString %>" SelectCommand="vw_selectMovieDesc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <b>
    <asp:Button ID="btnUoload" Text="上传" runat="server" Width="100px" OnClick="btnUoload_Click" /></b>
    <br />
    <asp:Label ID="lblMsg" runat="server" ></asp:Label>
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:Label ID="Label2" runat="server" ></asp:Label>
    <asp:Label ID="Label3" runat="server" ></asp:Label>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/SiteStatuaryhall.Master" AutoEventWireup="true" CodeBehind="WebHomePage.aspx.cs" Inherits="WebStatuaryHall.WebHomePage" %>
<%@ OutputCache Duration="60" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 597px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link type="text/css" rel="stylesheet" href="css/css.css"/>
    <script src="js/jquery-1.9.1.min.js"></script>
         <script src="js/index.js"></script>
    <table style="border:1px solid #808080;width:100%">   

        
       
                    <div style="width:260px; border:1px solid #808080;border-top-width:5px;border-bottom-width:5px">
                        
                    <div style="border-bottom:1px dashed #808080;" class="auto-style1">
                        最近图片</div>
                    <div class="box">
	<!-- 存放大图的容器-->
	<div class="all">
		<div class="top-img">
			<div class="activeimg">
				<img src="Image/1.jpg"/>
				<img src="Image/2.jpg"/>
				<img src="Image/3.jpg"/>
				<img src="Image/4.jpg"/>
				<img src="Image/5.jpg"/>
			</div>
			<div class="left"><img src="Image/left.png"/> </div>
			<div class="right"><img src="Image/right.png"/></div>
		</div>
		<!-- 存放缩略图的容器-->
		<div class="bot-img">
			<ul>
				<li class="active"><img src="Image/1.jpg"/> </li>
				<li><img src="Image/2.jpg"/></li>
				<li><img src="Image/3.jpg"/> </li>
				<li><img src="Image/4.jpg"/> </li>
				<li><img src="Image/5.jpg"/> </li>
			    <li></li>
                <li></li>
			</ul>
		</div>
	</div>
</div>
                </div>
        
				
            
    </table>
</asp:Content>

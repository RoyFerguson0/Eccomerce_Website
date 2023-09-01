<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="projAssignment.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styleLogin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavLink" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="homeContent">
        <div id="logonAsp">
           <asp:Login ID="Login1" runat="server" Height="224px" OnAuthenticate="Login1_Authenticate" Width="320px"></asp:Login>
        </div>
    </div>
    
</asp:Content>

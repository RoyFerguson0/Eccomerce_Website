<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="Boss.aspx.cs" Inherits="projAssignment.SecureBoss.Boss" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/styleBoss.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavLink" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="homeContent">
        <h1>You Are = 
            <asp:Label ID="lblName" runat="server"></asp:Label>
        </h1>
        <div id="tabIN">
            REMEMBER YOU ARE IN CHARGE??? Not Jerry!!!!!
            <br /><br />
        </div>
       
    </div>
</asp:Content>

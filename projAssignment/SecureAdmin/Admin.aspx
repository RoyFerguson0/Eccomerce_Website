<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="projAssignment.SecureAdmin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/styleAdmin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavLink" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="homeContent">
        <h1>Hello
            <asp:Label ID="lblName" runat="server"></asp:Label>
        </h1>
        <div id="tabIN">
            You are logged in. Will have more responsibilities in the future!!!!
            <br /><br />
        </div>
       
    </div>
</asp:Content>

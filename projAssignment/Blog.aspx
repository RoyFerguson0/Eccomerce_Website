<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="projAssignment.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styleBlog.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="homeContent">
        <div id="BlogTitle">
            <h1>Blog Page</h1>
        </div>
        <div id="BlogContent">
            <asp:TextBox ID="txtBlog" runat="server" Height="200px" width="70%" margin="auto" TextMode="MultiLine" ReadOnly="True"></asp:TextBox><br /><br />
            <asp:TextBox ID="txtEntry" runat="server" Height="50px" width="70%" margin="auto" ></asp:TextBox><br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        </div>
    </div>
</asp:Content>

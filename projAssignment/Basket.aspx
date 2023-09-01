<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="Basket.aspx.cs" Inherits="projAssignment.Basket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="javascript/JavaScriptBasket.js"></script>
    <link href="styles/styleBasket.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="homeContent">
        <p>
            <asp:Label ID="lblOrderSummary" runat="server"></asp:Label>
        </p>
        <div id="tabIN">
            <asp:Panel ID="pnlOrders" runat="server">
            </asp:Panel>
        </div>
        <p>
            <asp:Label ID="lblTotalCost" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" OnClientClick="return areyousure()" Text="Clear Basket" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnPurchase" runat="server" OnClick="btnPurchase_Click" Text="Purchase Items" />
            <br />
        </p>
    </div>
    <%-- The External Javascript wouldn't run so put the exact same code into embedded style sheet. --%>
    <script>
        function areyousure() {
            var reply = confirm("Empty basket contents... Are you sure?");
            return reply;
        }
    </script>
</asp:Content>

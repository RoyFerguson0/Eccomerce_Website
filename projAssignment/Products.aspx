<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="projAssignment.Producst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styleProducts.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="NavigationLinks" ContentPlaceHolderID="NavLink" runat="server">
     <%-- Basket Amount --%>
    <asp:LinkButton ID="lbnBasket" Style="float:right;" OnClick="lbnBasket_Click" runat="server">(0)</asp:LinkButton>
                
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="homeContent">
        <h1 class="headCentered">Products</h1>
        <%-- Products Container --%>
        <div class="DisplayedProducts">

            <%-- Product One Container --%>
            <div id="product1" class="prod">
                <div class="productTitle">
                    EPSON EcoTank ET-2820 All-in-One Wireless Inkjet Printer
                </div>
                <div class="productImages">
                    <asp:Image class="productImage" ID="Image1" ImageUrl="~/images/EPSON_EcoTank_ET_2820.jpeg" runat="server" />
                </div>
                <div class="productPrice">
                    Price: £209.99
                </div>
                <div class="addToBacket">
                    <asp:Button  ID="btnProduct1" runat="server" Text="Add" OnClick="btnProduct1_Click" />
                </div>
            </div>

            <%-- Product Two Container --%>
            <div id="product2" class="prod">
                <div class="productTitle">
                    <span class="productInfo">Apple iphone 14</span>
                </div>
                <div class="productImages">
                    <asp:Image class="productImage" ID="Image2" ImageUrl="~/images/Apple_iphone_14.jpeg" runat="server" />
                </div>
                <div class="productPrice">
                    Price: £769.00
                </div>
                <div class="addToBacket">
                    <asp:Button  ID="btnProduct2" runat="server" Text="Add" OnClick="btnProduct2_Click" />
                </div>
            </div>

            <%-- Product Three Container --%>
            <div id="product3" class="prod">
                <div class="productTitle">
                    <span>Cannon Pixma TS3355</span>
                </div>
                <div class="productImages">
                    <asp:Image class="productImage" ID="Image3" ImageUrl="~/images/CANON_Pixma.jpeg" runat="server" />
                </div>
                <div class="productPrice">
                    Price: £44.99
                </div>
                <div class="addToBacket">
                    <asp:Button  ID="btnProduct3" runat="server" Text="Add" OnClick="btnProduct3_Click" />
                </div>
            </div>

            <%-- Product Four Container --%>
            <div id="product1" class="prod">
                <div class="productTitle">
                    JVC LT-39CA120 Android TV
                </div>
                <div class="productImages">
                    <asp:Image class="productImage" ID="Image4" ImageUrl="~/images/JVC_LT-39CA120_Android_TV.jpeg" runat="server" />
                </div>
                <div class="productPrice">
                    Price: £189.99
                    
                </div>
                <div class="addToBacket">
                    <asp:Button  ID="btnProduct4" runat="server" Text="Add" OnClick="btnProduct4_Click" />
                </div>
            </div>

            <%-- Product Five Container --%>
            <div id="product2" class="prod">
                <div class="productTitle">
                    CANON EOS 250D DSLR Camera with EF-S
                </div>
                <div class="productImages">
                    <asp:Image class="productImage" ID="Image5" ImageUrl="~/images/CANON_EOS_250D_DSLR_Camera_with_EF-S.jpeg" runat="server" />
                </div>
                <div class="productPrice">
                    Price: £729.00
                </div>
                <div class="addToBacket">
                    <asp:Button  ID="btnProduct5" runat="server" Text="Add" OnClick="btnProduct5_Click" />
                </div>
            </div>

            <%-- Product Six Container --%>
            <div id="product3" class="prod">
                <div class="productTitle">
                    MICROSOFT Xbox Series S
                </div>
                <div class="productImages">
                    <asp:Image class="productImage" ID="Image6" ImageUrl="~/images/MICROSOFT_Xbox_Series_S.jpeg" runat="server" />
                </div>
                <div class="productPrice">
                    Price: £249.00
                </div>
                <div class="addToBacket">
                    <asp:Button  ID="btnProudct6" runat="server" Text="Add" OnClick="btnProudct6_Click" />
                </div>
            </div>
    </div>
  
        
    </div>
        
</asp:Content>

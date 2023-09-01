<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="projAssignment.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styleContactUs.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   <div id="homeContent">
       <div id="ContactTitle">
           <h1>Contact Support</h1>
       </div>
       <div id="ContactDetails">
               
           <table class="TBBorder">
               <tr>
                   <td class="TBTitle">Phone Number:</td>
               </tr>
               <tr>
                   <td class="TBDetails"><a href="tel:07712345123">07712345123</a></td>
               </tr>
               <tr>
                   <td class="TBTitle">Email Address:</td>
               </tr>
                   <td class="TBDetails"><a href="mailto: JFRElectricalSupport@gmail.com">JFRElectricalSupport@gmail.com</a></td>
               </tr>
           </table>
               
       </div>
       
       <div id="locationTitle">
           <h2>Where to Find Us</h2>
       </div>
       <div id="map">
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d147937.39743585268!2d-6.066714229139666!3d54.59479913615576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4860fffdd7d08a3b%3A0x2e57162cefc7c531!2sBelfast!5e0!3m2!1sen!2suk!4v1682950941403!5m2!1sen!2suk" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

   </div>

</asp:Content>

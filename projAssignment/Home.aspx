<%@ Page Title="" Language="C#" MasterPageFile="~/CustMasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="projAssignment.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styleHome.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="homeContent">
        <h1>Welcome
            <asp:Label ID="lblUser" runat="server"></asp:Label>
        </h1>
        <p id="tabIN">This is JFR Electcical Equipment's Website where you are able to purphase IT products <br />
            E.g. Computers, Laptops, PC's, Hard Drives etc. <br />
            What Ever you are look for <b>We Have</b>
        </p>

        <h2>Some Products We Have Available</h2>
        <!-- Slideshow container -->
        <div class="slideshow-container">

          <!-- Full-width images with number and caption text -->
          <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
              <asp:Image class="slideshowImages" ImageUrl="~/images/ASUS_Vivobook_15.jpeg" AlternateText="ASUS Vivobook 15 X1500EA 15.6 Laptop" ID="Image2"  runat="server"/>
            <div class="slideshow-bottomMiddle">ASUS Vivobook 15 X1500EA 15.6 Laptop</div>
            <div class="slideshow-middle">SELLING OUT QUICKLY</div>
          </div>

          <div class="mySlides fade">
            <div class="numbertext">
                2 / 3
            </div>
              <asp:Image class="slideshowImages" ImageUrl="~/images/Lenovo_IdeaCentre_AIO_3.jpeg" AlternateText="LENOVO IdeaCentre AIO 3" ID="Image1" runat="server" />
            <div class="slideshow-bottomMiddle">LENOVO IdeaCentre AIO 3</div>
          </div>

          <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
              <asp:Image class="slideshowImages" ImageUrl="~/images/CANON_Pixma.jpeg" AlternateText="CANON PIXMA TS3355 All-in-One Wireless Inkjet Printer" ID="Image3" runat="server" />
            <div class="slideshow-bottomMiddle">CANON PIXMA TS3355 All-in-One Wireless Inkjet Printer</div>
              <div class="slideshow-middle">SELLING OUT QUICKLY</div>
          </div>

          <!-- Next and previous buttons -->
          <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
          <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>

        <!-- The dots/circles -->
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(1)"></span>
          <span class="dot" onclick="currentSlide(2)"></span>
          <span class="dot" onclick="currentSlide(3)"></span>
        </div>
    </div>

    <!-- Tryed using external Javascript but was causing issues in program-->
    <!-- Also wouldn't allow me to put into head section -->
    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) { myIndex = 1 }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 2000); // Change image every 2 seconds
        }

        let slideIndex = 1;
        showSlides(slideIndex);

        // Next/previous controls
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        // Thumbnail image controls
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
    
</asp:Content>

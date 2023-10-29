<%@ Page Title="" Language="C#" MasterPageFile="~/sablonum.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="seyhmusaykut1747.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div class="slideshow-container">
        <div class="mySlides fade">
            <img src="image/balıkavı/balikavi.jpg" style="width:100%" />
            <div class="text">
                BALIKÇILIK</div>
        </div>
        <div class="mySlides fade">
            <img src="image/karaavı/avci.jpg" style="width:100%" />
            <div class="text">
                KARA AVCILIK</div>
        </div>
        <div class="mySlides fade">
            <img src="image/kamp/kampci.jpg" style="width:100%" />
            <div class="text">
                KAMPÇILIK</div>
        </div>
        <div class="mySlides fade">
            <img src="image/airsoft-aticilik/airsoft-banner.jpg" style="width:100%" />
            <div class="text">
                AİRSOFT</div>
        </div>
        <div class="mySlides fade">
            <img src="image/airsoft-aticilik/havali.jpg" style="width:100%" />
            <div class="text">
                HAVALI SPORU</div>
        </div>
        <a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next" 
            onclick="plusSlides(1)">❯</a>
    </div>
    <br />
    <table width="%100" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <img src="image/anasayfa/balikci.jpg" width="320" height="320" class="img" />
            </td>
            <td>
                <img src="image/anasayfa/avci.jpg" width="320" height="320" class="img" />
            </td>
            <td>
                <img src="image/anasayfa/kampci.jpg" width="320" height="320" class="img" />
            </td>
        </tr>
        <tr>
            <td align="center" class="anafont">
            <br />
                <a href="oltamaki.aspx" class="a">Balık Malzemeleri</a>
            </td>
            <td align="center" class="anafont">
            <br />
                <a href="tufek.aspx" class="a">Avcı Malzemeleri</a>
            </td>
            <td align="center" class="anafont">
            <br />            
                <a href="cadir.aspx" class="a">Kamp Malzemeleri</a>
            </td>
        </tr>
    </table>
    <br />
<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
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


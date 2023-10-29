<%@ Page Title="" Language="C#" MasterPageFile="~/sablonum.Master" AutoEventWireup="true" CodeBehind="anket.aspx.cs" Inherits="seyhmusaykut1747.anket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr align="center">
            <td class="anket">Üye Anketimiz</td>
        </tr>
        <tr align="center">
            <td><br />
                Hangi Tür Avcılık Yapıyorsunuz?<br />
                <asp:CheckBoxList ID="avtur" runat="server">
                    <asp:ListItem Value="1">Kara Avı</asp:ListItem>
                    <asp:ListItem Value="2">Balık Avı</asp:ListItem>
                </asp:CheckBoxList><br />
            </td>
        </tr>
        <tr align="center">
            <td>
                Kamp Yapmayı Severmisiniz?<br />
                <asp:RadioButtonList ID="kampilgi" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Evet</asp:ListItem>
                    <asp:ListItem>Hayır</asp:ListItem>
                </asp:RadioButtonList><br />
            </td>
        </tr>
        <tr align="center">
            <td>
                Airsoft veya Havalı Sporu İle İlgili Ne Kadar Bilginiz Var?<br />
                <asp:DropDownList ID="bilgi" runat="server">
                    <asp:ListItem>İyi</asp:ListItem>
                    <asp:ListItem>Kısmen</asp:ListItem>
                    <asp:ListItem>Az</asp:ListItem>
                    <asp:ListItem>Hiç</asp:ListItem>
                </asp:DropDownList><br />
            </td>
        </tr>
        <tr align="center">
            <td>
                Varsa
                Kullandığınız Silahlar Nelerdir?<br />
                <br />
                <asp:ListBox ID="silahlar" runat="server" Rows="4">
                    <asp:ListItem>Derya</asp:ListItem>
                    <asp:ListItem>Husan</asp:ListItem>
                    <asp:ListItem>Hatsan</asp:ListItem>
                    <asp:ListItem>Kral</asp:ListItem>
                    <asp:ListItem>Ata</asp:ListItem>
                    <asp:ListItem>Sarsılmaz</asp:ListItem>
                    <asp:ListItem>Huğlu</asp:ListItem>
                    <asp:ListItem>Armsan</asp:ListItem>
                    <asp:ListItem>Berette</asp:ListItem>
                    <asp:ListItem>Benellı</asp:ListItem>
                    <asp:ListItem>Brownınıg</asp:ListItem>
                    <asp:ListItem>Akdaş</asp:ListItem>
                    <asp:ListItem>Yıldız</asp:ListItem>
                    <asp:ListItem>Fabarm</asp:ListItem>
                    <asp:ListItem>Wınchester</asp:ListItem>
                    <asp:ListItem>Rizzini</asp:ListItem>
                    <asp:ListItem>Akkar</asp:ListItem>
                    <asp:ListItem>Frenchı</asp:ListItem>
                    <asp:ListItem>Stoeger</asp:ListItem>
                    <asp:ListItem>Baıkel</asp:ListItem>
                    <asp:ListItem>Bora</asp:ListItem>
                    <asp:ListItem>Arthemis</asp:ListItem>
                    <asp:ListItem>Retay</asp:ListItem>
                    <asp:ListItem>Akus</asp:ListItem>
                    <asp:ListItem>Breda</asp:ListItem>
                    <asp:ListItem>Özkalar</asp:ListItem>
                    <asp:ListItem>Remington</asp:ListItem>
                    <asp:ListItem>Trugla</asp:ListItem>
                    <asp:ListItem>Bernordelli</asp:ListItem>
                    <asp:ListItem>BBI Berelli</asp:ListItem>
                    <asp:ListItem>Marsberg</asp:ListItem>
                    <asp:ListItem>Balıklı</asp:ListItem>
                    <asp:ListItem>Hıvıs</asp:ListItem>
                    <asp:ListItem>Huğsan</asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr align="center">
            <td>
                Varsa
                Kullandığınız Olta Türü Nedir?<br />
                <asp:TextBox ID="oltalar" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td>
                Sitemize Puan Verirmisiniz?<br />
                <asp:TextBox ID="puan" runat="server"></asp:TextBox><br />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ErrorMessage="1-100 arası değer girmeniz gerekir." 
                                ControlToValidate="puan" MaximumValue="100" 
                                MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
            </td>
        </tr>
        <tr align="center">
            <td>
                
                Bizimle İletişim Kurmak İstermisiniz?<br />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Evet" 
                    oncheckedchanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
                <br />
                <asp:Panel ID="iletisimPanel" runat="server" Visible="False">
                    <asp:TextBox ID="iletisim" runat="server"></asp:TextBox>
                </asp:Panel>
            </td>
        </tr>
        <tr align="center">
            <td>
                
                <asp:Button ID="Button_Anket" runat="server" Text="Anketi Gönder" onclick="Button_Anket_Click" />
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel_Anket" runat="server" Visible="False">
                <p style="text-align:center;">Anketiniz Başarı İle Kaydedildi.</p>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

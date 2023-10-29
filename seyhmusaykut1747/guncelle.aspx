<%@ Page Title="" Language="C#" MasterPageFile="~/sablonum.Master" AutoEventWireup="true" CodeBehind="guncelle.aspx.cs" Inherits="seyhmusaykut1747.guncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    <asp:Panel ID="Panel1" runat="server">
    <table cellpadding="0" cellspacing="0" class="style2">
        <tr align="center">
            <td>
                Adınız:<br />
                <asp:TextBox ID="u_Ad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td>
                Soyadınız<br />
                <asp:TextBox ID="u_Soyad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td>
                Kullanıcı Adınız:<br />
                <asp:TextBox ID="u_KAd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td>
                E-Postanız:<br />
                <asp:TextBox ID="guncelleeposta" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td>
            Parola:<br />
                <asp:TextBox ID="u_Parola" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td>
            Memleketiniz:<br />
            <asp:DropDownList ID="u_Memleket" runat="server">
                    <asp:ListItem>Ankara</asp:ListItem>
                    <asp:ListItem>İstanbul</asp:ListItem>
                    <asp:ListItem>İzmir</asp:ListItem>
                    <asp:ListItem>Adana</asp:ListItem>
                    <asp:ListItem>Adıyaman </asp:ListItem>
                    <asp:ListItem>Afyonkarahisar</asp:ListItem>
                    <asp:ListItem>Ağrı</asp:ListItem>
                    <asp:ListItem>Aksaray</asp:ListItem>
                    <asp:ListItem>Amasya</asp:ListItem>
                    <asp:ListItem>Antalya</asp:ListItem>
                    <asp:ListItem>Ardahan</asp:ListItem>
                    <asp:ListItem>Artvin</asp:ListItem>
                    <asp:ListItem>Aydın</asp:ListItem>
                    <asp:ListItem>Balıkesir</asp:ListItem>
                    <asp:ListItem>Bartın</asp:ListItem>
                    <asp:ListItem>Batman</asp:ListItem>
                    <asp:ListItem>Bayburt</asp:ListItem>
                    <asp:ListItem>Bilecik</asp:ListItem>
                    <asp:ListItem>Bingöl</asp:ListItem>
                    <asp:ListItem>Bitlis</asp:ListItem>
                    <asp:ListItem>Bolu</asp:ListItem>
                    <asp:ListItem>Burdur</asp:ListItem>
                    <asp:ListItem>Bursa</asp:ListItem>
                    <asp:ListItem>Çanakkale</asp:ListItem>
                    <asp:ListItem>Çankırı</asp:ListItem>
                    <asp:ListItem>Çorum</asp:ListItem>
                    <asp:ListItem>Denizli</asp:ListItem>
                    <asp:ListItem>Diyarbakır</asp:ListItem>
                    <asp:ListItem>Düzce</asp:ListItem>
                    <asp:ListItem>Edirne</asp:ListItem>
                    <asp:ListItem>Elazığ</asp:ListItem>
                    <asp:ListItem>Erzincan</asp:ListItem>
                    <asp:ListItem>Erzurum</asp:ListItem>
                    <asp:ListItem>Eskişehir</asp:ListItem>
                    <asp:ListItem>Gaziantep</asp:ListItem>
                    <asp:ListItem>Giresun</asp:ListItem>
                    <asp:ListItem>Gümüşhane</asp:ListItem>
                    <asp:ListItem>Hakkari</asp:ListItem>
                    <asp:ListItem>Hatay</asp:ListItem>
                    <asp:ListItem>Iğdır</asp:ListItem>
                    <asp:ListItem>Isparta</asp:ListItem>
                    <asp:ListItem>Kahramanmaraş</asp:ListItem>
                    <asp:ListItem>Karabük</asp:ListItem>
                    <asp:ListItem>Karaman</asp:ListItem>
                    <asp:ListItem>Kars</asp:ListItem>
                    <asp:ListItem>Kastamonu</asp:ListItem>
                    <asp:ListItem>Kayseri</asp:ListItem>
                    <asp:ListItem>Kırıkkale</asp:ListItem>
                    <asp:ListItem>Kırklareli</asp:ListItem>
                    <asp:ListItem>Kırşehir</asp:ListItem>
                    <asp:ListItem>Kilis</asp:ListItem>
                    <asp:ListItem>Kocaeli</asp:ListItem>
                    <asp:ListItem>Konya</asp:ListItem>
                    <asp:ListItem>Kütahya</asp:ListItem>
                    <asp:ListItem>Malatya</asp:ListItem>
                    <asp:ListItem>Manisa</asp:ListItem>
                    <asp:ListItem>Mardin</asp:ListItem>
                    <asp:ListItem>Mersin</asp:ListItem>
                    <asp:ListItem>Muğla</asp:ListItem>
                    <asp:ListItem>Muş</asp:ListItem>
                    <asp:ListItem>Nevşehir</asp:ListItem>
                    <asp:ListItem>Niğde</asp:ListItem>
                    <asp:ListItem>Ordu</asp:ListItem>
                    <asp:ListItem>Osmaniye</asp:ListItem>
                    <asp:ListItem>Rize</asp:ListItem>
                    <asp:ListItem>Sakarya</asp:ListItem>
                    <asp:ListItem>Samsun</asp:ListItem>
                    <asp:ListItem>Siirt</asp:ListItem>
                    <asp:ListItem>Sinop</asp:ListItem>
                    <asp:ListItem>Sivas</asp:ListItem>
                    <asp:ListItem>Şanlıurfa</asp:ListItem>
                    <asp:ListItem>Şırnak</asp:ListItem>
                    <asp:ListItem>Tekirdağ</asp:ListItem>
                    <asp:ListItem>Tokat</asp:ListItem>
                    <asp:ListItem>Trabzon</asp:ListItem>
                    <asp:ListItem>Tunceli</asp:ListItem>
                    <asp:ListItem>Uşak</asp:ListItem>
                    <asp:ListItem>Van</asp:ListItem>
                    <asp:ListItem>Yalova</asp:ListItem>
                    <asp:ListItem>Yozgat</asp:ListItem>
                    <asp:ListItem>Zonguldak</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr align="center">
            <td>
            Doğum Tarihi :<br />
            <asp:DropDownList ID="u_DTarih" runat="server">
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1970</asp:ListItem>
                    <asp:ListItem>1969</asp:ListItem>
                    <asp:ListItem>1968</asp:ListItem>
                    <asp:ListItem>1967</asp:ListItem>
                    <asp:ListItem>1966</asp:ListItem>
                    <asp:ListItem>1965</asp:ListItem>
                    <asp:ListItem>1964</asp:ListItem>
                    <asp:ListItem>1963</asp:ListItem>
                    <asp:ListItem>1962</asp:ListItem>
                    <asp:ListItem>1961</asp:ListItem>
                    <asp:ListItem>1960</asp:ListItem>
                    <asp:ListItem>1959</asp:ListItem>
                    <asp:ListItem>1958</asp:ListItem>
                    <asp:ListItem>1957</asp:ListItem>
                    <asp:ListItem>1956</asp:ListItem>
                    <asp:ListItem>1955</asp:ListItem>
                    <asp:ListItem>1954</asp:ListItem>
                    <asp:ListItem>1953</asp:ListItem>
                    <asp:ListItem>1952</asp:ListItem>
                    <asp:ListItem>1951</asp:ListItem>
                    <asp:ListItem>1950</asp:ListItem>
                    <asp:ListItem>1949</asp:ListItem>
                    <asp:ListItem>1948</asp:ListItem>
                    <asp:ListItem>1947</asp:ListItem>
                    <asp:ListItem>1946</asp:ListItem>
                    <asp:ListItem>1945</asp:ListItem>
                    <asp:ListItem>1944</asp:ListItem>
                    <asp:ListItem>1943</asp:ListItem>
                    <asp:ListItem>1942</asp:ListItem>
                    <asp:ListItem>1941</asp:ListItem>
                    <asp:ListItem>1940</asp:ListItem>
                    <asp:ListItem>1939</asp:ListItem>
                    <asp:ListItem>1938</asp:ListItem>
                    <asp:ListItem>1937</asp:ListItem>
                    <asp:ListItem>1936</asp:ListItem>
                    <asp:ListItem>1935</asp:ListItem>
                    <asp:ListItem>1934</asp:ListItem>
                    <asp:ListItem>1933</asp:ListItem>
                    <asp:ListItem>1932</asp:ListItem>
                    <asp:ListItem>1931</asp:ListItem>
                    <asp:ListItem>1930</asp:ListItem>
                    <asp:ListItem>1929</asp:ListItem>
                    <asp:ListItem>1928</asp:ListItem>
                    <asp:ListItem>1927</asp:ListItem>
                    <asp:ListItem>1926</asp:ListItem>
                    <asp:ListItem>1925</asp:ListItem>
                    <asp:ListItem>1924</asp:ListItem>
                    <asp:ListItem>1923</asp:ListItem>
                    <asp:ListItem>1922</asp:ListItem>
                    <asp:ListItem>1921</asp:ListItem>
                    <asp:ListItem>1920</asp:ListItem>
                    <asp:ListItem>1919</asp:ListItem>
                    <asp:ListItem>1918</asp:ListItem>
                    <asp:ListItem>1917</asp:ListItem>
                    <asp:ListItem>1916</asp:ListItem>
                    <asp:ListItem>1915</asp:ListItem>
                    <asp:ListItem>1914</asp:ListItem>
                    <asp:ListItem>1913</asp:ListItem>
                    <asp:ListItem>1912</asp:ListItem>
                    <asp:ListItem>1911</asp:ListItem>
                    <asp:ListItem>1910</asp:ListItem>
                    <asp:ListItem>1909</asp:ListItem>
                    <asp:ListItem>1908</asp:ListItem>
                    <asp:ListItem>1907</asp:ListItem>
                    <asp:ListItem>1906</asp:ListItem>
                    <asp:ListItem>1905</asp:ListItem>
                    <asp:ListItem>1904</asp:ListItem>
                    <asp:ListItem>1903</asp:ListItem>
                    <asp:ListItem>1902</asp:ListItem>
                    <asp:ListItem>1901</asp:ListItem>
                    <asp:ListItem>1900</asp:ListItem>
                </asp:DropDownList>            
            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="Button1" runat="server" Text="Güncelle" 
                    onclick="Button1_Click" />  
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Sil" 
                    onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
    <p style="text-align:center;">Başarılı</p>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Visible="False">
    <p style="text-align:center;">Silme İşlemi Başarılı</p>
    </asp:Panel>
</asp:Content>

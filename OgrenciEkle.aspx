<%@ Page Title="" Language="C#" MasterPageFile="~/OTSv1.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="ASPNet.OTS.v1.OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphdContent" runat="server">
    <link href="Styles/ogrenciekle.css" rel="stylesheet" />

    <div class="ekle">
        <asp:Table ID="tbleOgrenci" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Öğrenci ID: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="lbelOgrID" runat="server" Text="" Enabled="false"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Öğrenci No: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tboxOgrNo" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="Öğrenci Adı: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tboxAd" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="Öğrenci Soyadı: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tboxOgrSoyad" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label5" runat="server" Text="Sınıfı: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlsSinif" runat="server" OnSelectedIndexChanged="ddlsSinif_SelectedIndexChanged">
                        <asp:ListItem Value="1">A</asp:ListItem>
                        <asp:ListItem Value="2">B</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="4">D</asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow VerticalAlign="Top">
                <asp:TableCell>
                    <asp:Label ID="Label6" runat="server" Text="Doğum Tarihi: "></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Calendar ID="calrDT" runat="server" OnSelectionChanged="calrDT_SelectionChanged" BorderStyle="Solid" DayHeaderStyle-BorderStyle="Ridge" BackColor="White" BorderColor="Black" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                        <DayHeaderStyle BorderStyle="Ridge" Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt"></DayHeaderStyle>
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>

                <asp:TableCell>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Cinsiyet:"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <br />
                    <asp:RadioButtonList ID="rbtlCinsiyet" runat="server" OnSelectedIndexChanged="rbtlCinsiyet_SelectedIndexChanged">
                        <asp:ListItem Value="E">Erkek</asp:ListItem>
                        <asp:ListItem Value="K">Kadın</asp:ListItem>
                        <asp:ListItem Value="X">Belirtmek İstemiyor</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                &nbsp;
            </asp:TableCell>
                <asp:TableCell>
                    <asp:Button ID="btonKayit" UseSubmitBehavior="False" runat="server" Text="Ekle" OnClick="btonKayit_Click" />
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <asp:TextBox ID="txttarih" Visible="false" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtsinif" Visible="false" runat="server"></asp:TextBox>
    </div>
</asp:Content>


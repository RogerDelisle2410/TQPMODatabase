<%@ Page Title="Menu Principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmMenuPrincipal.aspx.cs" Inherits="TQPMODatabase.FrmMenuPrincipal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>

    <div class="column" style="background-color: white; width: 25%;"></div>
    <div class="column" style="width: 50%; height: auto;">
        <div class="container" style="width: 100%; background-color: lightgray;">

            <div class="row" style="background-color: #6F3198;">
                <div class="AllHeader col-lg-2" style="display: inline-block; height: 50px;">
                    <img class="theImg2" src="/Images/TelusLogo.jpg">
                </div>
                <label id="label1" class="AllHeader col-lg-10" style="display: inline-block; height: 50px;">
                </label>
            </div> 

            <div class="row">
                <div class="header2 col-lg-2">
                    <asp:Button runat="server" CssClass="button1"
                        OnClientClick="javascript:window.close(), window.open('FrmPMOSection.aspx', '_self');   return false" />
                </div>
                <div class="header2 col-lg-10 ">
                    <label id="label2" class="headerTitle2" style=""></label>
                </div>
            </div>

            <div class="row">
                <div class="header2 col-lg-2">
                    <asp:Button runat="server" CssClass="button1"
                        OnClientClick="javascript:window.close(), window.open('FrmRapportMenu.aspx', '_self');   return false" />
                </div>
                <div class="header2 col-lg-10">
                    <label id="label3" class="headerTitle2" style=""></label>
                </div>
            </div>

            <div class="row">
                <div class="header2 col-lg-2">
                    <asp:Button runat="server" CssClass="button1"
                        OnClientClick="javascript:window.close(), window.open('FrmRechJalon.aspx', '_self');  return false" />
                </div>
                <div class="header2 col-lg-10">
                    <label id="label4" class="headerTitle2"></label>
                </div>
            </div>

            <div class="row">
                <div class="header2 col-lg-2">
                    <asp:Button runat="server" CssClass="button1"
                        OnClientClick="javascript:window.close(), window.open('FrmPersoSettings.aspx', '_self');   return false" />
                </div>
                <div class="header2 col-lg-10">
                    <label id="label5" class="headerTitle2"></label>
                </div>
            </div>

            <div class="row">
                <div class="header2 col-lg-2">
                    <asp:Button runat="server" CssClass="button1"
                        OnClientClick="javascript:window.close(), window.open('FrmPFCMenu.aspx', '_self');   return false" />
                </div>
                <div class="header2 col-lg-10">
                    <label id="label6" class="headerTitle2" style=""></label>
                </div>
            </div>

            <div class="row">
                <div class="header2 col-lg-2">
                    <asp:Button runat="server" CssClass="button1"
                        OnClientClick="javascript:window.close(), window.open('FrmAdminSection.aspx', '_self');   return false" />
                </div>
                <div class="header2 col-lg-10">
                    <label id="label7" class="headerTitle2" style="">Admin</label>
                </div>
            </div>

            <div class="row">
                <div class="header3  col-lg-12" style="text-align: center;">

                    <div class="headerTitle3">
                        <label id="label8">&nbsp;&nbsp;</label>
                        <div class="headerTitle2"><%=MinDeDateMaj%></div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="header5  col-lg-10">
                    <label id="label9" style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                    </label>
                    <label id="label10" class="AllHeader  col-lg-2" style="align-content: flex-start; padding-top: 10px; float: right;"></label>


                </div>
                <div class="header5"  style="padding-top:7px;">
                    <asp:LinkButton class="AllHeader" runat="server" OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false   " ><img class="theImg" src="/Images/MainMenu.jpg">
                    </asp:LinkButton>
                </div>

            </div>

            <script>  
               <%-- let language = <%=language%>;--%>
                if (<%=language%> == "1") {
                    document.getElementById('label1').innerHTML = "Menu Principal";
                    document.getElementById('label2').innerHTML = "PMO Section";
                    document.getElementById('label3').innerHTML = "Rapports";
                    document.getElementById('label4').innerHTML = "Capture Dates des Jalons";
                    document.getElementById('label5').innerHTML = "Paramètres Usager";
                    document.getElementById('label6').innerHTML = "PFC Section";
                    document.getElementById('label7').innerHTML = "Administration";
                    document.getElementById('label8').innerHTML = "Dernière Mise-à-jours:";
                    document.getElementById('label9').innerHTML = "Version:";
                    document.getElementById('label10').innerHTML = "Quitter";

                } else {
                    document.getElementById('label1').innerHTML = "Main Menu";
                    document.getElementById('label2').innerHTML = "Section PMO";
                    document.getElementById('label3').innerHTML = "Reports";
                    document.getElementById('label4').innerHTML = "Milestones Date Capture";
                    document.getElementById('label5').innerHTML = "User Parameters";
                    document.getElementById('label6').innerHTML = "Section PFC";
                    document.getElementById('label7').innerHTML = "Administration";
                    document.getElementById('label8').innerHTML = "Last Update:";
                    document.getElementById('label9').innerHTML = "Version:";
                    document.getElementById('label10').innerHTML = "Quit";
                }
            </script>


        </div>
    </div>

    <div class="column" style="background-color: white; width: 25%;">
    </div>
</asp:Content>

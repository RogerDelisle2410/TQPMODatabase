<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TQPMOAcceuil.aspx.cs" Inherits="TQPMODatabase.TQPMOAcceuil3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="metaData"></div>
    <script>   

        $(function () {
            $("#metaData").load("metaData.html");
        });

    </script>
    <style>
        .aLabel {
            font-size: 18px;
            font-weight: 100;
            text-align: center;
        }

        .column {
            /*float: left;*/
            text-align: center;
            /*font-weight: bold;*/
            /*height: 1px;*/
        }
    </style>


    <%-- <hr />--%>
    <script> 
        if (<%=language%> == "1") {
            sessionStorage.setItem("mainTitleIn", "Infrastructure Cloud - PMO Est");
        } else {
            sessionStorage.setItem("mainTitleIn", "Cloud Infrastructure - East PMO");
        }
    </script>
    <%--    <asp:Panel runat="server" Style="width:100%; text-align:center;   ">--%>

    <div class="col-lg-12" style="text-align: center; height: 35px; text-align:center;">
        <div class="col-lg-2" style="background-color: white; height: 35px; border-style:solid; border-color:transparent;"></div>

        <div class="col-lg-2" style="border-style:solid; border-color:transparent; text-align:center;">
            <asp:Button BorderStyle="none" ID="TabSectionPMO" runat="server"    CssClass="" 
                OnClick="TabSectionPMO_Click" Style="width:150px; font-weight: 100; height: 35px; background-color: white; font-size: 16px; text-align:center; " />
        </div>
        <div class="col-lg-2" style="border-style:solid; border-color:transparent; text-align:center; ">
            <asp:Button BorderStyle="none" ID="TabRapport" runat="server"   CssClass=""
                OnClick="TabRapport_Click" Style="width:150px; font-weight: 100; height: 35px; background-color: white; font-size: 16px; text-align:center; " />
        </div>
        <div class="col-lg-2" style="border-style:solid; border-color:transparent; text-align:center; ">
            <asp:Button BorderStyle="none" ID="TabSectionPFC" runat="server"  CssClass=""
                OnClick="TabSectionPFC_Click" Style="width:150px; font-weight: 100; height: 35px; background-color: white; font-size: 16px; text-align:center;" />
        </div>
        <div class="col-lg-2" style="border-style:solid; border-color:transparent; text-align:center; ">
            <asp:Button BorderStyle="none" ID="TabSectionAdmin" runat="server"   CssClass=""
                OnClick="TabSectionAdmin_Click" Style="width:150px  ; font-weight: 100; height: 35px; background-color: white; font-size: 16px;  text-align:center;" />
        </div>

        <div class="col-lg-2" style="background-color: white; height: 35px;border-style:solid; border-color:transparent; "></div>
    </div>

    <%-- </asp:Panel>--%>
    <script>   
        if (<%=language%> == "1") {
            document.getElementById('<%=TabSectionPMO.ClientID%>').value = "Section PMO";
            document.getElementById('<%=TabRapport.ClientID%>').value = "Rapport";
            document.getElementById('<%=TabSectionPFC.ClientID%>').value = "Section PFC";
            document.getElementById('<%=TabSectionAdmin.ClientID%>').value = "Section Admin";
        } else {
            document.getElementById('<%=TabSectionPMO.ClientID%>').value = "PMO Section";
            document.getElementById('<%=TabRapport.ClientID%>').value = "Report";
            document.getElementById('<%=TabSectionPFC.ClientID%>').value = "PFC Section";
            document.getElementById('<%=TabSectionAdmin.ClientID%>').value = "Admin Section";
        }
    </script>


    <%--    </div>--%>
   <%-- <asp:Button runat="server" Style="height: 20px; width: auto; font-size: 12px; float: right; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b; margin-top: 15px;"
        Text=">>>" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx'); return false" />--%>
    <asp:MultiView ID="MainView" runat="server">
        <asp:View runat="server">
            <table class="col-lg-12" style="height: auto; text-align: left;">
                <tr>
                    <td>
                        <hr />
                        <asp:Panel runat="server">
                            <div class="col-lg-1" style=""></div>

                            <div class="col-lg-6" style="text-align: left;">
                                <br />
                                <br />
                               <label class="aLabel" id="label1" onclick="javascript:window.close(), window.open('FrmAdjProfiling.aspx', '_self'); return false "></label> 
                              <%--   <label class="aLabel" id="label1" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx');"></label>--%>
                                <br />
                                <br />
                                <label class="aLabel" id="label2" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx', '_self'); return false"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label3" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx', '_self'); return false"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label4" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx', '_self'); return false"></label>
                                <br />
                                <br />
                            </div>

                            <div class="col-lg-5 " style="text-align: left;">
                                <br />
                                <br />
                                <label class="aLabel" id="label5" onclick="javascript:window.close(), window.open('FrmVariance.aspx', '_self'); return false"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label6" onclick="javascript:window.close(), window.open('FrmRechJalon.aspx', '_self'); return false"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label7"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label8"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label9"></label>
                            </div>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </asp:View>

        <asp:View runat="server">
            <table style="width: 100%; height: auto; text-align: left;">
                <tr>
                    <td>
                        <hr />
                        <asp:Panel runat="server" Style="">
                            <div class="column" style="width: 10%;"></div>
                            <div class="column" style="width: 25%; text-align: left;">
                             <%--   <br />
                                <br />--%>
                                <label id="label50" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label51" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label52" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label53" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label54" class="aLabel"></label>
                            </div>

                            <div class="column " style="width: 35%; text-align: left;">
                                <br />
                                <br />
                                <label id="label55" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label56" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label57" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label58" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label59" class="aLabel"></label>
                            </div>

                            <div class="column " style="width: 30%; text-align: left;">
                                <br />
                                <br />
                                <label id="label60" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label61" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label62" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label63" class="aLabel"></label>
                                <br />
                                <br />
                                <label id="label64" class="aLabel"></label>
                            </div>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </asp:View>



        <asp:View runat="server">
            <table class="col-lg-12" style="height: auto; text-align: left;">
                <tr>
                    <td>
                        <hr />
                        <asp:Panel CssClass="col-lg-12" Visible="true" runat="server" Style="height: auto; display: inline-block;">
                            <div class="col-lg-2"></div>
                            <div class="col-lg-10" style="text-align: center;">
                                <br />
                                <br />
                                <label class="aLabel">Future development </label>
                                <br />
                                <br />
                            </div>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </asp:View>

        <asp:View runat="server">
            <table style="width: 100%; height: auto; text-align: left;">
                <tr>
                    <td>
                        <hr />
                        <asp:Panel Visible="true" runat="server" Style="height: auto; width: 100%; display: inline-block;">
                            <div style="width: 15%; height: auto; display: inline-block;"></div>
                            <div style="width: 30%; display: inline-block;">
                                <br />
                                <br />
                                <label class="aLabel" id="label11" onclick="javascript:myFunction1()"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label12" onclick="javascript:myFunction2()"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label13" onclick="javascript:window.close(), window.open('FrmFreezePPX.aspx', '_self'); return false"></label>
                            </div>
                            <div style="width: 40%; display: inline-block;">
                                <br />
                                <br />
                                <label class="aLabel" id="label14" onclick="javascript:window.close(), window.open('FrmModJalon.aspx', '_self'); return false"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label15" onclick="javascript:window.close(), window.open('FrmParamVar.aspx', '_self'); return false"></label>
                                <br />
                                <br />
                                <label class="aLabel" id="label16" onclick="javascript:myFunction3()"></label>
                            </div>
                            <span class="popup">
                                <a id="label141" class="popuptext">
                                    <span class="aLabel" onclick="javascript:window.close(), window.open('FrmAddUser.aspx', '_self'); return false">Ajouter un nouvel Usager  

                                    </span>
                                    <br />
                                    <br />
                                    <span class="aLabel" onclick="javascript:window.close(), window.open('FrmUserList.aspx', '_self'); return false">Liste des Usagers 
                                    </span>
                                </a>
                            </span>

                            <span class="popup">
                                <a id="label142" class="popuptext">
                                    <span class="aLabel" onclick="javascript:window.close(), window.open('FrmAddUser.aspx', '_self'); return false">Add a new User 
                                    </span>
                                    <br />
                                    <br />
                                    <span class="aLabel" onclick="javascript:window.close(), window.open('FrmUserList.aspx', '_self'); return false">Users List 
                                    </span>
                                </a>
                            </span>

                            <span class="popup">
                                <a id="label143" class="popuptext">
                                    <span class="aLabel" onclick=" javascript: window.close(), window.open('FrmAddII.aspx', '_self'); return false;">Ajouter un nouvel II
                                    </span>
                                    <br />
                                    <br />
                                    <span class="aLabel" onclick="javascript:window.close(), window.open('FrmIIlist.aspx', '_self'); return false">Liste de tous les II 
                                    </span>
                                </a>
                            </span>

                            <span class="popup">
                                <a id="label144" class="popuptext">
                                    <span class="aLabel" onclick="javascript:window.close(), window.open('FrmAddII.aspx', '_self'); return false">Add a new II 
                                    </span>
                                    <br />
                                    <br />
                                    <span class="aLabel" onclick="javascript:window.close(), window.open('FrmIIlist.aspx', '_self'); return false">II List 
                                    </span>
                                </a>
                            </span>

                            <span class="popup">
                                <a id="label145" class="popuptext">
                                    <label class="aLabel">
                                        Voulez-vous désactiver la Base pour tous les PM ?
                                    </label>
                                    <br />
                                    <br />

                                    <asp:Button runat="server" Style="height: 25px; width: auto; font-size: 12px; float: left; margin-left: 40px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text="Oui" />
                                    <asp:Button runat="server" Style="height: 25px; width: auto; font-size: 12px; float: right; margin-right: 40px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text="Non" />
                                </a>
                            </span>

                            <span class="popup">
                                <a id="label146" class="popuptext">
                                    <label class="aLabel">
                                        Do you want to disable Base for all MP?
                                    </label>
                                    <br />
                                    <br />

                                    <asp:Button runat="server" Style="height: 25px; width: auto; font-size: 12px; float: left; margin-left: 40px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text="Yes" />
                                    <asp:Button runat="server" Style="height: 25px; width: auto; font-size: 12px; float: right; margin-right: 40px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text="No" />

                                </a>
                            </span>
                            <div style="width: 15%; height: 200px; display: inline-block;"></div>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
    <script> 
        function myFunction1() {
            if (<%=language%> == "1") {
                document.getElementById("label11").style.backgroundColor = "lightblue";
                document.getElementById("label12").style.backgroundColor = "white";
                var popup141 = document.getElementById("label141");
                popup141.classList.toggle("show");

                var popup143 = document.getElementById("label143");
                popup143.classList.remove("show");
                var popup145 = document.getElementById("label145");
                popup145.classList.remove("show");

            } else {
                document.getElementById("label11").style.backgroundColor = "lightblue";
                document.getElementById("label12").style.backgroundColor = "white";
                var popup142 = document.getElementById("label142");
                popup142.classList.toggle("show");

                var popup144 = document.getElementById("label144");
                popup144.classList.remove("show");
                var popup146 = document.getElementById("label146");
                popup146.classList.remove("show");
            }
        }

        function myFunction2() {
            if (<%=language%> == "1") {
                document.getElementById("label11").style.backgroundColor = "white";
                document.getElementById("label12").style.backgroundColor = "lightblue";
                var popup143 = document.getElementById("label143");
                popup143.classList.toggle("show");

                var popup141 = document.getElementById("label141");
                popup141.classList.remove("show");
                var popup145 = document.getElementById("label145");
                popup145.classList.remove("show");
            } else {
                document.getElementById("label11").style.backgroundColor = "white";
                document.getElementById("label12").style.backgroundColor = "lightblue";
                var popup144 = document.getElementById("label144");
                popup144.classList.toggle("show");

                var popup142 = document.getElementById("label142");
                popup142.classList.remove("show");
                var popup146 = document.getElementById("label146");
                popup146.classList.remove("show");
            }
        }

        function myFunction3() {
            if (<%=language%> == "1") {
                var popup144 = document.getElementById("label145");
                popup144.classList.toggle("show");

                var popup141 = document.getElementById("label141");
                popup141.classList.remove("show");
                var popup143 = document.getElementById("label143");
                popup143.classList.remove("show");

            } else {
                var popup145 = document.getElementById("label146");
                popup145.classList.toggle("show");

                var popup142 = document.getElementById("label142");
                popup142.classList.remove("show");
                var popup144 = document.getElementById("label144");
                popup144.classList.remove("show");
            }
        }
    </script>
    <script>    
        if (<%=language%> == "1") {
            document.getElementById('label1').innerHTML = "(Ajustement de profil) Afficher tous mes projets";
            document.getElementById('label2').innerHTML = "(Ajustement de profil) Afficher mes projets avec budget > 85% ";
            document.getElementById('label3').innerHTML = "(Ajustement de profil) Afficher mes projets avec budget > 100% ";
            document.getElementById('label4').innerHTML = "(Ajustement de profil) Projets avec budget null et ACTUAL > 0 $";
            document.getElementById('label5').innerHTML = "Explication des variances";
            document.getElementById('label6').innerHTML = "Remplir les dates des jalons de mes projets";
            document.getElementById('label7').innerHTML = "Analyser les données de mes projets";
            document.getElementById('label8').innerHTML = "Exclure des projets de ma liste de projet a afficher";
            document.getElementById('label9').innerHTML = "Recherche Avancée";
        } else {
            document.getElementById('label1').innerHTML = "(Profile adjustment) Show all my projects";
            document.getElementById('label2').innerHTML = "(Profile adjustment) Show my projects with budget > 85%";
            document.getElementById('label3').innerHTML = "(Profile adjustment) Show my projects with budget > 100%";
            document.getElementById('label4').innerHTML = "(Profile adjustment) Projects with null budget and ACTUAL > 0 $";
            document.getElementById('label5').innerHTML = "Explanation of variances";
            document.getElementById('label6').innerHTML = "Fill in the dates of the milestones of my projects";
            document.getElementById('label7').innerHTML = "Analyze my project data";
            document.getElementById('label8').innerHTML = "Exclude projects from my project list to display";
            document.getElementById('label9').innerHTML = "Advanced search";
        }
    </script>

    <script>   
        if (<%=language%> == "1") {
            document.getElementById('label11').innerHTML = "Gestion des usagers";
            document.getElementById('label12').innerHTML = "Gestion des II";
            document.getElementById('label13').innerHTML = "Figer le PPX";
            document.getElementById('label14').innerHTML = "Modifier les dates des jalons";
            document.getElementById('label15').innerHTML = "Paramétrage des seuils de variances";
            document.getElementById('label16').innerHTML = "Désactiver la base pour maintenance";

        } else {
            document.getElementById('label11').innerHTML = "User management ";
            document.getElementById('label12').innerHTML = "Management of II";
            document.getElementById('label13').innerHTML = "Freeze the PPX";
            document.getElementById('label14').innerHTML = "Edit milestone dates";
            document.getElementById('label15').innerHTML = "Setting variance thresholds";
            document.getElementById('label16').innerHTML = "Disable the database for maintenance";
        }
    </script>

    <script>    
        if (<%=language%> == "1") {
            document.getElementById('label51').innerHTML = "Hardstop";
            document.getElementById('label52').innerHTML = "Écarts (PMO Est)";
            document.getElementById('label53').innerHTML = "Écarts PM";
            document.getElementById('label54').innerHTML = "Écarts Projet PLUG";
            document.getElementById('label55').innerHTML = "V0_Dernier enregistrement";

            document.getElementById('label56').innerHTML = "Rapport MES dernières sauvegardes";
            document.getElementById('label57').innerHTML = "SAP V0 (Tous)";
            document.getElementById('label58').innerHTML = "Projets par PM";
            document.getElementById('label59').innerHTML = "Tous les projets PM";
            document.getElementById('label60').innerHTML = "Dates de lancement";

            document.getElementById('label61').innerHTML = "Rapport dernière sauv. Falcon RF";
            document.getElementById('label62').innerHTML = "V0 Mes/Ma dernière sauvegarde";
            document.getElementById('label63').innerHTML = "V0 Mes/Ma dernière sauvegarde +1";
            document.getElementById('label64').innerHTML = "V0 dernière sauvegarde JF-Bernier";
            document.getElementById('label65').innerHTML = "Rapport de lancement";
        } else {
            document.getElementById('label51').innerHTML = "Hardstop";
            document.getElementById('label52').innerHTML = "Variances (East PMO)";
            document.getElementById('label53').innerHTML = "PM Variances";
            document.getElementById('label54').innerHTML = "Variances Projet PLUG";
            document.getElementById('label55').innerHTML = "V0_Last Save";

            document.getElementById('label56').innerHTML = "Rapport MES Last_Save";
            document.getElementById('label57').innerHTML = "SAP V0 (All)";
            document.getElementById('label58').innerHTML = "Projects by PM";
            document.getElementById('label59').innerHTML = "All projects PM";
            document.getElementById('label60').innerHTML = "Kick-Off Dates Jalons";

            document.getElementById('label61').innerHTML = "Rapport Last_Save_Falcon_RF";
            document.getElementById('label62').innerHTML = "V0_Mes/My Last Save";
            document.getElementById('label63').innerHTML = "V0_Mes/My Last Save +1";
            document.getElementById('label64').innerHTML = "V0_Last Save JF-Bernier";
            document.getElementById('label65').innerHTML = "Milestones Kick-off report";
        }
    </script>
    <%-- <div class="column" style="background-color: white; width: 15%; height: auto; border-style: solid; border-color: transparent"></div>--%>

    <style>
        /* Popup container - can be anything you want */
        .popup {
            position: absolute;
            display: inline-block;
            cursor: pointer;
            width: 200px;
            height: auto;
            /*padding-left: 500px;
            margin-bottom: 300px;*/
            top: 75%;
            left: 35%;
            /*text-align:center;
            align-content:center;*/
            /*word-wrap: break-word;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;*/
        }

            /* The actual popup */
            .popup .popuptext {
                text-align: center;
                align-content: center;
                visibility: hidden;
                width: 260px;
                height: 110px;
                border-style: solid;
                border-color: black;
                /*word-wrap: break-word;*/
                /*background-color:  black;*/
                color: black;
                border-radius: 6px;
                padding: 8px 0;
                 position: absolute; 
                z-index: 1;
                background-color: white;
                /*bottom: 15%;
                left: 40%;*/
                /*margin-left: -80px;*/
            }


            /* Toggle this class - hide and show the popup */
            .popup .show {
                visibility: visible;
                -webkit-animation: fadeIn 1s;
                animation: fadeIn 1s;
            }


        /* Add animation (fade in the popup) */
        @-webkit-keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        HTML {
            overflow: hidden;
        }
    </style>


</asp:Content>

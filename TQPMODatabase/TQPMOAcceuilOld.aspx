<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TQPMOAcceuilOld.aspx.cs" Inherits="TQPMODatabase.TQPMOAcceuil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>

    <script>   

        $(function () {
            $("#metaData").load("metaData.html");
        });

    </script>
    <style>
        label {
            font-size: 18px;
            font-weight: 100;
        }

        .column {
            float: left;
            text-align: center;
            font-weight: bold;
            height: 1px;
        }
    </style>

</head>
<body>
    <form runat="server">
       <%-- <div style="background-position: center; overflow: hidden;">
            <asp:Image ID="Image1" src="Images/PMOLogo2.jpg" runat="server" ToolTip="userimage"
                Width="100%" Height="200px" />
            <div class="col-lg-12 ">
                <asp:Label ID="Label10" Text=" " runat="server" CssClass="lblposition" />
            </div>

        </div>
        <style>
            .lblposition {
                color: black;
                /*  text-align: center;*/
                position: absolute;
                left: 30%;
                top: 25px;
                height: 21px;
                width: auto;
                font-size: 30px;
                font-weight: bold;
            }
        </style>
        <script>   
            if (<%=language%> == "1") {
                document.getElementById('Label10').innerHTML = "Infrastructure Cloud - Est PMO";

            } else {
                document.getElementById('Label10').innerHTML = "Cloud Infrastructure - PMO East";
            }
        </script>--%>
        <div class="row ">
            <hr />
            <div class="column" style="background-color: white; width: 14%; height: 25px;"></div>
            <div class="column" style="height: auto; width: 70%;">
                <table style="width: 100%; height: auto;">
                    <tr>
                        <td>
                            <asp:Panel runat="server" Style="">
                                <div class="btn-group" style="">
                                    <br />
                                    <asp:Button BorderStyle="none" ID="TabSectionPMO" CssClass="" runat="server"
                                        OnClick="TabSectionPMO_Click" Style="width: 15%; background-color: white; font-size: 16px;" />
                                    &nbsp;  &nbsp; &nbsp;  &nbsp; 
                                    <asp:Button BorderStyle="none" ID="TabRapport" CssClass="" runat="server"
                                        OnClick="TabRapport_Click" Style="width: 15%; background-color: white; font-size: 16px;" />
                                    &nbsp;  &nbsp; &nbsp;  &nbsp; 
                                    <asp:Button BorderStyle="none" ID="TabSectionPFC" CssClass="" runat="server"
                                        OnClick="TabSectionPFC_Click" Style="width: 15%; background-color: white; font-size: 16px;" />
                                    &nbsp;  &nbsp; &nbsp;  &nbsp; 
                                <asp:Button BorderStyle="none" ID="TabSectionAdmin" CssClass="" runat="server"
                                    OnClick="TabSectionAdmin_Click" Style="width: 15%; background-color: white; font-size: 16px;" />
                                </div>
                            </asp:Panel>

                            <br />
                        </td>
                    </tr>
                </table>
            </div>
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
            <asp:RadioButtonList CssClass=" " ID="RadioButtonList1" runat="server" Font-Size="10px" AutoPostBack="True" RepeatColumns="2" TextAlign="Right" Style="display: inline-block;"
                OnSelectedIndexChanged="ChangeLanguage">
                <asp:ListItem Value="1" Text="Français" />
                <asp:ListItem Value="2" Text="English" />
            </asp:RadioButtonList>

        </div>
        <asp:Button runat="server" Style="height: 20px; width: auto; font-size: 12px; float: left; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b; margin-top: 15px;"
            Text=">>>" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx'); return false" />
        <asp:MultiView ID="MainView" runat="server">
            <asp:View runat="server">
                <table style="width: 100%; height: auto; text-align: left;">
                    <tr>
                        <td>
                            <hr />
                            <asp:Panel runat="server">
                                <div class="column" style="width: 15%;"></div>

                                <div class="column" style="width: 45%; text-align: left;">
                                    <br />
                                    <br />
                                    <label id="label1" onclick="javascript:window.close(), window.open('FrmAdjProfiling.aspx');"></label>
                                    <br />
                                    <br />
                                    <label id="label2" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx');"></label>
                                    <br />
                                    <br />
                                    <label id="label3" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx');"></label>
                                    <br />
                                    <br />
                                    <label id="label4" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx');"></label>
                                    <br />
                                    <br />
                                </div>

                                <div class="column " style="width: 35%; text-align: left;">
                                    <br />
                                    <br />
                                    <label id="label5" onclick="javascript:window.close(), window.open('FrmVariance.aspx');"></label>
                                    <br />
                                    <br />
                                    <label id="label6" onclick="javascript:window.close(), window.open('FrmRechJalon.aspx');"></label>
                                    <br />
                                    <br />
                                    <label id="label7"></label>
                                    <br />
                                    <br />
                                    <label id="label8"></label>
                                    <br />
                                    <br />
                                    <label id="label9"></label>
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
                                    <br />
                                    <br />
                                    <label>Hardstop</label>
                                    <br />
                                    <br />
                                    <label>Variances (East PMO)</label>
                                    <br />
                                    <br />
                                    <label>PM Variances</label>
                                    <br />
                                    <br />
                                    <label>Variances Projet PLUG</label>
                                    <br />
                                    <br />
                                    <label>V0_Last Save</label>
                                </div>

                                <div class="column " style="width: 35%; text-align: left;">
                                    <br />
                                    <br />
                                    <label>Rapport Mes Last_Save</label>
                                    <br />
                                    <br />
                                    <label>SAP V0 (Toutes / All</label>
                                    <br />
                                    <br />
                                    <label>Projets par PM / Projects by PM</label>
                                    <br />
                                    <br />
                                    <label>All projects PM</label>
                                    <br />
                                    <br />
                                    <label>Kick-Off Dates Jalons / Milestones Kick-off report</label>
                                </div>

                                <div class="column " style="width: 30%; text-align: left;">
                                    <br />
                                    <br />
                                    <label>Rapport Last_Save_Falcon_RF</label>
                                    <br />
                                    <br />
                                    <label>V0_Mes/My Last Save</label>
                                    <br />
                                    <br />
                                    <label>V0_Mes/My Last Save +1</label>
                                    <br />
                                    <br />
                                    <label>V0_Last Save JF-Bernier</label>
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
                            <asp:Panel Visible="true" runat="server" Style="height: auto; width: auto; display: inline-block;">
                                <div class="col-lg-8" style="padding-left: 150px;">
                                    <br />
                                    <br />
                                    <label>Future development </label>
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
                                    <label id="label11" onclick="javascript:myFunction1()"></label>
                                    <br />
                                    <br />
                                    <label id="label12" onclick="javascript:myFunction2()"></label>
                                    <br />
                                    <br />
                                    <label id="label13" onclick="javascript:window.close(), window.open('FrmFreezePPX.aspx');"></label>
                                </div>
                                <div style="width: 40%; display: inline-block;">
                                    <br />
                                    <br />
                                    <label id="label14" onclick="javascript:window.close(), window.open('FrmModJalon.aspx');"></label>
                                    <br />
                                    <br />
                                    <label id="label15" onclick="javascript:window.close(), window.open('FrmParamVar.aspx');"></label>
                                    <br />
                                    <br />
                                    <label id="label16" onclick="javascript:myFunction3()"></label>
                                </div>
                                <span class="popup">
                                    <a id="label141" class="popuptext">
                                        <label onclick="javascript:window.close(), window.open('FrmNewUser.aspx'); return false">
                                            Ajouter un nouvel Usager 
                                        </label>
                                        <br />
                                        <br />
                                        <label onclick="javascript:window.close(), window.open('FrmUserList.aspx'); return false">
                                            Liste des Usagers 
                                        </label>
                                    </a>
                                </span>

                                <span class="popup">
                                    <a id="label142" class="popuptext">
                                        <label onclick="javascript:window.close(), window.open('FrmNewUser.aspx'); return false">
                                            Add a new User 
                                        </label>
                                        <br />
                                        <br />
                                        <label onclick="javascript:window.close(), window.open('FrmUserList.aspx'); return false">
                                            Users List 
                                        </label>
                                    </a>
                                </span>

                                <span class="popup">
                                    <a id="label143" class="popuptext">
                                        <label onclick=" javascript: window.close(), window.open('FrmAjoutII.aspx'); return false;">
                                            Ajouter un nouvel II
                                        </label>
                                        <br />
                                        <br />
                                        <label onclick="javascript:window.close(), window.open('FrmIIlist.aspx'); return false">
                                            Liste de tous les II 
                                        </label>
                                    </a>
                                </span>

                                <span class="popup">
                                    <a id="label144" class="popuptext">
                                        <label onclick="javascript:window.close(), window.open('FrmAjoutII.aspx'); return false">
                                            Add a new II 
                                        </label>
                                        <br />
                                        <br />
                                        <label onclick="javascript:window.close(), window.open('FrmIIlist.aspx'); return false">
                                            II List 
                                        </label>
                                    </a>
                                </span>

                                <span class="popup">
                                    <a id="label145" class="popuptext">
                                        <label>
                                            Voulez-vous désactiver la Base pour tous les PM ?
                                        </label>
                                        <br />
                                        <br />
                                         
                                            <asp:Button runat="server" Style="height: 20px; width: auto; font-size: 12px; float: left; margin-left: 40px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text="Oui" />
                                            <asp:Button runat="server" Style="height: 20px; width: auto; font-size: 12px; float: right; margin-right: 40px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text="Non" />
                                       
                                    </a>

                                </span>

                                <span class="popup">
                                    <a id="label146" class="popuptext">
                                        <label>
                                            Do you want to disable Base for all MP?
                                        </label>
                                        <br />
                                        <br />
                                        
                                            <asp:Button runat="server" Style="height: 20px; width: auto; font-size: 12px; float: left; margin-left: 40px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text="Yes" />
                                            <asp:Button runat="server" Style="height: 20px; width: auto; font-size: 12px; float: right; margin-right: 40px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text="No" />
                                        
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
                    var popup1 = document.getElementById("label141");
                    popup1.classList.toggle("show");
                    var popup3 = document.getElementById("label143");
                    popup3.classList.remove("show");
                } else {
                    document.getElementById("label11").style.backgroundColor = "lightblue";
                    document.getElementById("label12").style.backgroundColor = "white";
                    var popup2 = document.getElementById("label142");
                    popup2.classList.toggle("show");
                    var popup4 = document.getElementById("label144");
                    popup4.classList.remove("show");
                }
            }

            function myFunction2() {
                if (<%=language%> == "1") {
                    document.getElementById("label11").style.backgroundColor = "white";
                    document.getElementById("label12").style.backgroundColor = "lightblue";
                    var popup3 = document.getElementById("label143");
                    popup3.classList.toggle("show");
                    var popup1 = document.getElementById("label141");
                    popup1.classList.remove("show");
                } else {
                    document.getElementById("label11").style.backgroundColor = "white";
                    document.getElementById("label12").style.backgroundColor = "lightblue";
                    var popup2 = document.getElementById("label142");
                    popup2.classList.remove("show");
                    var popup4 = document.getElementById("label144");
                    popup4.classList.toggle("show");
                }
            }

            function myFunction3() {
                if (<%=language%> == "1") {
                    var popup4 = document.getElementById("label145");
                    popup4.classList.toggle("show");
                    var popup5 = document.getElementById("label146");
                    popup6.classList.remove("show");

                } else {
                    var popup4 = document.getElementById("label145");
                    popup4.classList.remove("show");
                    var popup5 = document.getElementById("label146");
                    popup5.classList.toggle("show");

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
        <%-- <script> 
            function myFunction1() {
                if (<%=language%> == "1") {
                    document.getElementById("label11").style.backgroundColor = "lightblue";
                    document.getElementById("label12").style.backgroundColor = "white";
                    var popup1 = document.getElementById("label141");
                    popup1.classList.toggle("show");
                    var popup3 = document.getElementById("label143");
                    popup3.classList.remove("show");
                } else {
                    document.getElementById("label11").style.backgroundColor = "lightblue";
                    document.getElementById("label12").style.backgroundColor = "white";
                    var popup2 = document.getElementById("label142");
                    popup2.classList.toggle("show");
                    var popup4 = document.getElementById("label144");
                    popup4.classList.remove("show");
                }
            }

            function myFunction2() {
                if (<%=language%> == "1") {
                    document.getElementById("label11").style.backgroundColor = "white";
                    document.getElementById("label12").style.backgroundColor = "lightblue";
                    var popup3 = document.getElementById("label143");
                    popup3.classList.toggle("show");
                    var popup1 = document.getElementById("label141");
                    popup1.classList.remove("show");
                } else {
                    document.getElementById("label11").style.backgroundColor = "white";
                    document.getElementById("label12").style.backgroundColor = "lightblue";
                    var popup2 = document.getElementById("label142");
                    popup2.classList.remove("show");
                    var popup4 = document.getElementById("label144");
                    popup4.classList.toggle("show");
                }
            }
        </script>--%>
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
        <div class="column" style="background-color: white; width: 15%; height: auto;">
        </div>

        <style>
            /* Popup container - can be anything you want */
            .popup {
                position: absolute;
                display: inline-block;
                cursor: pointer;
                width: 200px;
                height:  70px;
                /*padding-left: 500px;
            margin-bottom: 300px;*/
                top: 55%;
                left: 35%;
                word-wrap: break-word;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

                /* The actual popup */
                .popup .popuptext {
                    visibility: hidden;
                    width: 260px;
                    height: 70px;
                    border-style: solid;
                    border-color: black;
                    word-wrap: break-word;
                    /*background-color:  black;*/
                    color: black;
                    text-align: center;
                    border-radius: 6px;
                    padding: 8px 0;
                    position: absolute;
                    z-index: 1;
                    background-color: white;
                    /*bottom: 15%;
                left: 40%;*/
                    margin-left: -80px;
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
    </form>
</body>
</html>

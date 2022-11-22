<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 
        window.onload = function () {
           
          <%--  var radioButtonlist = document.getElementsByName("<%=RadioButtonList1.ClientID%>");
            alert(radioButtonlist[1].checked);--%>

            if (<%=language%> == "1") {
                radioButtonlist[0].checked = true;
            } else {
                radioButtonlist[1].checked = true;
            }

        }
        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>
    <%-- <div class="jumbotron">
    </div>--%>

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

    <div class="row ">
        <div class="column" style="background-color: white; width: 14%; height: 25px;"></div>
        <div class="column" style="height: auto; width: 70%;">
            <table style="width: 100%; height: auto;">
                <tr>
                    <td>
                        <asp:Panel runat="server" Style="">

                            <div class="btn-group" style="">

                                <asp:Button Text="Section PMO" BorderStyle="none" ID="TabSAPVO" CssClass="" runat="server"
                                    OnClick="TabSAPVO_Click" Style="width: 15%; background-color: white; font-size: 16px;" />
                                &nbsp;  &nbsp; &nbsp;  &nbsp;
                                <asp:Button Text="Rapport" BorderStyle="none" ID="TabACTUAL" CssClass="" runat="server"
                                    OnClick="TabACTUAL_Click" Style="width: 15%; background-color: white; font-size: 16px;" />
                                &nbsp;  &nbsp; &nbsp;  &nbsp;
                                <asp:Button Text="Section PFC" BorderStyle="none" ID="TabCMTS" CssClass="" runat="server"
                                    OnClick="TabCMTS_Click" Style="width: 15%; background-color: white; font-size: 16px;" />
                                &nbsp;  &nbsp; &nbsp;  &nbsp;
                                <asp:Button Text="Section Admin" BorderStyle="none" ID="TabACTCMTS" CssClass="" runat="server"
                                    OnClick="TabACTCMTS_Click" Style="width: 15%; background-color: white; font-size: 16px;" />




                            </div>

                        </asp:Panel>
                    </td>
                </tr>
            </table>

        </div>
        <%-- <div class="column" style="background-color: white; width: 15%; height: auto;">--%>
        <asp:RadioButtonList CssClass=" " ID="RadioButtonList1" runat="server" Font-Size="10px" AutoPostBack="True" RepeatColumns="2" TextAlign="Right" OnSelectedIndexChanged="ChangeLanguage" Style="display: inline-block; float: right;">
            <asp:ListItem Value="1" Text="Français" />
            <asp:ListItem Value="2" Text="English" />
        </asp:RadioButtonList>
        <%-- </div> --%>
    </div>
    <script>
        let language = Value;
    </script>
    <asp:MultiView ID="MainView" runat="server">
        <asp:View runat="server">
            <asp:Panel class=" " Visible="true" runat="server" Style="height: auto; width: auto; display: inline-block;">

                <div class="col-lg-8" style="padding-left: 150px;">
                    <br />
                    <br />
                    <label id="label1" onclick="javascript:window.close(), window.open('FrmAdjProfiling.aspx', '_self'); return false" ></label>
                    <br />
                    <br />
                    <label id="label2" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx', '_self'); return false);"></label>
                    <br />
                    <br />
                    <label id="label3" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx', '_self'); return false);"></label>
                    <br />
                    <br />
                    <label id="label4" onclick="javascript:window.close(), window.open('FrmRechProjet.aspx', '_self'); return false);"></label>
                    <br />
                    <br />
                    <label id="label5" onclick="javascript:window.close(), window.open('FrmVariance.aspx', '_self'); return false);"></label>
                    <br />
                    <br />
                    <label id="label6" onclick="javascript:window.close(), window.open('FrmRechJalon.aspx', '_self'); return false);"></label>
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

                <script>    
                    if (<%=language%> == "1") {

                        document.getElementById('label1').innerHTML = "(Ajustement de profil) Afficher tous mes projets";
                        document.getElementById('label2').innerHTML = "(Ajustement de profil) Afficher mes projets avec budget > 85% ";
                        document.getElementById('label3').innerHTML = "(Ajustement de profil) Afficher mes projets avec budget > 100% ";
                        document.getElementById('label4').innerHTML = "(Ajustement de profil) Projets avec budget null et ACTUAL > 0 $";
                        document.getElementById('label5').innerHTML = "Explication des variances";
                        document.getElementById('label6').innerHTML = "Renseigner les dates des jalons de mes projets";
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
            </asp:Panel>
        </asp:View>

        <asp:View runat="server">
            <%-- <asp:Panel class=" " Visible="true" runat="server" Style="height: auto; width: auto; display: inline-block;">--%>

            <%-- <div class=" " style="width: 15%; padding-left: 150px; --%>

            <table style="width: 100%; height: auto; text-align: left;">
                <tr>
                    <td>
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

                            <div class="column " style="width: 25%; text-align: left;">
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

                            <div class="column " style="width: 25%; text-align: left;">
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
            <asp:Panel class=" " Visible="true" runat="server" Style="height: auto; width: auto; display: inline-block;">
                <div class="col-lg-8" style="padding-left: 150px;">
                    <br />
                    <br />
                    <label>Future development </label>
                    <br />
                    <br />
                </div>
            </asp:Panel>
        </asp:View>

        <asp:View runat="server">
            <asp:Panel Visible="true" runat="server" Style="height: auto; width: 100%; display: inline-block;">
                <div style="width: 15%; height: 200px; display: inline-block;"></div>
                <div style="width: 60%; display: inline-block;">
                    <br />
                    <br />
                    <label id="label11" onclick="javascript:myFunction1()"></label>
                    <br />
                    <br />
                    <label id="label12" onclick="javascript:myFunction2()"></label>
                    <br />
                    <br />
                    <label id="label13"></label>
                    <br />
                    <br />
                    <label id="label14"></label>
                    <br />
                    <br />
                    <label id="label15"></label>
                    <br />
                    <br />
                    <label id="label16"></label>
                    <br />
                    <br />


                    <span class="popup">
                        <a id="label141" class="popuptext">
                            <label onclick="javascript:window.close(), window.open('FrmAddUser.aspx', '_self' );  return false">
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
                            <label onclick="javascript:window.close(), window.open('FrmAddUser.aspx'); return false">
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
                            <label onclick=" javascript: window.close(), window.open('FrmAddII.aspx'); return false;">
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
                            <label onclick="javascript:window.close(), window.open('FrmAddUser.aspx'); return false">
                                Add a new II 
                            </label>
                            <br />
                            <br />
                            <label onclick="javascript:window.close(), window.open('FrmUserList.aspx'); return false">
                                II List 
                            </label>
                        </a>
                    </span>


                    <script> 
                        function myFunction1() {
                            if (<%=language%> == "1") {
                                var popup1 = document.getElementById("label141");
                                popup1.classList.toggle("show");
                                var popup3 = document.getElementById("label143");
                                popup3.classList.remove("show");
                            } else {
                                var popup2 = document.getElementById("label142");
                                popup2.classList.toggle("show");
                                var popup4 = document.getElementById("label144");
                                popup4.classList.remove("show");
                            }
                        }

                        function myFunction2() {
                            if (<%=language%> == "1") {
                                var popup3 = document.getElementById("label143");
                                popup3.classList.toggle("show");
                                var popup1 = document.getElementById("label141");
                                popup1.classList.remove("show");
                            } else {
                                var popup2 = document.getElementById("label142");
                                popup2.classList.remove("show");
                                var popup4 = document.getElementById("label144");
                                popup4.classList.toggle("show");
                            }
                        }
                    </script>
                    <script>   
                        if (<%=language%> == "1") {
                            //document.getElementById('linklabel11').innerHTML = "Gestion des usagers";
                            //document.getElementById('linklabel12').innerHTML = "Gestion des II";
                            document.getElementById('label11').innerHTML = "Gestion des usagers";
                            document.getElementById('label12').innerHTML = "Gestion des II";
                            document.getElementById('label13').innerHTML = "Figer le PPX";
                            document.getElementById('label14').innerHTML = "Modifier les dates des jalons";
                            document.getElementById('label15').innerHTML = "Paramétrage des seuils de variances";
                            document.getElementById('label16').innerHTML = "Désactiver la base pour maintenance";

                        } else {

                            //document.getElementById('linklabel11').innerHTML = "User management ";
                            //document.getElementById('linklabel12').innerHTML = "Management of II";
                            document.getElementById('label11').innerHTML = "User management ";
                            document.getElementById('label12').innerHTML = "Management of II";
                            document.getElementById('label13').innerHTML = "Freeze the PPX";
                            document.getElementById('label14').innerHTML = "Edit milestone dates";
                            document.getElementById('label15').innerHTML = "Setting variance thresholds";
                            document.getElementById('label16').innerHTML = "Disable the database for maintenance";
                        }
                    </script>
                </div>
                <div style="width: 15%; height: 200px; display: inline-block;"></div>
            </asp:Panel>
        </asp:View>

    </asp:MultiView>

    <div class="column" style="background-color: white; width: 15%; height: auto;">
    </div>

    <style>
        /* Popup container - can be anything you want */
        .popup {
            position: absolute;
            display: inline-block;
            cursor: pointer;
            width: 200px;
            height: 100px;
            /*padding-left: 500px;
            margin-bottom: 300px;*/
            top: 50%;
            left: 50%;
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
                height: 100px;
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
                /*bottom: 15%;
                left: 40%;*/
                margin-left: -80px;
            }


            /* Popup arrow */
            /*.popup .popuptext::after {
                    content: "";
                    position: absolute;
                    top: 100%;
                    left: 50%;
                    margin-left: -5px;
                    border-width: 5px;
                    border-style: solid;
                    border-color: red;
                    border-color: #555 transparent transparent transparent;
                }*/


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
    </style>
</asp:Content>

<%@ Page Title="Admin Section" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmAdminSection.aspx.cs" Inherits="TQPMODatabase.FrmAdminSection" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script>  

        $(function () {
          
            $("#metaData").load("metaData.html");
        });


    </script>
    <div class="column" style="background-color: white; width: 25%;"></div>
    <div class="column" style="width: 50%; height: auto;">
        <div class="container" style="width: 100%; background-color: lightgray;" enableviewstate="true">

            <div class="row" style="background-color: #6F3198;">
                <div class="AllHeader  col-lg-2" style="display: inline-block; height: 50px;">
                    <img class="theImg2" src="/Images/TelusLogo.jpg">
                </div>
                <div class="AllHeader  col-lg-9" style="display: inline-block; height: 50px;">
                    <label id="label1">
                    </label>
                </div>

                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx', '_self'); return false ">
                     <img  class="theImg" src="/Images/MainMenu.jpg"  >
                    </asp:LinkButton>
                </div>
            </div>
            <div class="menu">
                <a></a>
            </div>
            <div class="main">
                <div class=" row">
                    <div class="header2 col-lg-1">
                        <asp:Button ID="btnfrmUserPermission" runat="server" CssClass="button1"
                            OnClientClick="javascript:window.close(), window.open('FrmUserPermission.aspx', '_self');   return false" />
                    </div>
                    <div class="header2 col-lg-11 ">
                        <label id="label2" class="headerTitle2"></label>
                    </div>
                </div>

                <div class="row " runat="server" id="divPop3" visible="true">
                    <div class="header2 col-lg-1">
                        <asp:Button ID="BtnFigerPPO" runat="server" CssClass="button1" />
                    </div>
                    <div class="header2 col-lg-11">
                        <label id="label8" class="headerTitle2"></label>
                    </div>
                </div> 

                <div class="  col-lg-12" runat="server" id="divPop4" visible="false">
                    <div class="col-lg-0"></div>
                    <div class="col-lg-12" style="text-align: center;">
                        <asp:Panel runat="server" Style="max-height: 250px; overflow: auto; width: auto; border-style: solid; border-color: black; margin: 1px 1px 1px 1px;">
                            <div id="label11"></div>
                            <script>
                               
                                if (<%=language%> == "1") {
                                    document.getElementById('label11').innerHTML = "Veuillez préciser les informations suivante:";
                                } else {
                                    document.getElementById('label11').innerHTML = "Please specify the following information:";
                                }
                            </script>
                            <br />
                            <div class="col-lg-12" runat="server" id="divPop5" visible="false" style="align-content: center;">

                                <div id="label12"></div>
                                <script>
                                   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label12').innerHTML = "S’agit - il de figer le PPO ?";
                                    } else {
                                        document.getElementById('label12').innerHTML = "Is it to freeze the PPO?";
                                    }
                                </script>
                                <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                    <asp:Button ID="BtnFigerPPOYes" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="" CssClass="button1" OnClientClick="BtnFigerPPOYes_Click" />
                                </div>
                                <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                    <asp:Button ID="BtnFigerPPONo" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="     " CssClass="button1" OnClientClick="BtnFigerPPONo_Click" />
                                </div>
                                <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                    <asp:Button ID="BtnCancel1" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="    " CssClass="button1"
                                        OnClientClick="BtnCancel_Click" />
                                </div>
                                <br />
                            </div>

                            <div class=" " runat="server" id="divPop6" visible="false" style="align-content: center;"> 
                                <div id="label13"></div>
                                <script>
                                   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label13').innerHTML = "Est-ce que les données du PPO datent de 2021? ";
                                    } else {
                                        document.getElementById('label13').innerHTML = "Is the PPO data from 2021?";
                                    }
                                </script>
                                <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                    <asp:Button ID="BtnFigerPPOYesYes" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="" CssClass="button1" OnClientClick="BtnFigerPPOYesYes_Click" />
                                </div>
                                <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                    <asp:Button ID="BtnFigerPPONoNo" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text=" " CssClass="button1" OnClientClick="BtnFigerPPONoNo_Click" />
                                </div>
                                <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                    <asp:Button ID="BtnCancel2" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text=" " CssClass="button1"
                                        OnClientClick="BtnCancel_Click" />
                                </div>
                                <br /> 
                            </div>

                            <div>
                                <div class="col-lg-12 " runat="server" id="divPop7" visible="false" style="align-content: center;">
                                    <div></div>
                                    <div id="label9"></div>
                                    <div id="label10"></div>
                                    <script>
                                      
                                        if (<%=language%> == "1") {
                                            document.getElementById('label9').innerHTML = "Veuillez indiquer la date réelle à laquelle le PPX a été figé ";
                                            document.getElementById('label10').innerHTML = "(Date peut être dans le passé)";

                                        } else {
                                            document.getElementById('label9').innerHTML = "Please indicate the actual date the PPX was frozen";
                                            document.getElementById('label10').innerHTML = "(Date may be in the past)";
                                        }
                                    </script>
                                    <div class="col-lg-2 "></div>
                                    <div class="col-lg-6 ">

                                        <asp:TextBox runat="server" Type="date" Style=""></asp:TextBox>
                                        <asp:Button ID="BtnSave" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text=" " CssClass="button1"
                                            OnClientClick="BtnSave_Click" />
                                        <asp:Button ID="BtnCancel3" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text=" " CssClass="button1"
                                            OnClientClick="BtnCancel_Click" /> 
                                    </div>
                                    <div class="col-lg-2 "></div> 
                                </div>
                            </div>
                            &nbsp;
                        </asp:Panel>
                    </div>
                    <div class="col-lg-0"></div>
                </div>

                <div class="row">
                    <div class="header2 col-lg-1">
                        <asp:Button runat="server" CssClass="button1"
                            OnClientClick="javascript:window.close(), window.open('FrmAddII.aspx', '_self');   return false" />
                    </div>
                    <div class="header2 col-lg-11">
                        <label id="label3" class="headerTitle2"></label>
                    </div>
                </div>

                <div class="row">
                    <div class="header2 col-lg-1">
                        <asp:Button runat="server" CssClass="button1"
                            OnClientClick="javascript:window.close(), window.open('FrmModJalon.aspx', '_self');   return false" />
                    </div>
                    <div class="header2 col-lg-11">
                        <label id="label4" class="headerTitle2"></label>
                    </div>
                </div>

                <div class="row">
                    <div class="header2 col-lg-1">
                        <asp:Button runat="server" CssClass="button1"
                            OnClientClick="javascript:window.close(), window.open('FrmParamVar.aspx', '_self');   return false" />
                    </div>
                    <div class="header2 col-lg-11">
                        <label id="label5" class="headerTitle2"></label>
                    </div>
                </div>

                <div class="row">
                    <div class="header2 col-lg-1">
                        <asp:Button runat="server" CssClass="button1"
                            OnClientClick="javascript:window.close(), window.open('FrmAjoutRSUB.aspx', '_self');   return false" />
                    </div>
                    <div class="header2 col-lg-11">
                        <label id="label6" class="headerTitle2"></label>
                    </div>
                </div>
                <div class="row" id="divPop1" runat="server" visible="true">
                    <div class="header2 col-lg-1">
                        <asp:Button ID="BtnDesactiveBase" runat="server" CssClass="button1"
                            OnClientClick="BtnDesactiveBase_Click" />
                    </div>
                    <div class="header2 col-lg-11">
                        <label id="label7" class="headerTitle2"></label>
                    </div>
                </div> 

                <script>  
                   
                    if (<%=language%> == "1") {
                        document.getElementById('label1').innerHTML = "Menu Administration";
                        document.getElementById('label2').innerHTML = "Permission Usager";
                        document.getElementById('label8').innerHTML = "Figer PPX";
                        document.getElementById('label3').innerHTML = "Ajout II";
                        document.getElementById('label4').innerHTML = "Modifier les dates des Jalons";
                        document.getElementById('label5').innerHTML = "Paramètrage des seuils des Variances";
                        document.getElementById('label6').innerHTML = "Rajout d'info sur RSUB manuel";
                        document.getElementById('label7').innerHTML = "Désactiver la Base pour Maintenance";

                    } else {
                        document.getElementById('label1').innerHTML = "Admin Menu";
                        document.getElementById('label2').innerHTML = "User Permission";
                        document.getElementById('label8').innerHTML = "Freeze PPX";
                        document.getElementById('label3').innerHTML = "Addition II";
                        document.getElementById('label4').innerHTML = "Edit Milestone Dates";
                        document.getElementById('label5').innerHTML = "Variance threshold settings";
                        document.getElementById('label6').innerHTML = "Added info on manual RSUB";
                        document.getElementById('label7').innerHTML = "Disable Base for Maintenance"; 
                    }
                </script> 

                <div class="row col-lg-12" runat="server" id="divPop2" visible="false">
                    <div class="row col-lg-3"></div>
                    <div class="row col-lg-6" style="text-align: center;">
                        <asp:Panel runat="server" Style="height: 60px; width: 350px; border-style: solid; border-color: black; margin: 1px 1px 1px 1px;">
                            <div id="label14"></div>
                            <script>   
                              
                                if (<%=language%> == "1") {
                                    document.getElementById('label14').innerHTML = "Voulez-vous désactiver la Base pour tous les PM ?";
                                } else {
                                    document.getElementById('label14').innerHTML = "Do you want to disable Base for all MP?";
                                }
                            </script>
                            <div class="row" style="height: 25px; align-content: center;">
                                <div class="col-lg-3">
                                </div>
                                <div class="col-lg-3" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                    <asp:Button ID="BtnDesactiveBaseYes" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text=" " CssClass="button1" OnClientClick="BtnDesactiveBaseYes_Click" />
                                </div>
                                <div class="col-lg-3" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                    <asp:Button ID="BtnDesactiveBaseNo" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text=" " CssClass="button1" OnClientClick="BtnDesactiveBaseNo_Click" />
                                </div>
                                <div class="col-lg-3">
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                    <div class="row col-lg-3"></div>
                </div>
            </div>
            <div class="row"> 
                <div class="header5  col-lg-10">
                    <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                        Version:
                    </div>
                    <div class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;"></div>
                </div>
                <div class="AllHeader  col-lg-2" style="align-content: flex-start;">
                </div> 
            </div>
        </div>
    </div> 

    <div class="column" style="background-color: white; width: 25%;">
    </div>
</asp:Content>

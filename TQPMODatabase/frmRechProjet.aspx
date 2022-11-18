<%@ Page Title="Recherche Projet" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmRechProjet.aspx.cs" Inherits="TQPMODatabase.FrmRechProjet" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>
    <div class="column" style="background-color: white; width: 10%;"></div>
    <div class="column" style="width: 80%; height: auto; background-color: lightgray;">

         <script> 
             if (<%=language%> == "1") {
                 sessionStorage.setItem("mainTitleIn", "Recherche Projet");
             } else {
                 sessionStorage.setItem("mainTitleIn", "Project Search");
             }
        </script> 

        <div class="container" style="background-color: lightgray; width: 100%;">

           <%-- <div class="row " style="background-color: #6F3198;">
                <div class="AllHeader col-lg-2" style="display: inline-block; height: 50px;">
                    <img class="theImg2" src="/Images/TelusLogo.jpg">
                </div>
                <div class="AllHeader col-lg-9" style="display: inline-block; height: 50px;">
                    <label id="label1"></label>
                    <script>   
                        if (<%=language%> == "1") {
                            document.getElementById('label1').innerHTML = "Recherche Projet";
                        } else {
                            document.getElementById('label1').innerHTML = "Project Search";
                        }
                    </script>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx');">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                </div>
            </div>--%>


            <div class="col-lg-12" style="height: 5px;"></div>
            <div class="col-lg-12" style="height: 25px;">
                <asp:Button ID="button2" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; float: right; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                    Text=" " OnClientClick="this.disabled=true;"/>
                <script>   
                    if (<%=language%> == "1") {
                        document.getElementById('MainContent_button2').value = "Rechercher";
                    } else {
                        document.getElementById('MainContent_button2').value = "Search";
                    }
                </script>
                <input style="height: 20px; width: 124px; display: inline-block; float: right;" />
            </div>
            <div class="col-lg-12" style="height: 15px;"></div>

            <div class="row">
                <div class="form-group   col-lg-7" style="">
                    <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                        <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
                            <div class="row" style="">
                                <label class=" " style="float: left;">POSID-WBS (II)</label>

                                <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                    runat="server" AutoGenerateColumns="false" Style="height: 10px; width: 100%; border-style: solid; border-color: black;" ShowHeader="false">
                                    <Columns>

                                        <asp:BoundField DataField="Name" ItemStyle-Width="250" />
                                        <asp:BoundField DataField="Country" ItemStyle-Width="350" />
                                    </Columns>
                                </asp:GridView>

                            </div>
                            <asp:Button ID="button3" runat="server" Style="height: 20px; width: auto; display: inline-block; font-size: 12px; float: left; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                                Text="    " OnClientClick="this.disabled=true;"/>
                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('MainContent_button3').value = "Sélectionner";
                                } else {
                                    document.getElementById('MainContent_button3').value = "Select";
                                }
                            </script>
                        </div>
                    </div>
                </div>
                <div class="form-group   col-lg-5" style="margin-top: 0;">
                    <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                        <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
                            <div class="row" style="">
                                <label id="label2" style="float: left;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label2').innerHTML = "Chef de projet";
                                    } else {
                                        document.getElementById('label2').innerHTML = "Project Manager";
                                    }
                                </script>

                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Enabled="true" Text="Select Manager" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="Roger Delisle" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="JF Lepage" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="JF Bernier" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Fabio Reis" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Dany Cameron" Value="2"></asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <asp:Button ID="button4" runat="server" Style="height: 20px; width: auto; display: inline-block; font-size: 12px; float: left; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                                Text="  " OnClientClick="this.disabled=true;"/>
                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('MainContent_button4').value = "Sélectionner";
                                } else {
                                    document.getElementById('MainContent_button4').value = "Select";
                                }
                            </script>
                        </div>
                    </div>
                </div>
            </div>


            <div class="form-group col-lg-12" style="">
                <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                    <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
                        <div class="row">
                            <label id="label3" style="float: left;">Project FMO / PMO : 1210 projets trouvés / Project found </label>
                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('label3').innerHTML = "Project FMO trouvés";
                                } else {
                                    document.getElementById('label3').innerHTML = "Project PMO found";
                                }
                            </script>
                        </div>
                        <div class="row">

                            <asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                runat="server" AutoGenerateColumns="false" Style="height: 10px; width: 100%; border-style: solid; border-color: black;" ShowHeader="false">
                                <Columns>

                                    <asp:BoundField DataField="1" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="2" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="3" ItemStyle-Width="250" />
                                    <asp:BoundField DataField="4" ItemStyle-Width="250" />
                                    <asp:BoundField DataField="5" ItemStyle-Width="250" />
                                </Columns>
                            </asp:GridView>


                        </div>
                        <asp:Button ID="button5" runat="server" Style="height: 20px; width: auto; display: inline-block; font-size: 12px; float: left; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                            Text="   " OnClientClick="this.disabled=true;"/>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('MainContent_button5').value = "Tout Sélectionner";
                            } else {
                                document.getElementById('MainContent_button5').value = "Select All";
                            }
                        </script>
                    </div>
                </div>
            </div>

            <div class="form-group col-lg-12" style="">
                <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                    <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
                        <div class="form-group">
                            <div class="col-lg-3" style="">
                                <asp:Button ID="button6" runat="server" Style="display: block; height: 50px; width: 200px; padding: 0 20px; margin: 0; font-size: smaller"
                                    Text="   " OnClientClick="this.disabled=true;"/>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button6').value = "Télécharger la sélection";
                                    } else {
                                        document.getElementById('MainContent_button6').value = "Download selected items";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-3" style="">
                                <asp:Button ID="button7" runat="server" Style="display: block; height: 50px; width: 200px; padding: 0 20px; margin: 0; font-size: smaller"
                                    Text="   " OnClientClick="this.disabled=true;" />
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button7').value = "Ajouter à la Sélection en cours";
                                    } else {
                                        document.getElementById('MainContent_button7').value = "Add to selection";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-3" style="">
                                <asp:Button ID="button8" runat="server" Style="display: block; height: 50px; width: 200px; padding: 0 20px; margin: 0; font-size: smaller"
                                    Text="   " OnClientClick="this.disabled=true;"/>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button8').value = "Ré-initialiser tous les Filtres";
                                    } else {
                                        document.getElementById('MainContent_button8').value = "Reset filters";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-3" style="">
                                <asp:Button ID="button9" runat="server" Style="display: block; height: 50px; width: 200px; padding: 0 20px; margin: 0; font-size: smaller"
                                    Text="   " OnClientClick="this.disabled=true;"/>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button9').value = "Télécharger mes projets filtrés";
                                    } else {
                                        document.getElementById('MainContent_button9').value = "Download my filteblack projects";
                                    }
                                </script>
                            </div>
                        </div>
                        <div class="col-lg-12" style="height: 10px;"></div>
                        <div class="form-group">
                            <div class="col-lg-3" style="height: 50px;">
                                <asp:Button ID="button10" runat="server" Style="display: block; height: 50px; width: 200px; padding: 0 20px; margin: 0; font-size: smaller"
                                    Text="  " OnClientClick="this.disabled=true;"/>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button10').value = "Télécharger tous mes projets";
                                    } else {
                                        document.getElementById('MainContent_button10').value = "Download all my projects";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-3" style="height: 50px;">
                                <asp:Button ID="button11" runat="server" Style="display: block; height: 50px; width: 200px; padding: 0 20px; margin: 0; font-size: smaller"
                                    Text="  " OnClientClick="this.disabled=true;"/>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button11').value = "Afficher la Sélection en cours";
                                    } else {
                                        document.getElementById('MainContent_button11').value = "Display current selection";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-3" style="height: 50px;">
                                <asp:Button ID="button12" runat="server" Style="display: block; height: 50px; width: 200px; padding: 0 20px; margin: 0; font-size: smaller"
                                    Text="  " OnClientClick="this.disabled=true;"/>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button12').value = "Info sur la Sélection en cours";
                                    } else {
                                        document.getElementById('MainContent_button12').value = "Info on current selection";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-3" style="height: 50px;">
                                <asp:Button ID="button13" runat="server" Style="display: block; height: 50px; width: 200px; padding: 0 20px; margin: 0; font-size: smaller"
                                    Text="  " OnClientClick="this.disabled=true;"/>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button13').value = "Télécharger mes autres  projets";
                                    } else {
                                        document.getElementById('MainContent_button13').value = "Download my other projects";
                                    }
                                </script>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="form-group col-lg-12" style="">
                <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                    <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">

                        <div class="row">
                            <label id="label4" style="float: left;"></label>
                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('label4').innerHTML = "Projets à Risque";
                                } else {
                                    document.getElementById('label4').innerHTML = "At risk Projects";
                                }
                            </script>
                        </div>
                        <div class="row col-lg-12">
                            <div class="col-lg-1"></div>
                            <div class="col-lg-3">
                                <asp:Button runat="server" Style="height: 25px; width: 200px; padding: 0 20px; margin: 10px; font-size: smaller"
                                    Text="Budget > 85%" OnClientClick="this.disabled=true;"/>
                            </div>
                            <div class="col-lg-3">
                                <asp:Button runat="server" Style="display: block; height: 25px; width: 200px; padding: 0 20px; margin: 10px; font-size: smaller"
                                    Text="Budget > 100%" OnClientClick="this.disabled=true;"/>
                            </div>
                            <div class="col-lg-3">
                                <asp:Button ID="button14" runat="server" Style="display: block; height: 25px; width: 200px; padding: 0 20px; margin: 10px; font-size: smaller"
                                    Text="" OnClientClick="this.disabled=true;"/>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('MainContent_button14').value = "Budget nul/réel > 0";
                                    } else {
                                        document.getElementById('MainContent_button14').value = "Budget Null/Actual > 0";
                                    }
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group col-lg-12" style="">
                <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                    <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">

                        <div class="row">
                            <label class=" " style="float: left;">Informations:</label>
                        </div>
                        <div class="row">
                            <asp:Panel runat="server" Style="height: 50px; width: auto; border-style: solid; border-color: black;"></asp:Panel>
                            <asp:ListView runat="server" Style="height: 50px; width: 100px; border-style: solid; border-color: black;"></asp:ListView>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group col-lg-12" style="">
                <div class="row">
                    <label id="label5" style="float: left;"></label>
                    <script>   
                        if (<%=language%> == "1") {
                            document.getElementById('label5').innerHTML = "Début du Téléchargement";
                        } else {
                            document.getElementById('label5').innerHTML = "Start of download";
                        }
                    </script>
                </div>
                <div class="row">
                    <asp:Button ID="button1" runat="server" Style="display: block; height: 25px; width: auto; max-width: 400px; font-size: smaller; float: left;"
                        Text="  "
                        OnClientClick="javascript:window.close(), window.open('FrmAdjProfiling.aspx'); return false" />
                </div>
                <script>   
                    if (<%=language%> == "1") {
                        document.getElementById('MainContent_button1').value = "Aller à la page Ajustement de Profil";
                    } else {
                        document.getElementById('MainContent_button1').value = "Go to Profil Adjusment Section";
                    }
                </script>
            </div>
        </div>

        <div class="header5  col-lg-12">
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

    <div class="column" style="background-color: white; width: 10%;"></div>
</asp:Content>

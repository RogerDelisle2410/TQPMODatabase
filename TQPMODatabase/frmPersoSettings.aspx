<%@ Page Title="Perso Setting" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmPersoSettings.aspx.cs" Inherits="TQPMODatabase.FrmPersoSettings" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>
    <div class="row ">
        <div class="column" style="background-color: white; width: 23%;"></div>
        <div class="column" style="width: 54%;">
            <div class="container" style="width: 100%; background-color: lightgray;">

                <div class="row" style="background-color: #6F3198;">
                    <div class="AllHeader  col-lg-2" style="display: inline-block; height: 50px;">
                        <img class="theImg2" src="/Images/TelusLogo.jpg">
                    </div>
                    <div class="AllHeader  col-lg-9" style="display: inline-block; height: 50px;">
                        <label id="label1"></label>
                    </div>
                    <script>   
                        if (<%=language%> == "1") {
                            document.getElementById('label1').innerHTML = "Paramètres Usager";
                        } else {
                            document.getElementById('label1').innerHTML = "User Parameters";
                        }
                    </script>

                    <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                        <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx', '_self'); return false  ">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                        </asp:LinkButton>
                    </div>
                </div>


                <div class="row">
                    <div class="  col-lg-12">
                        <label id="label2" class="frmRechJalon"></label>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('label2').innerHTML = "Choisir Autres Couleurs pour la Base BD PMO";
                            } else {
                                document.getElementById('label2').innerHTML = "Choose Other Colors for the BD PMO Base";
                            }
                        </script>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-12" style="height: 25px;">
                        <label class="frmRechJalon" style="display: inline-block; float: left;">&nbsp;&nbsp;</label>
                          <script>   
                              if (<%=language%> == "1") {
                                  document.getElementById('label2').innerHTML = "Thème:";
                              } else {
                                  document.getElementById('label2').innerHTML = "Theme";
                              }
                        </script>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropDown" Style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: left;">
                            <asp:ListItem Text="Rouge/Red" Enabled="true" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Bleu/Blue" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Jaune/Yellow" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Brun/Brown" Value="4"></asp:ListItem>

                        </asp:DropDownList>


                    </div>
                </div>

                <div class="form-group">
                    <div class="  col-lg-12" style="">
                        <label id="label3" class="frmRechJalon">  </label>
                         <script>   
                             if (<%=language%> == "1") {
                                 document.getElementById('label3').innerHTML = "Exclure des Projets de la liste des Projets à télécharger";
                             } else {
                                 document.getElementById('label3').innerHTML = "Exclude Projects from the list of Projects to download";
                             }
                        </script>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-12" style="height: 25px;">
                        <p class="frmRechJalon" style="display: inline-block;">PM:&nbsp;&nbsp;</p>
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropDown" Style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: left;">
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-2" style="">
                        <p></p>
                    </div>
                    <div class="col-lg-10" style="">
                        <label id="label4" class="frmRechJalon">   </label>
                         <script>   
                             if (<%=language%> == "1") {
                                 document.getElementById('label4').innerHTML = "Liste Complète des Projets";
                             } else {
                                 document.getElementById('label4').innerHTML = "Full List of Projects";
                             }
                        </script>
                    </div>
                </div>



                <div class="form-group">
                    <div class="col-lg-2" style="">
                        <asp:Button runat="server" Style="" CssClass="button1"></asp:Button>
                    </div>
                    <div class="col-lg-10" style="">
                        <asp:Panel ID="Panel1" runat="server" Visible="True" Style="width: 100%; display: inline-block; height: 75px; border-style: solid; border-color: black;">
                            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                        </asp:Panel>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-2" style="">
                    </div>
                    <div class="col-lg-10" style="">
                        <label id="label5" class="frmRechJalon">  </label>
                         <script>   
                             if (<%=language%> == "1") {
                                 document.getElementById('label5').innerHTML = "Liste des Projets Exclus";
                             } else {
                                 document.getElementById('label5').innerHTML = " List of Excluded Projects";
                             }
                        </script>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-12" style=""></div>
                </div>

                <div class="form-group">
                    <div class="col-lg-2" style="">
                        <asp:Button runat="server" Style="" CssClass="button1"></asp:Button>
                    </div>
                    <div class="col-lg-10" style="">
                        <asp:Panel ID="Panel100" runat="server" Visible="True" Style="width: 100%; display: inline-block; height: 75px; border-style: solid; border-color: black;">
                            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                        </asp:Panel>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-12" style="">
                        <asp:Button id="button1" runat="server" Style="float: right; height: 25px; width: 124px; display: inline-block; font-size: 12px; margin-right: 10px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                            Text="Sauvegader / Save" />
                    </div>
                     <script>   
                         if (<%=language%> == "1") {
                             document.getElementById('MainContent_button1').value = "Sauvegarder";
                         } else {
                             document.getElementById('MainContent_button1').value = "Save";
                         }
                </script>
                </div>

                <div class="form-group">
                    <div class="col-lg-12" style=""></div>
                </div>

                <div class="row">
                    <div class="header5  col-lg-10">
                        <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                            Version:
                        </div>
                        <label id="label6" class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;">   </label>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('label5').label6 = "Quitter";
                            } else {
                                document.getElementById('label5').label6 = "Quit";
                            }
                        </script>
                    </div>
                    <div class="AllHeader  col-lg-2" style="align-content: flex-start; padding-top: 10px;">
                        <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false   ">
        <img class="theImg" src="/Images/MainMenu.jpg">
                        </asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
        <div class="column" style="background-color: white; width: 23%;">
        </div>
    </div>
</asp:Content>

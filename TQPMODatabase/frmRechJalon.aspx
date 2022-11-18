<%@ Page Title="Form Capture" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmRechJalon.aspx.cs" Inherits="TQPMODatabase.FrmRechJalon" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>
    <div class="column " style="background-color: white; width: 23%;"></div>
    <div class="column  " style="width: 54%;">
        <div class="container" style="background-color: lightgray; width: 100%;">

            <div class="row" style="background-color: #6F3198;">
                <div class="AllHeader col-lg-2" style="display: inline-block; height: 50px;">
                    <img class="theImg2" src="/Images/TelusLogo.jpg">
                </div>
                <div class="AllHeader col-lg-7" style="display: inline-block; height: 50px;">
                    <label id="label1" class=" ">   </label>
                </div>
                <script>   
                    if (<%=language%> == "1") {
                        document.getElementById('label1').innerHTML = "Trouver un Projet";
                    } else {
                        document.getElementById('label1').innerHTML = "Find a Project";
                    }
                </script>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton runat="server" Style="" CssClass="">
                        <img class="theImg"  src="/Images/myList.jpg" >
                    </asp:LinkButton>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton runat="server" Style="" CssClass="">
                        <img class="theImg"  src="/Images/save.jpg" >
                    </asp:LinkButton>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx');">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                </div>
            </div>



            <div class="form-group   col-lg-7" style="">
                <div class="panel panel-default">
                    <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
                        <div>
                            <label id="label2" class="frmRechJalon" style="display: inline-block;"></label>
                        </div>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('label2').innerHTML = "Entrer le Code du Projet";
                            } else {
                                document.getElementById('label2').innerHTML = "Enter Project Code";
                            }
                        </script>
                        <input style="height: 20px; width: 124px; display: inline-block; float: left;" />
                        <asp:Button ID="button1" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; float: left; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                            Text=" " />
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('MainContent_button1').value = "Rechercher";
                            } else {
                                document.getElementById('MainContent_button1').value = "Find";
                            }
                        </script>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <div class="frmRechJalon" style="display: inline-block;">Projet</div>
                    <input style="display: inline-block;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">KO</p>
                    <input style="display: inline-block;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">APPD</p>
                    <input style="display: inline-block;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">DAPP</p>
                    <input style="display: inline-block;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">RTB</p>
                    <input style="display: inline-block;" />
                </div>
            </div>

            <div class="form-group">

                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">FCOM</p>
                    <input style="display: inline-block;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-7" style="height: 25px;">
                </div>
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">RFS PL</p>
                    <input style="display: inline-block;" />
                </div>
            </div>

            <div class="form-group   col-lg-7" style="">
                <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                    <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
                        <div class="frmRechJalon" style="">Notes</div>
                        <br />
                        <input class="frmRechJalon" id="TextArea1" style="float: left; height: auto;" />
                        <div>
                            <label id="label3" class="frmRechJalon" style=""></label>
                        </div>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('label3').innerHTML = "Type(s) d'équipement sauvegardé";
                            } else {
                                document.getElementById('label3').innerHTML = "Saved Equipment Type(s)";
                            }
                        </script>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">RFS PM</p>
                    <input style="display: inline-block;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">Nb. Reseau / Network</p>
                    <input style="width: 50px; display: inline-block;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">Build Type</p>
                    <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: right;">
                        <asp:ListItem Enabled="true" Text="Selectioner" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Inside" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Outside" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Inside/Outside" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">Technologie</p>
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: right;">
                        <asp:ListItem Enabled="true" Text="Selectioner" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="IP" Enabled="true" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Transport" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Access" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Réseau Ext." Value="4"></asp:ListItem>
                        <asp:ListItem Text="Mobilité" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Power" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Voix" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Coeur du réseau" Value="8"></asp:ListItem>
                        <asp:ListItem Text="Autre..." Value="9"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-5" style="height: 25px;">
                    <p class="frmRechJalon" style="display: inline-block;">MAT / HW</p>
                    <input style="margin-top:10px;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-12" style="height: 1px;">
                </div>

                <div class="  col-lg-5" style="">
                </div>

                <div class="form-group   col-lg-7" style="">
                    <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                        <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
                            <input class="row col-lg-2" style="margin: 2px; width: 25px; height: 25px; overflow: hidden; float: left;" type="checkbox" />
                            <label id="label4" class="form-group col-lg-10" style="display: inline-block; float: left; padding-right: 5px; padding-top: 5px;"></label>

                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('label4').innerHTML = "PRE-APPD Requis";
                                } else {
                                    document.getElementById('label4').innerHTML = "PRE-APPD Required";
                                }
                            </script>

                            <div class="form-group col-lg-5" style="display: inline-block; float: left; padding-right: 5px; padding-top: 5px;">PRE-APPD</div>
                            <input class="row col-lg-7" style="margin: 2px; width: 125px; height: 25px; overflow: hidden; float: left;" type="text" />
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="header5  col-lg-10">
                    <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                        Version:
                    </div>
                    <label id="label5" class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;"></label>

                    <script>   
                        if (<%=language%> == "1") {
                            document.getElementById('label5').innerHTML = "Quitter";
                        } else {
                            document.getElementById('label5').innerHTML = "Quit";
                        }
                    </script>

                </div>
                <div class="AllHeader  col-lg-2" style="align-content: flex-start; padding-top: 10px;">
                    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx');">
        <img class="theImg" src="/Images/MainMenu.jpg">
                    </asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <div class="column col-lg-3" style="background-color: white; width: 23%;">
    </div>
</asp:Content>

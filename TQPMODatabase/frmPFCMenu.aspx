<%@ Page Title="PFC Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmPFCMenu.aspx.cs" Inherits="TQPMODatabase.FrmPFCMenu" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>

    <div class="column" style="background-color: white; width: 23%;"></div>
    <div class="column" style="width: 54%;">
        <div class="container" style="width: 100%; height: auto; background-color: lightgray;">

            <div class="row" style="background-color: #6F3198;">
                <div class="AllHeader  col-lg-2" style="display: inline-block; height: 50px;">
                    <img class="theImg2" src="/Images/TelusLogo.jpg">
                </div>
                <div class="AllHeader  col-lg-8" style="display: inline-block; height: 50px;">

                    <label id="label1"></label>

                    <script>   
                        if (<%=language%> == "1") {
                            document.getElementById('label1').innerHTML = "Menu PFC";
                        } else {
                            document.getElementById('label1').innerHTML = "PFC Menu";
                        }
                    </script>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px">
                    <asp:LinkButton runat="server" Style="" CssClass="">
                        <img class="theImg"  src="/Images/refresh.jpg" >
                    </asp:LinkButton>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx');">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                </div>
            </div>


            <div class="row"> 
                <div class="col-lg-12" style="">
                    <div class="panel panel-default" style="margin: 0 !important;">
                        <div class="panel-body" style="height: 140px; border-style: solid; border-color: black; margin-top: 0!important;">

                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-4">
                                    <label id="label4" style="float: left; padding-left: 5px; display: inline-block;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label4').innerHTML = "Année Courante";
                                        } else {
                                            document.getElementById('label4').innerHTML = "Current Year";
                                        }
                                    </script>
                                </div>
                                <div class="col-lg-2">
                                </div>
                                <div class="col-lg-3" style="text-align: center; display: inline-block;">
                                    <div class="" style="">Nbr Ajt V0</div>
                                </div>
                                <div class="col-lg-3" style="text-align: center; display: inline-block;">
                                    <div class="" style="">Nbr Resub</div>
                                </div>
                            </div>

                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-2" style="display: inline-block;">
                                    <asp:Button runat="server" Style="" CssClass="button6"></asp:Button>
                                </div>
                                <div class="col-lg-4" style="display: inline-block;">
                                    <label id="label2" class="frmRechJalon" style="float: left;"></label>

                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label2').innerHTML = "Télécharger des projets hérités";
                                        } else {
                                            document.getElementById('label2').innerHTML = "Upload Legacy Projects";
                                        }
                                    </script>

                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                            </div>
                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-2" style="display: inline-block;">
                                    <asp:Button runat="server" Style="" CssClass="button6"></asp:Button>
                                </div>
                                <div class="col-lg-4" style="display: inline-block;">
                                    <label id="label3" class="frmRechJalon" style="float: left;">Upload Simpli Projects </label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label3').innerHTML = "Télécharger des projets Simpli";
                                        } else {
                                            document.getElementById('label3').innerHTML = "Upload Simpli Projects";
                                        }
                                    </script>
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




            <div class="row">
                <div class="col-lg-12" style="">
                    <div class="panel panel-default" style="margin: 0 !important; position: relative; top: -12px">
                        <div class="panel-body" style="height: 140px; border-style: solid; border-color: black; margin-top: 0!important;">

                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-4">
                                    <label id="label11" style="float: left; padding-left: 5px; display: inline-block;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label11').innerHTML = "Année Suivante";
                                        } else {
                                            document.getElementById('label11').innerHTML = "Next Year";
                                        }
                                    </script>
                                </div>
                                <div class="col-lg-2">
                                </div>
                                <div class="col-lg-3" style="text-align: center; display: inline-block;">
                                    <div class="" style="">Nbr Ajt V0</div>
                                </div>
                                <div class="col-lg-3" style="text-align: center; display: inline-block;">
                                    <div class="" style="">Nbr Resub</div>
                                </div>
                            </div>


                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-2" style="display: inline-block;">
                                    <asp:Button runat="server" Style="" CssClass="button6"></asp:Button>
                                </div>
                                <div class="col-lg-4" style="display: inline-block;">
                                    <label id="label6" class="frmRechJalon" style="float: left;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label6').innerHTML = "Télécharger des projets hérités";
                                        } else {
                                            document.getElementById('label6').innerHTML = "Upload Legacy Projects";
                                        }
                                    </script>
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                            </div>
                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-2" style="display: inline-block;">
                                    <asp:Button runat="server" Style="" CssClass="button6"></asp:Button>
                                </div>
                                <div class="col-lg-4" style="display: inline-block;">
                                    <label id="label7" class="frmRechJalon" style="float: left;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label7').innerHTML = "Télécharger des projets Simpli";
                                        } else {
                                            document.getElementById('label7').innerHTML = "Upload Simpli Projects";
                                        }
                                    </script>
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12" style="">
                    <div class="panel panel-default" style="margin: 0 !important; position: relative; top: -22px">
                        <div class="panel-body" style="height: 140px; border-style: solid; border-color: black; margin-top: 0!important;">

                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-4">
                                    <label id="label12" style="float: left; padding-left: 5px; display: inline-block;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label12').innerHTML = "Année Précédente";
                                        } else {
                                            document.getElementById('label12').innerHTML = "Previous Year";
                                        }
                                    </script>
                                </div>
                                <div class="col-lg-2">
                                </div>
                                <div class="col-lg-3" style="text-align: center; display: inline-block;">
                                    <div class="" style="">Nbr Ajt V0</div>
                                </div>
                                <div class="col-lg-3" style="text-align: center; display: inline-block;">
                                    <div class="" style="">Nbr Resub</div>
                                </div>
                            </div>


                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-2" style="display: inline-block;">
                                    <asp:Button runat="server" Style="" CssClass="button6"></asp:Button>
                                </div>
                                <div class="col-lg-4" style="display: inline-block;">
                                    <label id="label8" class="frmRechJalon" style="float: left;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label8').innerHTML = "Télécharger des projets hérités";
                                        } else {
                                            document.getElementById('label8').innerHTML = "Upload Legacy Projects";
                                        }
                                    </script>
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                            </div>
                            <div class="row" style="position: relative; top: -12px">
                                <div class="col-lg-2" style="display: inline-block;">
                                    <asp:Button runat="server" Style="" CssClass="button6"></asp:Button>
                                </div>
                                <div class="col-lg-4" style="display: inline-block;">
                                    <label id="label10" class="frmRechJalon" style="float: left;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label10').innerHTML = "Télécharger des projets Simpli";
                                        } else {
                                            document.getElementById('label10').innerHTML = "Upload Simpli Projects";
                                        }
                                    </script>
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                                <div class="col-lg-3" style="display: inline-block;">
                                    <input type="text" style="width: 30px; height: 30px; margin: 0 auto; float: none;" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="form-group" style="position: relative; top: -18px">
            <div class="header5  col-lg-10">
                <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                    Version:
                </div>
                <label id="label13" class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;"></label>
                <script>   
                    if (<%=language%> == "1") {
                        document.getElementById('label13').innerHTML = "Quitter";
                    } else {
                        document.getElementById('label13').innerHTML = "Quit";
                    }
                </script>
            </div>
            <div class="AllHeader  col-lg-2" style="align-content: flex-start; padding-top: 10px;">
                <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx'); ">
        <img class="theImg" src="/Images/MainMenu.jpg">
                </asp:LinkButton>
            </div>
        </div>
    </div>

    <div class="column" style="background-color: white; width: 23%;">
    </div>
</asp:Content>


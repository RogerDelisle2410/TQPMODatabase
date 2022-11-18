<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmModJalon.aspx.cs" Inherits="TQPMODatabase.FrmModJalon" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script>   
        $(function () {
            $("#metaData").load("metaData.html");
            $("#viewtitle").load("ViewTitle.html");
        });
    </script>
    <div class="column" style="background-color: white; width: 20%;"></div>
    <div class="column" style="width: 60%;">
        <script> 
            if (<%=language%> == "1") {
                var str = "Date d'administration";
                str = str.replace("'", "\'");
                sessionStorage.setItem("mainTitleIn", str);
            } else {
                sessionStorage.setItem("mainTitleIn", "Admin Date Jalon");
            }
        </script>
        <div class="col-lg-12" style="padding-top: 2px;">
           
            <hr />
             
        </div>
        <table class="col-lg-12 ">
            <tr>
                <td>
                    <asp:LinkButton Style="float: right; padding-top: 2px; padding-left: 10px;" runat="server"
                        OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false  ">
                                <img class="theImg" style="width:40px; height:40px;" src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                    <asp:Panel runat="server" ID="panel2" Style="overflow: hidden; height: auto; width: auto; border-style: solid; border-color: black; margin: 1px 1px 1px 1px;">

                        <div class="form-group" style="height: 5px;"></div>

                        <div class="form-group  ">
                            <div class="col-lg-5" style="height: 25px;">
                                <label id="label2" class=" " style="display: inline-block;"></label>
                            </div>
                            <div class="col-lg-3" style="height: 25px;">
                                <label id="label3" class=" " style="display: inline-block; float: right;"></label>
                            </div>
                            <div class="col-lg-4" style="height: 25px;">
                                <input style="display: inline-block; width: 155px; float: left;" />
                            </div>
                        </div>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('label2').innerHTML = "Rechercher un Projet";
                                document.getElementById('label3').innerHTML = "Projet:";
                            } else {
                                document.getElementById('label2').innerHTML = "Find Project";
                                document.getElementById('label3').innerHTML = "Project:";
                            }
                        </script>

                        <div class="form-group  ">
                            <div class="col-lg-5" style="height: 25px;">
                                <input style="height: 25px; width: 124px; display: inline-block; float: left;" />
                                <asp:Button ID="button1" runat="server" Style="height: 25px; width: 100px; display: inline-block; font-size: 12px; float: left; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text=" " />
                            </div>
                            <div class="col-lg-3" style="height: 25px;">
                                <label class=" " style="display: inline-block; float: right;">KO:</label>
                            </div>
                            <div class="col-lg-4" style="height: 25px;">
                                <input style="display: inline-block; width: 155px; float: left;" />
                            </div>
                        </div>

                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('MainContent_button1').value = "Rechercher";
                            } else {
                                document.getElementById('MainContent_button1').value = "Find";
                            }
                        </script>

                        <div class="form-group  ">
                            <div class="col-md-5" style="height: 25px;"></div>
                            <div class="col-md-3" style="height: 25px;">
                                <label class=" " style="display: inline-block; float: right;">APPD:</label>
                            </div>
                            <div class="col-md-4" style="height: 25px;">
                                <input style="display: inline-block; width: 155px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group  ">
                            <div class="col-md-5" style="height: 25px;"></div>
                            <div class="col-md-3" style="height: 25px;">
                                <label class=" " style="display: inline-block; float: right;">DAPP:</label>
                            </div>
                            <div class="col-md-4" style="height: 25px;">
                                <input style="display: inline-block; width: 155px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group  ">
                            <div class="col-md-5" style="height: 25px;"></div>
                            <div class="col-md-3" style="height: 25px;">
                                <label class=" " style="display: inline-block; float: right;">RTB:</label>
                            </div>
                            <div class="col-md-4" style="height: 25px;">
                                <input style="display: inline-block; width: 155px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group  ">
                            <div class="col-md-5" style="height: 25px;"></div>
                            <div class="col-md-3" style="height: 25px;">
                                <label class=" " style="display: inline-block; float: right;">FCOM:</label>
                            </div>
                            <div class="col-md-4" style="height: 25px;">
                                <input style="display: inline-block; width: 155px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group  ">
                            <div class="col-md-5" style="height: 25px;"></div>
                            <div class="col-md-3" style="height: 25px;">
                                <label class=" " style="display: inline-block; float: right;">RFS PL:</label>
                            </div>
                            <div class="col-md-4" style="height: 25px;">
                                <input style="display: inline-block; width: 155px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group  ">
                            <div class="col-md-5" style="height: 25px;"></div>
                            <div class="col-md-3" style="height: 25px;">
                                <label class=" " style="display: inline-block; float: right;">RFS PM:</label>
                            </div>
                            <div class="col-md-4" style="height: 25px;">
                                <input style="display: inline-block; width: 155px; float: left;" />
                            </div>
                        </div>
                         <div class="col-md-12" style="height:  15px;"></div>


                        <div class="row">
                            <div class="  col-lg-12" style="height: 25px;">
                            </div>
                        </div>

                        <div class="col-lg-12 " style="height: 10px;">
                            <div class="col-lg-4 "></div>

                            <div class="col-lg-2" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                <asp:Button ID="button2" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                                    Text=" " />
                            </div>

                            <div class="col-lg-2" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                <asp:Button ID="button3" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                                    Text=" " OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false"/>
                            </div>

                             
                        </div>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('MainContent_button2').value = "Sauvegarder";
                                document.getElementById('MainContent_button3').value = "Annuler"; 
                            } else {
                                document.getElementById('MainContent_button2').value = "Save";
                                document.getElementById('MainContent_button3').value = "Cancel"; 
                            }
                        </script>

                        <div class="row">
                            <div class="col-lg-12 " style="height: 25px;">
                            </div>
                        </div>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </div>
    <div class="column" style="background-color: white; width: 20%;"></div>


</asp:Content>

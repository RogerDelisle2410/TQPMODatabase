<%@ Page Title="Form Param Seuils Variances" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmParamVar.aspx.cs" Inherits="TQPMODatabase.FrmParamVar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>
    <div class="column" style="background-color: white; width: 15%;"></div>
    <div class="column" style="width: 70%; height: auto;">
        <script> 
            if (<%=language%> == "1") {
                sessionStorage.setItem("mainTitleIn", "Écart de seuil2");
            } else {
                sessionStorage.setItem("mainTitleIn", "Threshold Variance2");
            }
        </script>
        <hr />
        <table class="col-lg-12 ">
            <tr>
                <td>
                    <asp:LinkButton Style="float: right; padding-top: 2px; padding-left: 10px;" runat="server"
                        OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false  ">
                                <img class="theImg" style="width:40px; height:40px;" src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                    <asp:Panel runat="server" Style="height: auto; overflow: hidden; width: auto; border-style: solid; border-color: black; margin: 1px 1px 1px 1px;">


                        <div class="col-lg-6" style="margin-top: 10px!important;">
                            <div class="panel panel-default">
                                <div class="panel-body" style="height: 128px; border-style: solid; border-color: black;">
                                    <label id="label2" class="frmRechJalon" style="margin-top: 0px; display: inline-block;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label2').innerHTML = "Paramètres actuels";
                                        } else {
                                            document.getElementById('label2').innerHTML = "Current Parameters";
                                        }
                                    </script>
                                    <div class="col-lg-12"></div>
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label for="nameField" class="col-xs-5">EXP:</label>
                                            <div class="col-xs-3">
                                                <input type="text" class="form-control " style="margin-top: 2px; width: 115px; height: 20px; float: left;" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="emailField" class="col-xs-5">CAP:</label>
                                            <div class="col-xs-7">
                                                <input type="text" class="form-control " style="margin-top: 2px; width: 115px; height: 20px; float: left;" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6" style="margin-top: 10px!important;">
                            <div class="panel panel-default" style="">
                                <div class="panel-body" style="height: 128px; border-style: solid; border-color: black; margin-top: 0!important;">
                                    <label id="label3" class="frmRechJalon" style="margin-top: 0px; display: inline-block;"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label3').innerHTML = "Nouveaux Paramètres";
                                        } else {
                                            document.getElementById('label3').innerHTML = "New Parameters";
                                        }
                                    </script>
                                    <div class="col-lg-12"></div>
                                    <div class="form-horizontal">
                                        <div class="form-group">
                                            <label for="nameField" class="col-xs-5">EXP:</label>
                                            <div class="col-xs-7">
                                                <input type="text" class="form-control " style="margin-top: 2px; width: 115px; height: 20px; float: left;" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="emailField" class="col-xs-5">CAP:</label>
                                            <div class="col-xs-7">
                                                <input type="text" class="form-control " style="margin-top: 2px; width: 115px; height: 20px; float: left;" />
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="  col-lg-12" style="height: 25px;">
                            </div>
                        </div>

                        <div class="col-lg-12 " style="height: 10px;">
                            <div class="col-lg-4 "></div>

                            <div class="col-lg-2" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                <asp:Button ID="button1" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                                    Text=" " />
                            </div>

                            <div class="col-lg-2" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                <asp:Button ID="button2" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                                    Text=" "  OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false" />
                            </div>


                        </div>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('MainContent_button1').value = "Sauvegarder";
                                document.getElementById('MainContent_button2').value = "Annuler";
                            } else {
                                document.getElementById('MainContent_button1').value = "Save";
                                document.getElementById('MainContent_button2').value = "Cancel";
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
    <div class="column  " style="background-color: white; width: 15%;"></div>
    <%-- </div>--%>
</asp:Content>

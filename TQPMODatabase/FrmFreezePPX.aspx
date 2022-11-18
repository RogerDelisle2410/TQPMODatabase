<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmFreezePPX.aspx.cs" Inherits="TQPMODatabase.FrmFreezePPX" %>

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
                sessionStorage.setItem("mainTitleIn", "Figer le PPX");
            } else {
                sessionStorage.setItem("mainTitleIn", "Freeze the PPX");
            }
        </script>
        <div class="col-lg-12" style="padding-top: 2px;">
            <div class="col-lg-4"></div>
            <div class="col-lg-4" style="display: inline-block;">
            </div>
            <div class="col-lg-4">
            </div>
        </div>
        <hr />
        <table class="col-lg-12 ">
            <tr>
                <td>
                    <asp:LinkButton Style="float: right; padding-top: 2px; padding-left: 10px;" runat="server"
                        OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false  ">
                                <img class="theImg" style="width:40px; height:40px;" src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                    <asp:Panel runat="server" Style="height: 200px; overflow: auto; width: auto; border-style: solid; border-color: black; margin: 1px 1px 1px 1px;">
                        <div class="" runat="server" id="divPop4" style="text-align: center;">
                            <div class="col-lg-12" style="height: 15px;"></div>
                            <div id="label11"></div>
                            <script>

                                if (<%=language%> == "1") {
                                    document.getElementById('label11').innerHTML = "Veuillez préciser les informations suivante:";
                                } else {
                                    document.getElementById('label11').innerHTML = "Please specify the following information:";
                                }
                            </script>
                            <div class="col-lg-12" style="height: 15px;"></div>
                            <div class=" " runat="server" id="divPop5" visible="false" style="align-content: center;">

                                <div id="label12"></div>
                                <script>

                                    if (<%=language%> == "1") {
                                        document.getElementById('label12').innerHTML = "S’agit - il de figer le PPO ?";
                                    } else {
                                        document.getElementById('label12').innerHTML = "Is it to freeze the PPO?";
                                    }
                                </script>
                                <div class="col-lg-12" style="height: 15px;"></div>
                                <div class="col-lg-12 ">
                                    <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                        <asp:Button ID="BtnFigerPPOYes" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="" CssClass="button1" OnClientClick="BtnFigerPPOYes_Click" />
                                    </div>
                                    <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                        <asp:Button ID="BtnFigerPPONo" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="" CssClass="button1" OnClientClick="BtnFigerPPONo_Click" />
                                    </div>
                                    <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                        <asp:Button ID="BtnCancel1" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="" CssClass="button1"
                                            OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self');   return false" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-12 " runat="server" id="divPop6" visible="false" style="align-content: center;">
                                <%-- <div class="col-lg-12" style="height: 15px;"></div>--%>
                                <div id="label13"></div>
                                <script>

                                    if (<%=language%> == "1") {
                                        document.getElementById('label13').innerHTML = "Est-ce que les données du PPO datent de 2021? ";
                                    } else {
                                        document.getElementById('label13').innerHTML = "Is the PPO data from 2021?";
                                    }
                                </script>
                                <div class="col-lg-12" style="height: 15px;"></div>
                                <div class="col-lg-12 ">
                                    <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                        <asp:Button ID="BtnFigerPPOYesYes" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="" CssClass="button1" OnClientClick="BtnFigerPPOYesYes_Click" />
                                    </div>
                                    <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                        <asp:Button ID="BtnFigerPPONoNo" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="" CssClass="button1" OnClientClick="BtnFigerPPONoNo_Click" />
                                    </div>
                                    <div class="col-lg-4" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                                        <asp:Button ID="BtnCancel2" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text="" CssClass="button1" OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self');   return false" />
                                    </div>
                                </div>
                                <br />
                            </div>
                            <div class="col-lg-12" runat="server" id="divPop7" visible="false" style="align-content: center;">

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
                                <div class="col-lg-12" style="height: 15px;"></div>
                                <div class="col-lg-12" style="">
                                    <div class="col-lg-4" style=""></div>
                                    <div class="col-lg-4" style="border-style: solid; border-color: red;">
                                        <asp:TextBox runat="server" Type="date" Style="margin: auto; width: 95%;"></asp:TextBox>
                                    </div>
                                    <div class="col-lg-4" style=""></div>
                                </div>
                                <div class="col-lg-12" style="height: 25px;"></div>
                                <div class="col-lg-12">
                                    <div class="col-lg-3"></div>
                                    <div class="col-lg-3">
                                        <asp:Button ID="BtnSave" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text=" " CssClass="button1" Enabled="false" />

                                    </div>
                                    <div class="col-lg-3 ">
                                        <asp:Button ID="BtnCancel3" runat="server" Style="height: 20px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px;" Text=" " CssClass="button1" OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self');   return false" />

                                    </div>
                                    <div class="col-lg-3 "></div>
                                </div>
                                <div class="col-lg-12 "></div>
                            </div>

                        </div>
                    </asp:Panel>

                </td>
            </tr>
        </table>


    </div>
    <div class="column" style="background-color: white; width: 20%;"></div>
</asp:Content>

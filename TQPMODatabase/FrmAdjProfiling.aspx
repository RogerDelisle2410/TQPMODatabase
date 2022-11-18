<%@ Page Title="Adjust Profiling" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmAdjProfiling.aspx.cs" Inherits="TQPMODatabase.FrmAdjProfiling" %>

<%-- <%@ Register Src="~/WebUserLastSaveControl.ascx" TagName="WebControlLASTSAVE" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserSAPVOControl.ascx" TagName="WebControlSAPVO" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserCMTSControl.ascx" TagName="WebControlCMTS" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserACTUALControl.ascx" TagName="WebControlACTUAL" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserACTCMTSControl.ascx" TagName="WebControlACTCMTS" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserPPXControl.ascx" TagName="WebControlPPX" TagPrefix="TWebControl" %>  
<%--<%@ Register Src="~/WebUserGridControl.ascx" TagName="WebUserGridControl" TagPrefix="TWebControl" %> --%>

<%@ Register Src="~/WebUserSAPVOGridControl.ascx" TagName="WebControlSAPVOGrid" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserACTUALGridControl.ascx" TagName="WebControlACTUALGrid" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserCMTSGridControl.ascx" TagName="WebControlCMTSGrid" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserACTCMTSGridControl.ascx" TagName="WebControlACTCMTSGrid" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserPPXGridControl.ascx" TagName="WebControlPPXGrid" TagPrefix="TWebControl" %>
<%@ Register Src="~/WebUserLASTSAVEGridControl.ascx" TagName="WebControlLASTSAVEGrid" TagPrefix="TWebControl" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script> 
        var tabName = '<%=TabName%>';
        var language = '<%=language%>';
        const currentMonth = new Date().getMonth() + 1;

    </script>

    <%--<div class="column" style="background-color: white; width: 5%;"></div>--%>

    <div class="column  " style="width: 100%; height: auto;">

        <script> 
            if (<%=language%> == "1") {
                sessionStorage.setItem("mainTitleIn", "Ajustement profil");
            } else {
                sessionStorage.setItem("mainTitleIn", "Profile adjustment");
            }

        </script>



        <%--<div class="row " style="background-color: #6F3198;">
                <div class="AllHeader col-lg-2" style="display: inline-block; height: 50px;">
                    <img class="theImg2" src="/Images/TelusLogo.jpg">
                </div>
                <div class="AllHeader col-lg-4" style="display: inline-block; height: 50px;">
                    <label id="headerLabel"></label>
                    <script>  

                        if (<%=language%> == "1") {

                            document.getElementById('headerLabel').innerHTML = "Ajustement profil";
                        } else {

                            document.getElementById('headerLabel').innerHTML = "Profile adjustment";
                        }
                    </script>
                </div>
                <div class="  col-lg-4" style="margin-top: 10px;">
                    <label class="    " style="font-size: 12px; display: inline-block; color: white; margin-top: 10px;">
                        <asp:TextBox runat="server" CssClass="row " Style="margin: 1px; display: inline-block; overflow: hidden; width: 120px; height: 20px;" />MAJ DB :
                    </label>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton CssClass="  " runat="server" Style="float: right;">
                     <img class="theImg"  src="/Images/notready.jpg" >	
                    </asp:LinkButton>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx');" Style="float: left;">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                </div>
            </div> --%>
         <div class="form-group col-lg-12">
         <asp:LinkButton Style="float: right; padding-top: 2px; padding-left: 10px;" runat="server"
                        OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false">
                                <img class="theImg" style="width:40px; height:40px;" src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
             </div>
        <div class="form-group col-lg-3">
            <div class="panel panel-default">
                <div class="panel-body" style="height: auto; border-style: solid; border-color: black; background-color: lightgrey">
                    <input style="height: 20px; width: 150px; display: inline-block; float: left;" />
                </div>
            </div>
        </div>

        <div class="form-group   col-lg-9">
            <div class="panel panel-default">
                <div class="panel-body" style="height: auto; border-style: solid; border-color: black; background-color: lightgrey">
                    <div class="form-group">
                        <div class="col-lg-1" style="text-align: right;">
                            <label class="frmRechJalon" style="display: inline-block; font-size: 10px; float: right;">IInum</label>
                        </div>
                        <div class="col-lg-5">
                            <asp:TextBox runat="server" class="frmRechJalon" Style="width: 130px; display: inline-block; float: left;" />
                            <asp:TextBox runat="server" class="frmRechJalon" Style="width: 130px; display: inline-block; float: right;" />
                        </div>
                        <div class="col-lg-3">
                            <label id="label7" class="frmRechJalon" style="display: inline-block; font-size: 9px; float: right;"></label>
                        </div>
                        <div class="col-lg-3">
                            <input class="frmRechJalon" style="display: inline-block;" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-1">
                            <label id="label9" class="frmRechJalon" style="display: inline-block; font-size: 10px; float: right;"></label>
                        </div>
                        <div class="col-lg-5">
                            <asp:TextBox runat="server" class="frmRechJalon" Style="display: inline-block; width: 130px; float: left;" />
                            <asp:TextBox runat="server" class="frmRechJalon" Style="display: inline-block; width: 130px; float: right;" />
                        </div>
                        <div class="col-lg-3    ">
                            <label id="label8" class="frmRechJalon" style="display: inline-block; font-size: 10px; float: right;"></label>
                        </div>
                        <div class="col-lg-3">
                            <input class="frmRechJalon" style="display: inline-block;" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-1">
                            <label class="frmRechJalon3" style="font-size: 9px; color: black; text-align: left; height: 25px; display: inline-block;">
                                St. Syst</label>
                        </div>
                        <div class="col-lg-5">
                            <asp:TextBox runat="server" class="frmRechJalon" Style="display: inline-block; width: 130px; float: left;" />
                            <asp:TextBox runat="server" class="frmRechJalon" Style="display: inline-block; width: 130px; float: right;" />
                        </div>
                        <div class="col-lg-3">
                            <label class="frmRechJalon" style="display: inline-block; font-size: 10px; float: right;">PM</label>
                        </div>
                        <div class="col-lg-3">
                            <input class="frmRechJalon" style="display: inline-block;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-12" style="height: auto; border-style: solid; border-color: black; background-color: lightgrey;">
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; height: auto;">

                <div class="panel-body" style="text-align: center; height: auto;">
                    <label style="margin-top: -10px; font-size: 11px;">Budget</label>
                    <input style="margin-top: -5px;" type="text">
                </div>

            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; height: 50px;">

                <div class="panel-body" style="text-align: center; height: auto;">
                    <label id="label6" style="margin-top: -10px; font-size: 10px;"></label>
                    <input style="margin-top: -5px;" type="text">
                </div>

            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; height: 50px;">

                <div class="panel-body" style="text-align: center; height: auto;">
                    <label style="margin-top: -10px; font-size: 10px;">LPA</label>
                    <input style="margin-top: -5px;" type="text">
                </div>

            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; height: 50px;">

                <div class="panel-body" style="text-align: center; height: auto;">
                    <label id="label4" style="margin-top: -10px; font-size: 10px;"></label>
                    <input style="margin-top: -5px;" type="text">
                </div>

            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; height: 50px;">

                <div class="panel-body" style="text-align: center; height: auto;">
                    <label id="label2" style="margin-top: -10px; font-size: 10px;"></label>
                    <input style="margin-top: -5px;" type="text">
                </div>

            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; height: 50px;">

                <div class="panel-body" style="text-align: center; height: auto;">
                    <label id="label3" style="margin-top: -10px; font-size: 10px;"></label>
                    <input style="margin-top: -5px;" type="text">
                </div>

            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 3px; float: left; height: 50px;">

                <div class="panel-body" style="text-align: center; height: auto;">
                    <label id="label1" style="margin-top: -10px; font-size: 10px;"></label>
                    <input style="margin-top: -5px;" type="text">
                </div>

            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; height: 50px;">

                <div class="panel-body" style="text-align: center; height: auto;">
                    <label id="label5" style="margin-top: -10px; font-size: 10px;"></label>
                    <input style="margin-top: -5px;" type="text">
                </div>
            </div>
            <script>    
                if (<%=language%> == "1") {
                    document.getElementById('label5').innerHTML = "Restant $";
                    document.getElementById('label1').innerHTML = "Reste à Dépenser";
                    document.getElementById('label3').innerHTML = "Attribué";
                    document.getElementById('label2').innerHTML = "Engagement";
                    document.getElementById('label4').innerHTML = "Réel";
                    document.getElementById('label6').innerHTML = "Planifier";

                    document.getElementById('label7').innerHTML = "Resp. planification";
                    document.getElementById('label9').innerHTML = "Projet";
                    document.getElementById('label8').innerHTML = "Planificateur";
                } else {
                    document.getElementById('label5').innerHTML = "Remaining $";
                    document.getElementById('label1').innerHTML = "Left to Spend";
                    document.getElementById('label3').innerHTML = "Assigned";
                    document.getElementById('label2').innerHTML = "Commitment";
                    document.getElementById('label4').innerHTML = "Actual";
                    document.getElementById('label6').innerHTML = "Plan";

                    document.getElementById('label7').innerHTML = "Planning Mgr";
                    document.getElementById('label9').innerHTML = "Project";
                    document.getElementById('label8').innerHTML = "Planner";
                }
            </script>
        </div>
    </div>

    <%-- ==================================--%>
    <div class="col-lg-12" style="height:10px;  " ></div>
    <div class="container">
        <table style="width: 100%; height: auto;" class="col-lg-12">
            <tr>
                <td>
                    <asp:Panel ID="tabPanel" runat="server">
                        <asp:Button Text="SAP VO" BorderStyle="solid" ID="TabSAPVO" CssClass="Initial" runat="server"
                            OnClick="TabSAPVO_Click" BackColor="LightGray" />
                        <asp:Button Text="ACTUAL" BorderStyle="solid" ID="TabACTUAL" CssClass="Initial" runat="server"
                            OnClick="TabACTUAL_Click" BackColor="LightGray" />
                        <asp:Button Text="CMTS" BorderStyle="solid" ID="TabCMTS" CssClass="Initial" runat="server"
                            OnClick="TabCMTS_Click" BackColor="LightGray" />
                        <asp:Button Text="ACT+CMTS" BorderStyle="solid" ID="TabACTCMTS" CssClass="Initial" runat="server"
                            OnClick="TabACTCMTS_Click" BackColor="LightGray" />
                        <asp:Button Text="PPX" BorderStyle="solid" ID="TabPPX" CssClass="Initial" runat="server"
                            OnClick="TabPPX_Click" BackColor="LightGray" />
                        <asp:Button Text="Last Save" BorderStyle="solid" ID="TabLastSave" CssClass="Initial" runat="server"
                            OnClick="TabLASTSAVE_Click" BackColor="LightGray" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </div>
    <%-- Tab 1 SAPVO ==================================--%>

    <asp:MultiView ID="MainView" runat="server">
        <%-- <asp:View runat="server">
            <TWebControl:WebControlSAPVO ID="WebControlSAPVO" runat="server" />
        </asp:View>--%>

        <%--TAB 2 ACTUAL ===========================================================================--%>

        <%-- <asp:View runat="server">
            <TWebControl:WebControlACTUAL ID="WebControlACTUAL" runat="server" />
        </asp:View>--%>

        <%--TAB 3 CMTS ===========================================================================--%>

        <%--  <asp:View runat="server">
            <TWebControl:WebControlCMTS ID="WebControlCMTS" runat="server" />
        </asp:View>--%>

        <%--TAB 4 ACT+CMTS ===========================================================================--%>

        <%-- <asp:View runat="server">
            <TWebControl:WebControlACTCMTS ID="WebControlACTCMTS" runat="server" />
        </asp:View>--%>

        <%--TAB 5 PPX ===========================================================================--%>

        <%-- <asp:View runat="server">
            <TWebControl:WebControlPPX ID="WebControlPPX" runat="server" />
        </asp:View>--%>

        <%--TAB 6 Last Save ===========================================================================--%>

        <%-- <asp:View runat="server">
            <TWebControl:WebControlLASTSAVE ID="WebControlLASTSAVE" runat="server" />
        </asp:View>--%>


        <%--TAB 1 SAPVO Grid  ===========================================================================--%>

        <asp:View runat="server">
            <TWebControl:WebControlSAPVOGrid ID="WebControlSAPVOGrid" runat="server" />
        </asp:View>

        <%--TAB 2 ACTUAL Grid   ===========================================================================--%>

        <asp:View runat="server">
            <TWebControl:WebControlACTUALGrid ID="WebControlACTUALGrid" runat="server" />
        </asp:View>

        <%--TAB 3 CMTS Grid   ===========================================================================--%>

        <asp:View runat="server">
            <TWebControl:WebControlCMTSGrid ID="WebControlCMTSGrid" runat="server" />
        </asp:View>

        <%--TAB 4 ACTCMTS Grid   ===========================================================================--%>

        <asp:View runat="server">
            <TWebControl:WebControlACTCMTSGrid ID="WebControlACTCMTSGrid" runat="server" />
        </asp:View>

        <%--TAB 5 PPX Grid   ===========================================================================--%>

        <asp:View runat="server">
            <TWebControl:WebControlPPXGrid ID="WebControlPPXGrid" runat="server" />
        </asp:View>

        <%--TAB 6 LastSave Grid   ===========================================================================--%>

        <asp:View runat="server">
            <TWebControl:WebControlLASTSAVEGrid ID="WebControlLASTSAVEGrid" runat="server" />
        </asp:View>

    </asp:MultiView>


    <div class="col-lg-12" style="height: 25px; height: 10px;"></div>

    <div class="col-lg-12" style="height: 40px;">
        <div class="col-lg-1"></div>
        <div class="col-lg-2" style="display: inline-block; font-size: 10px; height: auto;">
            <asp:Button ID="btnInput1" runat="server" Style="font-weight: bold; font-size: 12px; width: 150px; height: 25px; background-color: lightgrey; text-align: center;" />
        </div>
        <div class="col-lg-2" style="display: inline-block; font-size: 10px; height: auto; text-align: center;">
            <asp:Button ID="btnInput2" runat="server" Style="font-weight: bold; font-size: 12px; width: 150px; height: 25px; background-color: lightgrey; text-align: center;" />
        </div>
        <div class="col-lg-2" style="display: inline-block; font-size: 10px; height: auto;">
            <asp:Button ID="btnInput3" runat="server" Style="font-weight: bold; font-size: 12px; width: 150px; height: 25px; background-color: lightgrey; text-align: center;" />
        </div>
        <div class="col-lg-2" style="display: inline-block; font-size: 10px; height: auto;">
            <asp:Button ID="btnInput4" runat="server" Style="font-weight: bold; font-size: 12px; width: 150px; height: 25px; background-color: lightgrey; text-align: center;" />
        </div>
        <div class="col-lg-2" style="display: inline-block; font-size: 10px; height: auto;">
            <asp:Button ID="btnInput5" runat="server" Style="font-weight: bold; font-size: 12px; width: 150px; height: 25px; background-color: lightgrey; text-align: center;" />
        </div>
        <div class="col-lg-1"></div>
    </div>
    <script>  
        if (<%=language%> == "1") {
            document.getElementById('MainContent_btnInput1').value = "Envoyer V0-RSUB";
            document.getElementById('MainContent_btnInput2').value = "Enregistrer";
            document.getElementById('MainContent_btnInput3').value = "Exporter en XLS";
            document.getElementById('MainContent_btnInput4').value = "Supprimer Projet";
            document.getElementById('MainContent_btnInput5').value = "Annuler V0-RSUB";
        } else {
            document.getElementById('MainContent_btnInput1').value = "Send V0-RSUB";
            document.getElementById('MainContent_btnInput2').value = "Save Last_Save";
            document.getElementById('MainContent_btnInput3').value = "XLS Export";
            document.getElementById('MainContent_btnInput4').value = "Remove Project";
            document.getElementById('MainContent_btnInput5').value = "Cancel V0-RSUB";
        }
    </script>

</asp:Content>


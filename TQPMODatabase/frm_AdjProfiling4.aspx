<%@ Page Title="Adjust Profiling" Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Frm_AdjProfiling4.aspx.cs" Inherits="TQPMODatabase.Frm_AdjProfiling4" %>

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



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <!DOCTYPE html>
    <script> 
        $(function () {
            $("#metaData").load("metaData.html");
            $("#viewtitle").load("ViewTitle.html");
        });

        window.onload = function () {
            const currentMonth = new Date().getMonth() + 1;
            var tabName = '<%=TabName%>';
            <%--let language = '<%=language%>';--%>
            //Calculate old value totals
            //var totaloldMat = 0;
            //var totaloldINT = 0;
            //var totaloldEXT = 0;
            //var totaloldTotal = 0;
            //var totaloldTotal2 = 0;
            //var totaloldCTRB = 0;
            //var totaloldNetTot = 0;
            //var totaloldNetTot2 = 0;

            <%--if (tabName != 'GRID' && tabName != 'SAPVOGrid') {
                for (let mth = 1; mth < 13; mth++) {
                    let newMAT = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT" + mth;
                    let newINT = "MainContent_WebControl" + tabName + "_" + tabName + "newINT" + mth;
                    let newEXT = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT" + mth;
                    let newCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB" + mth;

                    let button = "MainContent_WebControl" + tabName + "_" + tabName + mth;

                    for (let i = 1; i < 13; i++) {

                        if (mth < currentMonth) {
                            document.getElementById(newMAT).style.backgroundColor = "lightgrey";
                            document.getElementById(newMAT).readOnly = true;
                            document.getElementById(newINT).style.backgroundColor = "lightgrey";
                            document.getElementById(newINT).readOnly = true;
                            document.getElementById(newEXT).style.backgroundColor = "lightgrey";
                            document.getElementById(newEXT).readOnly = true;
                            document.getElementById(newCTRB).style.backgroundColor = "lightgrey";
                            document.getElementById(newCTRB).readOnly = true;
                            document.getElementById(button).style.visibility = "hidden";
                        }
                        else {
                            document.getElementById(newMAT).style.backgroundColor = "#EBDEF0";
                            document.getElementById(newMAT).readOnly = false;
                            document.getElementById(newINT).style.backgroundColor = "#EBDEF0";
                            document.getElementById(newINT).readOnly = false;
                            document.getElementById(newEXT).style.backgroundColor = "#EBDEF0";
                            document.getElementById(newEXT).readOnly = false;
                            document.getElementById(newCTRB).style.backgroundColor = "#EBDEF0";
                            document.getElementById(newCTRB).readOnly = false;
                        }
                    }

                    let totaloldMAT13 = "MainContent_WebControl" + tabName + "_" + tabName + "oldMAT13";
                    let totaloldINT13 = "MainContent_WebControl" + tabName + "_" + tabName + "oldINT13";
                    let totaloldEXT13 = "MainContent_WebControl" + tabName + "_" + tabName + "oldEXT13";
                    let totaloldTotal13 = "MainContent_WebControl" + tabName + "_" + tabName + "oldTotal13";
                    let totaloldCTRB13 = "MainContent_WebControl" + tabName + "_" + tabName + "oldCTRB13";
                    let totaloldNetTot13 = "MainContent_WebControl" + tabName + "_" + tabName + "oldNetTot13";

                    let oldMAT = "MainContent_WebControl" + tabName + "_" + tabName + "oldMAT" + mth;
                    let oldINT = "MainContent_WebControl" + tabName + "_" + tabName + "oldINT" + mth;
                    let oldEXT = "MainContent_WebControl" + tabName + "_" + tabName + "oldEXT" + mth;
                    let oldTotal = "MainContent_WebControl" + tabName + "_" + tabName + "oldTotal" + mth;
                    let oldCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "oldCTRB" + mth;
                    let oldNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "oldNetTot" + mth;

                    if (!isNaN(parseFloat(document.getElementById(oldMAT).value))) {
                        totaloldMat = totaloldMat + parseFloat(document.getElementById(oldMAT).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldINT).value))) {
                        totaloldINT = totaloldINT + parseFloat(document.getElementById(oldINT).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldEXT).value))) {
                        totaloldEXT = totaloldEXT + parseFloat(document.getElementById(oldEXT).value);
                    }


                    //Add up oldTotal
                    if (!isNaN(parseFloat(document.getElementById(oldMAT).value))) {
                        totaloldTotal2 = totaloldTotal2 + parseFloat(document.getElementById(oldMAT).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldINT).value))) {
                        totaloldTotal2 = totaloldTotal2 + parseFloat(document.getElementById(oldINT).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldEXT).value))) {
                        totaloldTotal2 = totaloldTotal2 + parseFloat(document.getElementById(oldEXT).value);
                    }
                    document.getElementById(oldTotal).value = (Math.round(totaloldTotal2 * 100) / 100).toFixed(2);
                    totaloldTotal2 = 0;

                    //Add up oldNetTot
                    if (!isNaN(parseFloat(document.getElementById(oldMAT).value))) {
                        totaloldNetTot2 = totaloldNetTot2 + parseFloat(document.getElementById(oldMAT).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldINT).value))) {
                        totaloldNetTot2 = totaloldNetTot2 + parseFloat(document.getElementById(oldINT).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldEXT).value))) {
                        totaloldNetTot2 = totaloldNetTot2 + parseFloat(document.getElementById(oldEXT).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldCTRB).value))) {
                        totaloldNetTot2 = totaloldNetTot2 + parseFloat(document.getElementById(oldCTRB).value);
                    }
                    document.getElementById(oldNetTot).value = (Math.round(totaloldNetTot2 * 100) / 100).toFixed(2);
                    totaloldNetTot2 = 0;


                    if (!isNaN(parseFloat(document.getElementById(oldTotal).value))) {
                        totaloldTotal = totaloldTotal + parseFloat(document.getElementById(oldTotal).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldCTRB).value))) {
                        totaloldCTRB = totaloldCTRB + parseFloat(document.getElementById(oldCTRB).value);
                    }
                    if (!isNaN(parseFloat(document.getElementById(oldNetTot).value))) {
                        totaloldNetTot = totaloldNetTot + parseFloat(document.getElementById(oldNetTot).value);
                    }


                    document.getElementById(totaloldMAT13).value = (Math.round(totaloldMat * 100) / 100).toFixed(2);
                    document.getElementById(totaloldINT13).value = (Math.round(totaloldINT * 100) / 100).toFixed(2);
                    document.getElementById(totaloldEXT13).value = (Math.round(totaloldEXT * 100) / 100).toFixed(2);
                    document.getElementById(totaloldTotal13).value = (Math.round(totaloldTotal * 100) / 100).toFixed(2);
                    document.getElementById(totaloldCTRB13).value = (Math.round(totaloldCTRB * 100) / 100).toFixed(2);
                    document.getElementById(totaloldNetTot13).value = (Math.round(totaloldNetTot * 100) / 100).toFixed(2);
                    //CalculateTotals(); 


                    //===========================================================

                    //Calculate new value totals
                    var totalnewMat = 0;
                    var totalnewINT = 0;
                    var totalnewEXT = 0;
                    var totalnewTotal = 0;
                    var totalnewTotal2 = 0;
                    var totalnewCTRB = 0;
                    var totalnewNetTot = 0;
                    var totalnewNetTot2 = 0;
                    var tabName = '<%=TabName%>';

                    for (let mth = 1; mth < 13; mth++) {


                        let totalnewMAT13 = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT13";
                        let totalnewINT13 = "MainContent_WebControl" + tabName + "_" + tabName + "newINT13";
                        let totalnewEXT13 = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT13";
                        let totalnewTotal13 = "MainContent_WebControl" + tabName + "_" + tabName + "newTotal13";
                        let totalnewCTRB13 = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB13";
                        let totalnewNetTot13 = "MainContent_WebControl" + tabName + "_" + tabName + "newNetTot13";

                        let newMAT = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT" + mth;
                        let newINT = "MainContent_WebControl" + tabName + "_" + tabName + "newINT" + mth;
                        let newEXT = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT" + mth;
                        let newTotal = "MainContent_WebControl" + tabName + "_" + tabName + "newTotal" + mth;
                        let newCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB" + mth;
                        let newNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "newNetTot" + mth;

                        if (!isNaN(parseFloat(document.getElementById(newMAT).value))) {
                            totalnewMat = totalnewMat + parseFloat(document.getElementById(newMAT).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newINT).value))) {
                            totalnewINT = totalnewINT + parseFloat(document.getElementById(newINT).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newEXT).value))) {
                            totalnewEXT = totalnewEXT + parseFloat(document.getElementById(newEXT).value);
                        }


                        //Add up newTotal
                        if (!isNaN(parseFloat(document.getElementById(newMAT).value))) {
                            totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newMAT).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newINT).value))) {
                            totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newINT).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newEXT).value))) {
                            totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newEXT).value);
                        }
                        document.getElementById(newTotal).value = (Math.round(totalnewTotal2 * 100) / 100).toFixed(2);
                        totalnewTotal2 = 0;

                        //Add up newNetTot
                        if (!isNaN(parseFloat(document.getElementById(newMAT).value))) {
                            totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newMAT).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newINT).value))) {
                            totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newINT).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newEXT).value))) {
                            totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newEXT).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newCTRB).value))) {
                            totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newCTRB).value);
                        }
                        document.getElementById(newNetTot).value = (Math.round(totalnewNetTot2 * 100) / 100).toFixed(2);
                        totalnewNetTot2 = 0;


                        if (!isNaN(parseFloat(document.getElementById(newTotal).value))) {
                            totalnewTotal = totalnewTotal + parseFloat(document.getElementById(newTotal).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newCTRB).value))) {
                            totalnewCTRB = totalnewCTRB + parseFloat(document.getElementById(newCTRB).value);
                        }
                        if (!isNaN(parseFloat(document.getElementById(newNetTot).value))) {
                            totalnewNetTot = totalnewNetTot + parseFloat(document.getElementById(newNetTot).value);
                        }


                        document.getElementById(totalnewMAT13).value = (Math.round(totalnewMat * 100) / 100).toFixed(2);
                        document.getElementById(totalnewINT13).value = (Math.round(totalnewINT * 100) / 100).toFixed(2);
                        document.getElementById(totalnewEXT13).value = (Math.round(totalnewEXT * 100) / 100).toFixed(2);
                        document.getElementById(totalnewTotal13).value = (Math.round(totalnewTotal * 100) / 100).toFixed(2);
                        document.getElementById(totalnewCTRB13).value = (Math.round(totalnewCTRB * 100) / 100).toFixed(2);
                        document.getElementById(totalnewNetTot13).value = (Math.round(totalnewNetTot * 100) / 100).toFixed(2);
                    };
                }

            }--%>

        }


       <%-- function pushValueClick(mth, tabName) {

            //Transfer value to Adjustments and Calculate old value totals
            var tabName = '<%=TabName%>';
            var totalnewMat = 0;
            var totalnewINT = 0;
            var totalnewEXT = 0;
            var totalnewTotal = 0;
            var totalnewTotal2 = 0;
            var totalnewCTRB = 0;
            var totalnewNetTot = 0;
            var totalnewNetTot2 = 0;

            if (tabName != 'GRID' && tabName != 'SAPVOGrid') {

                let oldMAT = "MainContent_WebControl" + tabName + "_" + tabName + "oldMAT" + mth;
                let oldINT = "MainContent_WebControl" + tabName + "_" + tabName + "oldINT" + mth;
                let oldEXT = "MainContent_WebControl" + tabName + "_" + tabName + "oldEXT" + mth;
                let oldTotal = "MainContent_WebControl" + tabName + "_" + tabName + "oldTotal" + mth;
                let oldCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "oldCTRB" + mth;
                let oldNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "oldNetTot" + mth;
                let newMAT = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT" + mth;
                let newINT = "MainContent_WebControl" + tabName + "_" + tabName + "newINT" + mth;
                let newEXT = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT" + mth;
                let newTotal = "MainContent_WebControl" + tabName + "_" + tabName + "newTotal" + mth;
                let newCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB" + mth;
                let newNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "newNetTot" + mth;

                if (!isNaN(parseFloat(document.getElementById(oldMAT).value))) {
                    document.getElementById(newMAT).value = document.getElementById(oldMAT).value
                    totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newMAT).value);
                    totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newMAT).value);
                }
                else { document.getElementById(newMAT).value = 0.00 }
                if (!isNaN(parseFloat(document.getElementById(oldINT).value))) {
                    document.getElementById(newINT).value = document.getElementById(oldINT).value
                    totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newINT).value);
                    totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newINT).value);
                }
                else { document.getElementById(newINT).value = 0.00 }
                if (!isNaN(parseFloat(document.getElementById(oldEXT).value))) {
                    document.getElementById(newEXT).value = document.getElementById(oldEXT).value
                    totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newEXT).value);
                    totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newEXT).value);
                }
                else { document.getElementById(newEXT).value = 0.00 }
                document.getElementById(newTotal).value = (Math.round(totalnewTotal2 * 100) / 100).toFixed(2);
                if (!isNaN(parseFloat(document.getElementById(oldCTRB).value))) {
                    document.getElementById(newCTRB).value = document.getElementById(oldCTRB).value
                    totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newCTRB).value);
                }
                else { document.getElementById(newCTRB).value = 0.00 }
                document.getElementById(newNetTot).value = (Math.round(totalnewNetTot2 * 100) / 100).toFixed(2);

                CalculateTotals();

            } else {
                alert('Grid - SAPVOGrid');

              
            }
        }--%>

       <%-- function pushAllValuesClick() {

            //Transfer All values to Adjustments and Calculate totals
            const currentMonth = new Date().getMonth() + 1;
            var tabName = '<%=TabName%>';
            var totalnewMat = 0;
            var totalnewINT = 0;
            var totalnewEXT = 0;
            var totalnewTotal = 0;
            var totalnewTotal2 = 0;
            var totalnewCTRB = 0;
            var totalnewNetTot = 0;
            var totalnewNetTot2 = 0;

            if (tabName != 'GRID' && tabName != 'SAPVOGrid') {
                for (let mth = 1; mth < 13; mth++) {
                    if (mth >= currentMonth) {
                        let oldMAT = "MainContent_WebControl" + tabName + "_" + tabName + "oldMAT" + mth;
                        let oldINT = "MainContent_WebControl" + tabName + "_" + tabName + "oldINT" + mth;
                        let oldEXT = "MainContent_WebControl" + tabName + "_" + tabName + "oldEXT" + mth;
                        let oldTotal = "MainContent_WebControl" + tabName + "_" + tabName + "oldTotal" + mth;
                        let oldCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "oldCTRB" + mth;
                        let oldNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "oldNetTot" + mth;
                        let newMAT = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT" + mth;
                        let newINT = "MainContent_WebControl" + tabName + "_" + tabName + "newINT" + mth;
                        let newEXT = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT" + mth;
                        let newTotal = "MainContent_WebControl" + tabName + "_" + tabName + "newTotal" + mth;
                        let newCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB" + mth;
                        let newNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "newNetTot" + mth;

                        if (!isNaN(parseFloat(document.getElementById(oldMAT).value))) {
                            document.getElementById(newMAT).value = document.getElementById(oldMAT).value
                            totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newMAT).value);
                            totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newMAT).value);
                        }
                        else { document.getElementById(newMAT).value = 0.00 }
                        if (!isNaN(parseFloat(document.getElementById(oldINT).value))) {
                            document.getElementById(newINT).value = document.getElementById(oldINT).value
                            totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newINT).value);
                            totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newINT).value);
                        }
                        else { document.getElementById(newINT).value = 0.00 }
                        if (!isNaN(parseFloat(document.getElementById(oldEXT).value))) {
                            document.getElementById(newEXT).value = document.getElementById(oldEXT).value
                            totalnewTotal2 = totalnewTotal2 + parseFloat(document.getElementById(newEXT).value);
                            totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newEXT).value);
                        }
                        else { document.getElementById(newEXT).value = 0.00 }
                        document.getElementById(newTotal).value = (Math.round(totalnewTotal2 * 100) / 100).toFixed(2);
                        if (!isNaN(parseFloat(document.getElementById(oldCTRB).value))) {
                            document.getElementById(newCTRB).value = document.getElementById(oldCTRB).value
                            totalnewNetTot2 = totalnewNetTot2 + parseFloat(document.getElementById(newCTRB).value);
                        }
                        else { document.getElementById(newCTRB).value = 0.00 }
                        document.getElementById(newNetTot).value = (Math.round(totalnewNetTot2 * 100) / 100).toFixed(2);
                        totalnewTotal2 = 0;
                        totalnewNetTot2 = 0;
                    }
                }
                CalculateTotals();
            }
        }--%>

       <%-- function CalculateTotals() {

            var tabName = '<%=TabName%>';
            var totalnewMat = 0;
            var totalnewINT = 0;
            var totalnewEXT = 0;
            var totalnewTotal = 0;
            var totalnewTotal2 = 0;
            var totalnewCTRB = 0;
            var totalnewNetTot = 0;
            var totalnewNetTot2 = 0;

            //Calculate all totals for right panel.
            let totalnewMAT13 = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT13";
            let totalnewINT13 = "MainContent_WebControl" + tabName + "_" + tabName + "newINT13";
            let totalnewEXT13 = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT13";
            let totalnewTotal13 = "MainContent_WebControl" + tabName + "_" + tabName + "newTotal13";
            let totalnewCTRB13 = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB13";
            let totalnewNetTot13 = "MainContent_WebControl" + tabName + "_" + tabName + "newNetTot13";

            for (let mth = 1; mth < 13; mth++) {
                let newMAT = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT" + mth;
                let newINT = "MainContent_WebControl" + tabName + "_" + tabName + "newINT" + mth;
                let newEXT = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT" + mth;
                let newTotal = "MainContent_WebControl" + tabName + "_" + tabName + "newTotal" + mth;
                let newCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB" + mth;
                let newNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "newNetTot" + mth;

                if (!isNaN(parseFloat(document.getElementById(newMAT).value))) {
                    totalnewMat = totalnewMat + parseFloat(document.getElementById(newMAT).value);
                }
                if (!isNaN(parseFloat(document.getElementById(newINT).value))) {
                    totalnewINT = totalnewINT + parseFloat(document.getElementById(newINT).value);
                }
                if (!isNaN(parseFloat(document.getElementById(newEXT).value))) {
                    totalnewEXT = totalnewEXT + parseFloat(document.getElementById(newEXT).value);
                }
                if (!isNaN(parseFloat(document.getElementById(newTotal).value))) {
                    totalnewTotal = totalnewTotal + parseFloat(document.getElementById(newTotal).value);
                }
                if (!isNaN(parseFloat(document.getElementById(newCTRB).value))) {
                    totalnewCTRB = totalnewCTRB + parseFloat(document.getElementById(newCTRB).value);
                }
                if (!isNaN(parseFloat(document.getElementById(newNetTot).value))) {
                    totalnewNetTot = totalnewNetTot + parseFloat(document.getElementById(newNetTot).value);
                }
            }
            document.getElementById(totalnewMAT13).value = (Math.round(totalnewMat * 100) / 100).toFixed(2);
            document.getElementById(totalnewINT13).value = (Math.round(totalnewINT * 100) / 100).toFixed(2);
            document.getElementById(totalnewEXT13).value = (Math.round(totalnewEXT * 100) / 100).toFixed(2);
            document.getElementById(totalnewTotal13).value = (Math.round(totalnewTotal * 100) / 100).toFixed(2);
            document.getElementById(totalnewCTRB13).value = (Math.round(totalnewCTRB * 100) / 100).toFixed(2);
            document.getElementById(totalnewNetTot13).value = (Math.round(totalnewNetTot * 100) / 100).toFixed(2);
        }--%>

       <%-- function clearAllValuesClick() {

            const currentMonth = new Date().getMonth() + 1;
            var tabName = '<%=TabName%>';

            for (let mth = 1; mth < 14; mth++) {
                if (mth >= currentMonth) {

                    let newMAT = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT" + mth;
                    let newINT = "MainContent_WebControl" + tabName + "_" + tabName + "newINT" + mth;
                    let newEXT = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT" + mth;
                    let newTotal = "MainContent_WebControl" + tabName + "_" + tabName + "newTotal" + mth;
                    let newCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB" + mth;
                    let newNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "newNetTot" + mth;


                    document.getElementById(newMAT).value = 0;
                    document.getElementById(newINT).value = 0;
                    document.getElementById(newEXT).value = 0;
                    document.getElementById(newTotal).value = 0;
                    document.getElementById(newCTRB).value = 0;
                    document.getElementById(newNetTot).value = 0;
                }
            }
            CalculateTotals();
        }--%>

       <%-- function NullAllValuesClick() {

            const currentMonth = new Date().getMonth() + 1;
            var tabName = '<%=TabName%>';

            for (let mth = 1; mth < 14; mth++) {
                if (mth >= currentMonth) {

                    let newMAT = "MainContent_WebControl" + tabName + "_" + tabName + "newMAT" + mth;
                    let newINT = "MainContent_WebControl" + tabName + "_" + tabName + "newINT" + mth;
                    let newEXT = "MainContent_WebControl" + tabName + "_" + tabName + "newEXT" + mth;
                    let newTotal = "MainContent_WebControl" + tabName + "_" + tabName + "newTotal" + mth;
                    let newCTRB = "MainContent_WebControl" + tabName + "_" + tabName + "newCTRB" + mth;
                    let newNetTot = "MainContent_WebControl" + tabName + "_" + tabName + "newNetTot" + mth;


                    document.getElementById(newMAT).value = "";
                    document.getElementById(newINT).value = "";
                    document.getElementById(newEXT).value = "";
                    document.getElementById(newTotal).value = "";
                    document.getElementById(newCTRB).value = "";
                    document.getElementById(newNetTot).value = "";
                }
            }
            CalculateTotals();
        }--%>
    </script>


    <div class="column  " style="width: 100%; height: auto;">

        <div class="container" style="background-color: lightgray; width: 100%; height: 250px; border-style: solid; border-color: black;">

            <div class="row " style="background-color: #6F3198;">
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
            </div>
            <%-- ==================================--%>

            <div class="form-group col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
                        <input style="height: 20px; width: 150px; display: inline-block; float: left;" />
                    </div>
                </div>
            </div>
            <div class="form-group   col-lg-9">
                <div class="panel panel-default">
                    <div class="panel-body" style="height: auto; border-style: solid; border-color: black;">
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
            <%--  ===========================================--%>

            <div class="form-group" style="width: 140px; height: auto; font-size: 10px; float: left; margin-top: -32px; height: 50px;">
                <div class="panel panel-default" style="background-color: transparent;">
                    <div class="panel-body" style="text-align: center; height: auto;">
                        <label style="margin-top: -10px;">Budget</label>
                        <input style="margin-top: -5px;" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; margin-top: -32px; height: 50px;">
                <div class="panel panel-default" style="background-color: transparent;">
                    <div class="panel-body" style="text-align: center; height: auto;">
                        <label id="label6" style="margin-top: -10px;"></label>
                        <input style="margin-top: -5px;" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; margin-top: -32px; height: 50px;">
                <div class="panel panel-default" style="background-color: transparent;">
                    <div class="panel-body" style="text-align: center; height: auto;">
                        <label style="margin-top: -10px;">LPA</label>
                        <input style="margin-top: -5px;" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; margin-top: -32px; height: 50px;">
                <div class="panel panel-default" style="background-color: transparent;">
                    <div class="panel-body" style="text-align: center; height: auto;">
                        <label id="label4" style="margin-top: -10px;"></label>

                        <input style="margin-top: -5px;" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; margin-top: -32px; height: 50px;">
                <div class="panel panel-default" style="background-color: transparent;">
                    <div class="panel-body" style="text-align: center; height: auto;">

                        <label id="label2" style="margin-top: -10px;"></label>
                        <input style="margin-top: -5px;" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; margin-top: -32px; height: 50px;">
                <div class="panel panel-default" style="background-color: transparent;">
                    <div class="panel-body" style="text-align: center; height: auto;">
                        <label id="label3" style="margin-top: -10px;"></label>

                        <input style="margin-top: -5px;" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; margin-top: -32px; height: 50px;">
                <div class="panel panel-default" style="background-color: transparent;">
                    <div class="panel-body" style="text-align: center; height: auto;">
                        <label id="label1" style="margin-top: -10px;"></label>
                        <input style="margin-top: -5px;" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group" style="width: 140px; display: inline-block; font-size: 10px; float: left; margin-top: -32px; height: 50px;">
                <div class="panel panel-default" style="background-color: transparent;">
                    <div class="panel-body" style="text-align: center; height: auto;">
                        <label id="label5" style="margin-top: -10px;"></label>
                        <script>   

                            if (label6 == "1") {
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

                        <input style="margin-top: -5px;" type="text">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- ==================================--%>


    <table style="width: 100%; border-style: solid; border-color: black; padding-bottom: 10px;" class="col-lg-12">
        <tr>
            <td>
                <asp:Panel Visible="true" runat="server" Style="height: auto; width: 300px; float: right; display: inline-block; align-content: center; padding-bottom: 1px;">

                    <asp:Button ID="btnInput1" runat="server" Style="font-weight:bold; font-size: 12px; width: 300px; height: 20px; padding-top: 1px; background-color: lightgrey; margin-bottom: 5px; text-align: center;" />
                    <%-- <div style="height: 15px"></div>--%>
                    <asp:Button ID="btnInput2" runat="server" Text=" " Style="font-weight:bold; font-size: 12px; width: 300px; height: 20px; padding-top: 1px; background-color: lightgrey; margin-bottom: 5px; text-align: center;" />
                    <%--  <div style="height: 15px"></div>--%>
                    <asp:Button ID="btnInput3" runat="server" Text=" " Style="font-weight:bold; font-size: 12px; width: 300px; height: 20px; padding-top: 1px; background-color: lightgrey; margin-bottom: 5px; text-align: center;" />
                    <%--<div style="height: 15px"></div>--%>
                    <asp:Button ID="btnInput4" runat="server" Text=" " Style="font-weight:bold; font-size: 12px; width: 380px; height: 20px; padding-top: 1px; background-color: lightgrey; margin-bottom: 5px; text-align: center;" />
                    <%--  <div style="height: 15px"></div>--%>
                    <asp:Button ID="btnInput5" runat="server" Text=" " Style="font-weight:bold; font-size: 12px; width: 380px; height: 20px; padding-top: 1px; background-color: lightgrey; margin-bottom: 5px; text-align: center;" />


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

                </asp:Panel>
            </td>
        </tr>
    </table>
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
                       <%--  <asp:Button Text="Grid" BorderStyle="solid" ID="TabGrid" CssClass="Initial" runat="server"
                            OnClick="TabGrid_Click" BackColor="LightGray" /> --%>
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

       <%-- <asp:View runat="server">
            <TWebControl:WebUserGridControl ID="WebUserGridControl" runat="server" />
        </asp:View>--%>
    </asp:MultiView>
    <%-- ==================================--%>
</asp:Content>


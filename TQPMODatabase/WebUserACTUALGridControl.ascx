<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserACTUALGridControl.ascx.cs" Inherits="TQPMODatabase.WebUserACTUALGridControl" %>

<script>  

    window.onload = function () {

        if (language == "1") {
            mainTitleIn = sessionStorage.getItem("mainTitleIn").toString();

        } else {
            mainTitleIn = sessionStorage.getItem("mainTitleIn").toString();
        }
        document.getElementById('mainTitle').innerText = mainTitleIn;

        for (let mth = 1; mth < 13; mth++) {

            if (mth < currentMonth) {
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[7].style.visibility = 'hidden';
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[14].style.visibility = 'hidden';
                document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[7].style.visibility = 'hidden';
                document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[14].style.visibility = 'hidden';

                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[8].style.backgroundColor = 'lightgrey';
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[9].style.backgroundColor = "lightgrey";
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[10].style.backgroundColor = "lightgrey";
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[12].style.backgroundColor = "lightgrey";
            }
            else {
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[8].style.backgroundColor = "#EBDEF0";
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[9].style.backgroundColor = "#EBDEF0";
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[10].style.backgroundColor = "#EBDEF0";
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[12].style.backgroundColor = "#EBDEF0";

                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[14].style.visibility = 'hidden';

                //$('#GridView1b').find('[input type="text"]').each(function () {
                //    $(this).attr('disabled', 'disabled');
                //})
            }
        }
        for (let mth = 0; mth < 13; mth++) {

            if (mth + 1 < currentMonth) {

                let txt5 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox5_" + mth;
                let txt6 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox6_" + mth;
                let txt7 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox7_" + mth;
                let txt8 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox8_" + mth;
                document.getElementById(txt5).readOnly = true;
                document.getElementById(txt6).readOnly = true;
                document.getElementById(txt7).readOnly = true;
                document.getElementById(txt8).readOnly = true;
            }
        }


        //Fill left grid with random number
        for (let row = 1; row < 13; row++) {
            document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[1].innerText = (Math.floor(Math.random() * (1000 - 100) + 100) / 100).toFixed(2);
            document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[2].innerText = (Math.floor(Math.random() * (1000 - 100) + 100) / 100).toFixed(2);
            document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[3].innerText = (Math.floor(Math.random() * (1000 - 100) + 100) / 100).toFixed(2);
            document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[5].innerText = (Math.floor(Math.random() * (1000 - 100) + 100) / 100).toFixed(2);
        }

        //Copy left grid value to right  grid.
        for (let row = 1; row < 13; row++) {
            if (row < currentMonth) {
                document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[8].innerText =
                    (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[1].innerText * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[9].innerText =
                    (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[2].innerText * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[10].innerText =
                    (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[3].innerText * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[12].innerText =
                    (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[5].innerText * 100) / 100).toFixed(2);
            }
        }

        //Calculate row totals and nettotals both grid
        for (let row = 1; row < 13; row++) {
            let TotalRight = 0;
            let NetTotalRight = 0;
            let TotalLeft = 0;
            let NetTotalLeft = 0;

            TotalRight += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[1].innerHTML);
            TotalRight += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[2].innerHTML);
            TotalRight += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[3].innerHTML);
            NetTotalRight += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[5].innerHTML);

            TotalLeft += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[8].innerHTML);
            TotalLeft += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[9].innerHTML);
            TotalLeft += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[10].innerHTML);
            NetTotalLeft += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[12].innerHTML);

            NetTotalRight += TotalRight;
            NetTotalLeft += TotalLeft;

            document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[4].innerHTML = (Math.round(TotalRight * 100) / 100).toFixed(2);
            document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[6].innerHTML = (Math.round(NetTotalRight * 100) / 100).toFixed(2);

            if (row < currentMonth) {
                document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[11].innerHTML = (Math.round(TotalLeft * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[13].innerHTML = (Math.round(NetTotalLeft * 100) / 100).toFixed(2);
            }
        }
        let txtb1 = 0;

        //Calculate column totals left grid
        for (let column = 1; column < 7; column++) {
            for (let row = 1; row < 13; row++) {
                txtb1 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[column].innerHTML);
            }

            document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[column].innerHTML = (Math.round(txtb1 * 100) / 100).toFixed(2);
            txtb1 = 0;
        }

        //Calculate column totals right grid

        let txtb21 = 0;
        for (let column = 8; column < 14; column++) {
            for (let row = 1; row < 13; row++) {
                if (!isNaN(parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[column].innerHTML))) {
                    txtb21 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row].cells[column].innerHTML);
                }
            }

            document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[column].innerHTML = (Math.round(txtb21 * 100) / 100).toFixed(2);
            txtb21 = 0;
        }
    }

    function NullAllValuesClick() {
        const currentMonth = new Date().getMonth() + 1;

        for (let column = 8; column < 14; column++) {
            for (let mth = 1; mth < 13; mth++) {
                if (mth >= currentMonth) {
                    let TextBox5 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox5_" + (mth - 1);
                    let TextBox6 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox6_" + (mth - 1);
                    let TextBox7 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox7_" + (mth - 1);
                    let TextBox8 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox8_" + (mth - 1);

                    (document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[11].innerText) = "";
                    (document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[13].innerText) = "";

                    document.getElementById(TextBox5).value = "";
                    document.getElementById(TextBox6).value = "";
                    document.getElementById(TextBox7).value = "";
                    document.getElementById(TextBox8).value = "";
                    document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[7].style.visibility = 'visible';
                    document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[14].style.visibility = 'hidden';
                }
            }
        }
        calculateColumnsTotal();
    }

    function clearAllValuesClick() {
        const currentMonth = new Date().getMonth() + 1;

        for (let column = 8; column < 14; column++) {
            for (let mth = 1; mth < 13; mth++) {
                if (mth >= currentMonth) {
                    let TextBox5 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox5_" + (mth - 1);
                    let TextBox6 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox6_" + (mth - 1);
                    let TextBox7 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox7_" + (mth - 1);
                    let TextBox8 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox8_" + (mth - 1);

                    (document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[11].innerText) = 0;
                    (document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[13].innerText) = 0;

                    document.getElementById(TextBox5).value = 0;
                    document.getElementById(TextBox6).value = 0;
                    document.getElementById(TextBox7).value = 0;
                    document.getElementById(TextBox8).value = 0;
                    document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[7].style.visibility = 'visible';
                    document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[14].style.visibility = 'hidden';
                }
            }
        }
        calculateColumnsTotal();
    }

    function GetSelectedRow(lnk) {

        const currentMonth = new Date().getMonth() + 1;
        var rowIn = lnk.parentNode.parentNode;
        let repeat = "no";
        var row = rowIn.rowIndex - 1;
        let TextBox5 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox5_" + row;
        let TextBox6 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox6_" + row;
        let TextBox7 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox7_" + row;
        let TextBox8 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox8_" + row;

        document.getElementById('<%= GridView1b.ClientID %>').rows[rowIn.rowIndex].cells[7].style.visibility = 'hidden';
        document.getElementById('<%= GridView1b.ClientID %>').rows[rowIn.rowIndex].cells[14].style.visibility = 'visible';

        document.getElementById(TextBox5).value = (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[1].innerText * 100) / 100).toFixed(2);
        document.getElementById(TextBox6).value = (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[2].innerText * 100) / 100).toFixed(2);
        document.getElementById(TextBox7).value = (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[3].innerText * 100) / 100).toFixed(2);
        document.getElementById(TextBox8).value = (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[5].innerText * 100) / 100).toFixed(2);

        document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[7].style.visibility = 'hidden';

        let theTotal = 0;
        let theNetTotal = 0;

        theTotal += parseFloat(document.getElementById(TextBox5).value);
        theTotal += parseFloat(document.getElementById(TextBox6).value);
        theTotal += parseFloat(document.getElementById(TextBox7).value);
        theNetTotal += parseFloat(document.getElementById(TextBox8).value);

        theNetTotal += theTotal;

        document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[11].innerHTML = (Math.round(theTotal * 100) / 100).toFixed(2);
        document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[13].innerHTML = (Math.round(theNetTotal * 100) / 100).toFixed(2);


        let txtb21 = 0;
        for (let column = 8; column < 14; column++) {

            for (let row2 = 1; row2 < 13; row2++) {

                if (row2 < currentMonth) {
                    if (!isNaN(parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row2].cells[column].innerText))) {
                        txtb21 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row2].cells[column].innerText);
                    }

                } else {

                    if (!isNaN(parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row2].cells[column].innerText))) {
                        txtb21 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row2].cells[column].innerText);
                    }
                }
            }
            if (column == 11 || column == 13) {
                document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[column].innerText = (Math.round(txtb21 * 100) / 100).toFixed(2);
            }

            txtb21 = 0;
            txtb22 = 0;
        }

        var tot1 = 0;
        var tot2 = 0;
        var tot3 = 0;
        var tot4 = 0;

        tot1 = parseFloat(document.getElementById(TextBox5).value);
        tot2 = parseFloat(document.getElementById(TextBox6).value);
        tot3 = parseFloat(document.getElementById(TextBox7).value);
        tot4 = parseFloat(document.getElementById(TextBox8).value);

        tot1 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[8].innerText);
        tot2 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[9].innerText);
        tot3 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[10].innerText);
        tot4 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[12].innerText);

        (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[8].innerText) = (Math.round(tot1 * 100) / 100).toFixed(2);
        (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[9].innerText) = (Math.round(tot2 * 100) / 100).toFixed(2);
        (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[10].innerText) = (Math.round(tot3 * 100) / 100).toFixed(2);
        (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[12].innerText) = (Math.round(tot4 * 100) / 100).toFixed(2);

    }

    function Update(lnk) {
        var rowIn = lnk.parentNode.parentNode;
        var row = rowIn.rowIndex - 1;

        let theTotal = 0;
        let theNetTotal = 0;

        let TextBox5 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox5_" + row;
        let TextBox6 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox6_" + row;
        let TextBox7 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox7_" + row;
        let TextBox8 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox8_" + row;

        theTotal += parseFloat(document.getElementById(TextBox5).value);
        theTotal += parseFloat(document.getElementById(TextBox6).value);
        theTotal += parseFloat(document.getElementById(TextBox7).value);
        theNetTotal += parseFloat(document.getElementById(TextBox8).value);

        theNetTotal += theTotal;

        document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[11].innerHTML = (Math.round(theTotal * 100) / 100).toFixed(2);
        document.getElementById('<%= GridView1b.ClientID %>').rows[row + 1].cells[13].innerHTML = (Math.round(theNetTotal * 100) / 100).toFixed(2);

        calculateColumnsTotal()
    }

    function calculateColumnsTotal() {
        const currentMonth = new Date().getMonth() + 1;
        let total8 = 0;
        let total9 = 0;
        let total10 = 0;
        let total11 = 0;
        let total12 = 0;
        let total13 = 0;

        for (let column2 = 8; column2 < 9; column2++) {
            for (let row22 = 1; row22 < 13; row22++) {

                if (row22 < currentMonth) {
                    total8 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row22].cells[column2].innerText);
                }
                else if (row22 >= currentMonth) {
                    let TextBox5bb = "MainContent_WebControlACTUALGrid_GridView1b_TextBox5_" + (row22 - 1);

                    if (!isNaN(parseFloat(document.getElementById(TextBox5bb).value))) {
                        total8 += parseFloat(document.getElementById(TextBox5bb).value);
                    }
                }
                (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[8].innerText) = (Math.round(total8 * 100) / 100).toFixed(2);
            }
        }

        for (let column2 = 9; column2 < 10; column2++) {
            for (let row22 = 1; row22 < 13; row22++) {

                if (row22 < currentMonth) {
                    total9 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row22].cells[column2].innerText);
                }
                else if (row22 >= currentMonth) {
                    let TextBox6bb = "MainContent_WebControlACTUALGrid_GridView1b_TextBox6_" + (row22 - 1);

                    if (!isNaN(parseFloat(document.getElementById(TextBox6bb).value))) {
                        total9 += parseFloat(document.getElementById(TextBox6bb).value);
                    }
                }
                (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[9].innerText) = (Math.round(total9 * 100) / 100).toFixed(2);
            }
        }

        for (let column2 = 10; column2 < 11; column2++) {
            for (let row22 = 1; row22 < 13; row22++) {

                if (row22 < currentMonth) {
                    total10 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row22].cells[column2].innerText);
                }
                else if (row22 >= currentMonth) {
                    let TextBox7bb = "MainContent_WebControlACTUALGrid_GridView1b_TextBox7_" + (row22 - 1);

                    if (!isNaN(parseFloat(document.getElementById(TextBox7bb).value))) {
                        total10 += parseFloat(document.getElementById(TextBox7bb).value);
                    }
                }
                (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[10].innerText) = (Math.round(total10 * 100) / 100).toFixed(2);
            }
        }

        for (let column2 = 12; column2 < 13; column2++) {
            for (let row22 = 1; row22 < 13; row22++) {

                if (row22 < currentMonth) {
                    total12 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row22].cells[column2].innerText);
                }
                else if (row22 >= currentMonth) {
                    let TextBox8bb = "MainContent_WebControlACTUALGrid_GridView1b_TextBox8_" + (row22 - 1);

                    if (!isNaN(parseFloat(document.getElementById(TextBox8bb).value))) {
                        total12 += parseFloat(document.getElementById(TextBox8bb).value);
                    }
                }
                (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[12].innerText) = (Math.round(total12 * 100) / 100).toFixed(2);
            }
        }

        for (let column2 = 11; column2 < 14; column2++) {
            for (let row22 = 1; row22 < 13; row22++) {
                if (column2 == 11) {
                    if (!isNaN(parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row22].cells[column2].innerText))) {
                        total11 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row22].cells[column2].innerText);
                    }
                    (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[11].innerText) = (Math.round(total11 * 100) / 100).toFixed(2);
                }
                if (column2 == 13) {
                    if (!isNaN(parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row22].cells[column2].innerText))) {
                        total13 += parseFloat(document.getElementById('<%= GridView1b.ClientID %>').rows[row22].cells[column2].innerText);
                    }
                    (document.getElementById('<%= GridView1b.ClientID %>').rows[13].cells[13].innerText) = (Math.round(total13 * 100) / 100).toFixed(2);
                }
            }
        }
    }

    function pushAllValuesClick() {

        //Transfer All values to Adjustments and Calculate totals
        const currentMonth = new Date().getMonth() + 1;
        var tabName = '<%=TabName%>';
        let theTotal = 0;
        let theNetTotal = 0;


        for (let mth = 1; mth < 13; mth++) {
            if (mth >= currentMonth) {

                let TextBox5 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox5_" + (mth - 1);
                let TextBox6 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox6_" + (mth - 1);
                let TextBox7 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox7_" + (mth - 1);
                let TextBox8 = "MainContent_WebControlACTUALGrid_GridView1b_TextBox8_" + (mth - 1);
                document.getElementById(TextBox5).value = (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[1].innerText * 100) / 100).toFixed(2);
                document.getElementById(TextBox6).value = (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[2].innerText * 100) / 100).toFixed(2);
                document.getElementById(TextBox7).value = (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[3].innerText * 100) / 100).toFixed(2);
                document.getElementById(TextBox8).value = (Math.round(document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[5].innerText * 100) / 100).toFixed(2);

                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[7].style.visibility = 'hidden';
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[14].style.visibility = 'visible';

                theTotal += parseFloat(document.getElementById(TextBox5).value);
                theTotal += parseFloat(document.getElementById(TextBox6).value);
                theTotal += parseFloat(document.getElementById(TextBox7).value);
                theNetTotal += parseFloat(document.getElementById(TextBox8).value);

                theNetTotal += theTotal;

                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[11].innerHTML = (Math.round(theTotal * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView1b.ClientID %>').rows[mth].cells[13].innerHTML = (Math.round(theNetTotal * 100) / 100).toFixed(2);
                theTotal = 0;
                theNetTotal = 0;
            }
        }

        calculateColumnsTotal();
    }

</script>

<div class="col-lg-12" style="display: inline-block; height: 25px;">
    <div class="col-lg-1"></div>
    <div class="col-lg-4">
    </div>
    <div class="col-lg-1">
        <asp:Image ID="Image2" class="button4" runat="server" src="/Images/exit.jpg"
            Style="margin-right: 11px;" OnClick="NullAllValuesClick()" />
    </div>
    <div class="col-lg-4">
    </div>
    <div class="col-lg-1"></div>
</div>
  <style>
    label{
        font-size:14px;
    }
</style>
<div class="col-lg-12" style="display: inline-block;">
    <div class="col-lg-1"></div>
    <div class="col-lg-4">
        <asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Left" Font-Size="smaller"
            RepeatDirection="vertical" RepeatLayout="Table">
            <asp:ListItem Value="1" Text="" />
            <asp:ListItem Value="2" Text="" />
            <asp:ListItem Value="3" Text="" />
        </asp:RadioButtonList>
    </div>

    <div class="col-lg-1">
        <asp:Image ID="Image3" class="button5  " runat="server" src="/Images/zero.jpg"
            OnClick="clearAllValuesClick()" />
    </div>
    <div class="col-lg-4">
        <asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="12px" RepeatDirection="horizontal" RepeatLayout="Table" Style="display: block;">
            <asp:ListItem Value="1" Text="" />
            <asp:ListItem Value="2" Text="" />
            <asp:ListItem Value="3" Text="" />
        </asp:RadioButtonList>
    </div>
    <div class="col-lg-1"></div>
</div>
<div class="col-lg-12" style="display: inline-block;">
    <div class="col-lg-1"></div>
    <div class="col-lg-4" style="text-align: center;">
        <label id="Label14" runat="server" style="font-weight: bold; font-size: smaller; border-style: solid; border-color: black; float: left; width: 400px; height: 25px;"></label>
    </div>
    <script>

        if (<%=language%> == "1") {
            document.getElementById('MainContent_WebControlACTUALGrid_Label14').innerHTML = "Rapports";
        } else {
            document.getElementById('MainContent_WebControlACTUALGrid_Label14').innerHTML = "Reports";
        }
    </script>
    <div class="col-lg-1">
        <asp:Image ID="Image1" class="button4" runat="server" src="/Images/moveAllArrow.jpg" OnClick="pushAllValuesClick()" />
    </div>
    <div class="col-lg-4" style="text-align: center;">
        <label runat="server" class="col-lg-5" id="Label15" style="font-weight: bold; font-size: smaller; border-style: solid; border-color: black; float: left; width: 400px; height: 25px;"></label>
    </div>
    <script>  

        if (<%=language%> == "1") {
            document.getElementById('MainContent_WebControlACTUALGrid_Label15').innerHTML = "Ajustements";
        } else {
            document.getElementById('MainContent_WebControlACTUALGrid_Label15').innerHTML = "Adjustments";
        }
    </script>
    <div class="col-lg-1"></div>
</div>

<table>
    <asp:Panel runat="server" ID="panel1">
        <tr>
            <td style="padding-left: 60px;">

                <asp:GridView class="myGridView" ID="GridView1b" runat="server" AutoGenerateColumns="false" Width="95%" ShowHeader="true" BorderColor="black" BorderStyle="solid" GridLines="Both" EditCellOnEnter="true" HeaderStyle-CssClass="centerHeaderText">
                    <Columns>
                        <asp:BoundField DataField="Month" HeaderText=" " ItemStyle-Width="82px" ItemStyle-Height="25px" />
                        <asp:TemplateField HeaderText="MAT" ItemStyle-Width="82px" HeaderStyle-HorizontalAlign="Right" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" EditCellOnEnter="true" ReadOnly="true" Style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="INT" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" EditCellOnEnter="true" ReadOnly="true" Style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="EXT" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" EditCellOnEnter="true" ReadOnly="true" Style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Total" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <asp:TextBox ID="Total" runat="server" BorderStyle="None" EditCellOnEnter="true" ReadOnly="true" Style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="CTRB" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None" EditCellOnEnter="true" ReadOnly="true" Style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Net Total" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <asp:TextBox ID="NetTotal" runat="server" BorderStyle="None" EditCellOnEnter="true" ReadOnly="true" Style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ItemStyle-Width="82px" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <asp:Image ID="ACTCMTS3" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                                    Style="margin-right: 10px;" OnClick="GetSelectedRow(this);" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="MAT" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <input id="TextBox5" runat="server" borderstyle="None" style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="INT" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <input id="TextBox6" runat="server" borderstyle="None" style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="EXT" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <input id="TextBox7" runat="server" borderstyle="None" style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <input id="Total2" runat="server" borderstyle="None" readonly="readonly" style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CTRB" ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <input id="TextBox8" runat="server" borderstyle="None" style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Net Total " ItemStyle-Width="82px" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <input id="NetTotal2" runat="server" borderstyle="None" readonly="readonly" style="text-align: right; width: 82px; height: 25px;" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField ItemStyle-Width="82px" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="25px">
                            <ItemTemplate>
                                <asp:Image ID="Update" class="button4" runat="server" src="/Images/updateButton.jpg"
                                    Style="margin-right: 10px;" OnClick="Update(this);" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </asp:Panel>
</table>
<%--</div>--%>
<style type="text/css">
    #MainContent_GridView1b {
        border: solid 1px Black !important;
    }

        #MainContent_GridView1b tr {
            /*border: solid 1px Black !important;*/
        }

        #MainContent_GridView1b td {
            border: solid 1px Black !important;
        }

    .centerHeaderText th {
        text-align: center;
    }
</style>

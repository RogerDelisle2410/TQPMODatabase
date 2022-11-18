<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserGridControl.ascx.cs" Inherits="TQPMODatabase.WebUserGridControl" %>


<script> 
    $(function () {
        $("#metaData").load("metaData.html");
        $("#viewtitle").load("ViewTitle.html");
    });

    window.onload = function () {
        const currentMonth = new Date().getMonth() + 1;
        var tabName = '<%=TabName%>';


        for (let mth = 1; mth < 13; mth++) {

            if (mth < currentMonth) {
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[0].style.visibility = 'hidden';
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[7].style.visibility = 'hidden';
                document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[0].style.visibility = 'hidden';
                document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[7].style.visibility = 'hidden';

                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[1].style.backgroundColor = 'lightgrey';
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[2].style.backgroundColor = "lightgrey";
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[3].style.backgroundColor = "lightgrey";
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[5].style.backgroundColor = "lightgrey";
            }
            else {
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[1].style.backgroundColor = "#EBDEF0";
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[2].style.backgroundColor = "#EBDEF0";
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[3].style.backgroundColor = "#EBDEF0";
                document.getElementById('<%= GridView2.ClientID %>').rows[mth].cells[5].style.backgroundColor = "#EBDEF0";

                $('#GridView2').find('[input type="text"]').each(function () {
                    $(this).attr('disabled', 'disabled');
                })
            }

            for (let mth = 0; mth < 13; mth++) {

                if (mth + 1 < currentMonth) {

                    let txt5 = "MainContent_WebControlGrid_GridView2_TextBox5_" + mth;
                    let txt6 = "MainContent_WebControlGrid_GridView2_TextBox6_" + mth;
                    let txt7 = "MainContent_WebControlGrid_GridView2_TextBox7_" + mth;
                    let txt8 = "MainContent_WebControlGrid_GridView2_TextBox8_" + mth;
                    document.getElementById(txt5).readOnly = true;
                    document.getElementById(txt6).readOnly = true;
                    document.getElementById(txt7).readOnly = true;
                    document.getElementById(txt8).readOnly = true;

                    //let txt512 = "MainContent_WebControlGrid_GridView2_TextBox5_12"
                    //let txt612 = "MainContent_WebControlGrid_GridView2_TextBox6_12"
                    //let txt712 = "MainContent_WebControlGrid_GridView2_TextBox7_12"
                    //let txt812 = "MainContent_WebControlGrid_GridView2_TextBox8_12"
                    //let txt912 = "MainContent_WebControlGrid_GridView2_Total2_12"
                    //let txt1012 = "MainContent_WebControlGrid_GridView2_NetTotal2_12"
                    //document.getElementById(txt512).readOnly = true;
                    //document.getElementById(txt612).readOnly = true;
                    //document.getElementById(txt712).readOnly = true;
                    //document.getElementById(txt812).readOnly = true;
                    //document.getElementById(txt912).readOnly = true;
                    //document.getElementById(txt1012).readOnly = true;

                }
            }
        }

        for (let row = 1; row < 13; row++) {
            document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[1].innerText = (Math.floor(Math.random() * (1000 - 100) + 100) / 100).toFixed(2);
            document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[2].innerText = (Math.floor(Math.random() * (1000 - 100) + 100) / 100).toFixed(2);
            document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[3].innerText = (Math.floor(Math.random() * (1000 - 100) + 100) / 100).toFixed(2);
            document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[5].innerText = (Math.floor(Math.random() * (1000 - 100) + 100) / 100).toFixed(2);
        }

        for (let row = 1; row < 13; row++) {
            if (row < currentMonth) {
                document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[1].innerText =
                    (Math.round(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[1].innerText * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[2].innerText =
                    (Math.round(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[2].innerText * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[3].innerText =
                    (Math.round(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[3].innerText * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[5].innerText =
                    (Math.round(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[5].innerText * 100) / 100).toFixed(2);
            }
        }

        //Calculate row totals and nettotals
        for (let row = 1; row < 13; row++) {
            let txtv1 = 0;
            let txtv2 = 0;
            let txtv3 = 0;
            let txtv4 = 0;
            txtv1 += parseFloat(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[1].innerHTML);
            txtv2 += parseFloat(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[2].innerHTML);
            txtv3 += parseFloat(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[3].innerHTML);
            txtv4 += parseFloat(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[5].innerHTML);
            let theTotal = txtv1 + txtv2 + txtv3;
            let theNetTotal = txtv1 + txtv2 + txtv3 + txtv4;
            document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[4].innerHTML = (Math.round(theTotal * 100) / 100).toFixed(2);
            document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[6].innerHTML = (Math.round(theNetTotal * 100) / 100).toFixed(2);
        }
        let txtb1 = 0;

        //Calculate column totals
        for (let column = 1; column < 7; column++) {
            for (let row = 1; row < 13; row++) {
                txtb1 += parseFloat(document.getElementById('<%= GridView1.ClientID %>').rows[row].cells[column].innerHTML);
            }

            document.getElementById('<%= GridView1.ClientID %>').rows[13].cells[column].innerHTML = (Math.round(txtb1 * 100) / 100).toFixed(2);
            txtb1 = 0;
        }

        for (let row = 1; row < 13; row++) {
            if (row < currentMonth) {

                let txtv1 = 0;
                let txtv2 = 0;
                let txtv3 = 0;
                let txtv4 = 0;
                txtv1 += parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[1].innerHTML);
                txtv2 += parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[2].innerHTML);
                txtv3 += parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[3].innerHTML);
                txtv4 += parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[5].innerHTML);
                let theTotal = txtv1 + txtv2 + txtv3;

                let theNetTotal = txtv1 + txtv2 + txtv3 + txtv4;


                document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[4].innerHTML = (Math.round(theTotal * 100) / 100).toFixed(2);
                document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[6].innerHTML = (Math.round(theNetTotal * 100) / 100).toFixed(2);
            }
        }

        //Calculate column totals

        let txtb21 = 0;
        for (let column = 1; column < 7; column++) {
            for (let row = 1; row < 13; row++) {
                if (!isNaN(parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[column].innerHTML))) {
                    txtb21 += parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row].cells[column].innerHTML);
                }
            }

            document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[column].innerHTML = (Math.round(txtb21 * 100) / 100).toFixed(2);
            txtb21 = 0;
        }
    }

    function GetSelectedRow(lnk) {

        const currentMonth = new Date().getMonth() + 1;
        var rowIn = lnk.parentNode.parentNode;
        let repeat = "no";
        var row = rowIn.rowIndex - 1;
        let TextBox5 = "MainContent_WebControlGrid_GridView2_TextBox5_" + row;
        let TextBox6 = "MainContent_WebControlGrid_GridView2_TextBox6_" + row;
        let TextBox7 = "MainContent_WebControlGrid_GridView2_TextBox7_" + row;
        let TextBox8 = "MainContent_WebControlGrid_GridView2_TextBox8_" + row;

        //All equal, no push to right.
        if (document.getElementById(TextBox5).value == document.getElementById('<%= GridView1.ClientID %>').rows[row + 1].cells[1].innerText &&
            document.getElementById(TextBox6).value == document.getElementById('<%= GridView1.ClientID %>').rows[row + 1].cells[2].innerText &&
            document.getElementById(TextBox7).value == document.getElementById('<%= GridView1.ClientID %>').rows[row + 1].cells[3].innerText &&
            document.getElementById(TextBox8).value == document.getElementById('<%= GridView1.ClientID %>').rows[row + 1].cells[5].innerText) {
            repeat = "yes";
        }
        //All blank, push to right
        else if (
            (document.getElementById(TextBox5).value == null || document.getElementById(TextBox5).value == 0) &&
            (document.getElementById(TextBox6).value == null || document.getElementById(TextBox6).value == 0) &&
            (document.getElementById(TextBox7).value == null || document.getElementById(TextBox7).value == 0) &&
            (document.getElementById(TextBox8).value == null || document.getElementById(TextBox8).value == 0)) {
            document.getElementById(TextBox5).value = (Math.round(document.getElementById('<%= GridView1.ClientID %>').rows[row + 1].cells[1].innerText * 100) / 100).toFixed(2);
            document.getElementById(TextBox6).value = (Math.round(document.getElementById('<%= GridView1.ClientID %>').rows[row + 1].cells[2].innerText * 100) / 100).toFixed(2);
            document.getElementById(TextBox7).value = (Math.round(document.getElementById('<%= GridView1.ClientID %>').rows[row + 1].cells[3].innerText * 100) / 100).toFixed(2);
            document.getElementById(TextBox8).value = (Math.round(document.getElementById('<%= GridView1.ClientID %>').rows[row + 1].cells[5].innerText * 100) / 100).toFixed(2);

            document.getElementById('<%= GridView2.ClientID %>').rows[row + 1].cells[0].style.visibility = 'hidden';
        }

        let txtv1 = 0;
        let txtv2 = 0;
        let txtv3 = 0;
        let txtv4 = 0;

        txtv1 += parseFloat(document.getElementById(TextBox5).value);
        txtv2 += parseFloat(document.getElementById(TextBox6).value);
        txtv3 += parseFloat(document.getElementById(TextBox7).value);
        txtv4 += parseFloat(document.getElementById(TextBox8).value);

        let theTotal = txtv1 + txtv2 + txtv3;
        let theNetTotal = txtv1 + txtv2 + txtv3 + txtv4;

        document.getElementById('<%= GridView2.ClientID %>').rows[row + 1].cells[4].innerHTML = (Math.round(theTotal * 100) / 100).toFixed(2);
        document.getElementById('<%= GridView2.ClientID %>').rows[row + 1].cells[6].innerHTML = (Math.round(theNetTotal * 100) / 100).toFixed(2);


        //function calculateNewRow() { 
        let txtb21 = 0;
       <%-- let txtb22 = 0; document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[1].innerText = 0;--%>
        for (let column = 1; column < 7; column++) {

            for (let row2 = 1; row2 < 13; row2++) {

                if (row2 < currentMonth) {
                    if (!isNaN(parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row2].cells[column].innerText))) {
                        txtb21 += parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row2].cells[column].innerText);
                    }

                } else {

                    if (!isNaN(parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row2].cells[column].innerText))) {
                        txtb21 += parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row2].cells[column].innerText);
                    }
                }
            }

           <%-- txtb22 = parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[column].innerText);
            document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[column].innerText = (Math.round(txtb22 * 100) / 100).toFixed(2); --%>

            if (column == 4 || column == 6) {
                document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[column].innerText = (Math.round(txtb21 * 100) / 100).toFixed(2);
            }

            txtb21 = 0;
            txtb22 = 0;
        }

        if (repeat != "yes") {
            var xxx1 = 0;
            var xxx2 = 0;
            var xxx3 = 0;
            var xxx4 = 0;
            var zzz1 = 0;
            var zzz2 = 0;
            var zzz3 = 0;
            var zzz4 = 0;
            var tot1 = 0;
            var tot2 = 0;
            var tot3 = 0;
            var tot4 = 0;

            zzz1 = parseFloat(document.getElementById(TextBox5).value);
            zzz2 = parseFloat(document.getElementById(TextBox6).value);
            zzz3 = parseFloat(document.getElementById(TextBox7).value);
            zzz4 = parseFloat(document.getElementById(TextBox8).value);

            xxx1 = parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[1].innerText);
            xxx2 = parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[2].innerText);
            xxx3 = parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[3].innerText);
            xxx4 = parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[5].innerText);

            parseFloat(tot1 += zzz1);
            parseFloat(tot1 += xxx1);
            parseFloat(tot2 += zzz2);
            parseFloat(tot2 += xxx2);
            parseFloat(tot3 += zzz3);
            parseFloat(tot3 += xxx3);
            parseFloat(tot4 += zzz4);
            parseFloat(tot4 += xxx4);

            (document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[1].innerText) = (Math.round(tot1 * 100) / 100).toFixed(2);
            (document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[2].innerText) = (Math.round(tot2 * 100) / 100).toFixed(2);
            (document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[3].innerText) = (Math.round(tot3 * 100) / 100).toFixed(2);
            (document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[5].innerText) = (Math.round(tot4 * 100) / 100).toFixed(2);
        }
        repeat = ("no");
    }

    function Update(lnk) {

        const currentMonth = new Date().getMonth() + 1;
        var rowIn = lnk.parentNode.parentNode;
        var row = rowIn.rowIndex - 1;


        let zz1 = 0;
        let total2 = 0;


        let TextBox5 = "MainContent_WebControlGrid_GridView2_TextBox5_" + row;
        let TextBox6 = "MainContent_WebControlGrid_GridView2_TextBox6_" + row;
        let TextBox7 = "MainContent_WebControlGrid_GridView2_TextBox7_" + row;
        let TextBox8 = "MainContent_WebControlGrid_GridView2_TextBox8_" + row;

        let txtv1 = 0;
        let txtv2 = 0;
        let txtv3 = 0;
        let txtv4 = 0;

        txtv1 += parseFloat(document.getElementById(TextBox5).value);
        txtv2 += parseFloat(document.getElementById(TextBox6).value);
        txtv3 += parseFloat(document.getElementById(TextBox7).value);
        txtv4 += parseFloat(document.getElementById(TextBox8).value);

        let theTotal = txtv1 + txtv2 + txtv3;
        let theNetTotal = txtv1 + txtv2 + txtv3 + txtv4;

        document.getElementById('<%= GridView2.ClientID %>').rows[row + 1].cells[4].innerHTML = (Math.round(theTotal * 100) / 100).toFixed(2);
        document.getElementById('<%= GridView2.ClientID %>').rows[row + 1].cells[6].innerHTML = (Math.round(theNetTotal * 100) / 100).toFixed(2);

        for (let column2 = 1; column2 < 7; column2++) {
            for (let row22 = 1; row22 < 13; row22++) {

                if (row22 < currentMonth && column2 == 1) {
                    //let TextBox5b = "MainContent_WebControlGrid_GridView2_TextBox5_" + row22;
                    zz1 = parseFloat(document.getElementById('<%= GridView2.ClientID %>').rows[row22].cells[column2].innerText);
                    total2 += zz1;
                }
                else if (row22 >= currentMonth && column2 == 1) {
                    let TextBox5bb = "MainContent_WebControlGrid_GridView2_TextBox5_" + (row22 - 1);
                    zz1 = parseFloat(document.getElementById(TextBox5bb).value);
                    total2 += zz1;
                }
                (document.getElementById('<%= GridView2.ClientID %>').rows[13].cells[1].innerText) = (Math.round(total2 * 100) / 100).toFixed(2);
            }
        }
    }


</script>

<div class="  col-lg-12" style="height: 25px; display: inline-block;">
    <div class="col-lg-1" style="height: 25px; display: inline-block;"></div>
    <div class="  col-lg-3" style="height: 25px;">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Left" Font-Size="smaller"
            RepeatDirection="vertical" RepeatLayout="Table">
            <asp:ListItem Value="1" Text="2021" />
            <asp:ListItem Value="2" Text="2022" />
            <asp:ListItem Value="3" Text="2023" />
        </asp:RadioButtonList>
    </div>
    <div class="col-lg-2" style="height: 25px; display: inline-block; font-size: medium; font-weight: bold; text-align: right;"></div>
    <div class="col-lg-1" style="height: 25px; display: inline-block;">
        <asp:Image ID="Image15" class="button4" runat="server" src="/Images/exit.jpg"
            Style="margin-right: 11px;" OnClick="NullAllValuesClick()" />
    </div>
    <div class="  col-lg-3" style="height: 25px;">
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="12px" RepeatDirection="horizontal" RepeatLayout="Table" Style="display: block;">
            <asp:ListItem Value="1" Text="2021" />
            <asp:ListItem Value="2" Text="2022" />
            <asp:ListItem Value="3" Text="2023" />
        </asp:RadioButtonList>
    </div>
    <div class="col-lg-2" style="height: 25px; display: inline-block;"></div>
</div>

<div class="col-lg-12" style="text-align: center; height: 25px; padding-bottom: 5px;">
    <div class="col-lg-1" style="width: 5.1%; height: 25px;"></div>
    <label id="Label14" runat="server" style="font-weight: bold; font-size: smaller; border-style: solid; border-color: black; float: left; width: 472px; height: 25px;"></label>

    <script>   

        if (<%=language%> == "1") {
            document.getElementById('MainContent_WebControlGrid_Label14').innerHTML = "Rapports";
        } else {
            document.getElementById('MainContent_WebControlGrid_Label14').innerHTML = "Reports";
        }
    </script>

    <div class="col-lg-1" style="width: 11.0%; text-align: center;">
        <asp:Image ID="Image1" class="button5  " runat="server" src="/Images/zero.jpg"
            OnClick="clearAllValuesClick()" />
    </div>
    <label runat="server" class="col-lg-5" id="Label15" style="font-weight: bold; font-size: smaller; border-style: solid; border-color: black; float: left; width: 472px; height: 25px;"></label>

    <script>  

        if (<%=language%> == "1") {
            document.getElementById('MainContent_WebControlGrid_Label15').innerHTML = "Ajustements";
        } else {
            document.getElementById('MainContent_WebControlGrid_Label15').innerHTML = "Adjustments";
        }

    </script>
</div>

<%--<div class="col-lg-12" style="text-align: center; height: 25px; padding-bottom: 5px;">
    <div class="col-lg-6" style="width: 45%; height: 25px;"></div>
    <div class="col-lg-1" style="width: 14.0%; text-align: center;">
        <asp:Image ID="Image17" class="button4" runat="server" src="/Images/moveAllArrow.jpg" OnClick="pushAllValuesClick()" />
    </div>
    <div class="col-lg-5" style="height: 25px;"></div>
</div>--%>

<table>
    <asp:Panel runat="server" ID="panel1"  >
        <tr>
            <td>

                <asp:GridView class="myGridView" ID="GridView1" runat="server" AutoGenerateColumns="false" Width="95%" ShowHeader="true" BorderColor="black" BorderStyle="solid" GridLines="Both" HeaderStyle-HorizontalAlign="Center" EditCellOnEnter="true">
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
                    </Columns>
                </asp:GridView>
            </td>
            <%-- ====================================================================================--%>
            <td>
                <asp:GridView class="myGridView" ID="GridView2" runat="server" AutoGenerateColumns="false" Width="95%" ShowHeader="true" BorderColor="black" BorderStyle="solid" GridLines="Both" ItemStyle-Width="82px" HeaderStyle-HorizontalAlign="Center" EditCellOnEnter="true" ItemStyle-Height="25px">
                    <Columns>
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
                                <asp:Image ID="Update" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                                    Style="margin-right: 10px;" OnClick="Update(this);" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </asp:Panel>
</table>
<style type="text/css">
    #MainContent_GridView1 {
        border: solid 1px Black !important;
    }

        #MainContent_GridView1 tr {
            /*border: solid 1px Black !important;*/
        }

        #MainContent_GridView1 td {
            border: solid 1px Black !important;
        }
</style>

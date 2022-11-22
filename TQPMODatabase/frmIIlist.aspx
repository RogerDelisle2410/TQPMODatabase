<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FrmIIlist.aspx.cs" Inherits="TQPMODatabase.FrmIIlist" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="js/scripts.js"></script>

    <script src="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css"></script>

    <%--<div id="metaData"></div>--%>
    <script>  

        $(function () {
            //$("#metaData").load("metaData.html");
            $("#viewtitle").load("ViewTitle.html");
            $('#example').DataTable();
            $('#example2').DataTable();
        });

        function ModifySelectedRow(lnk) {
            var rowIn = lnk.parentNode.parentNode;
            var row = rowIn.rowIndex;
            var Id = document.getElementById('<%= GridView.ClientID %>').rows[row].cells[0].innerText;
            javascript: window.close(), window.open('FrmModifyII.aspx?Arg1=' + Id, '_self'); return false;
        }
        function DeleteSelectedRow(lnk) {
            var rowIn = lnk.parentNode.parentNode;
            var row = rowIn.rowIndex;
            var Id = document.getElementById('<%= GridView.ClientID %>').rows[row].cells[0].innerText;
            var iinam = document.getElementById('<%= GridView.ClientID %>').rows[row].cells[3].innerText;
            javascript: window.close(), window.open("FrmModifyII.aspx?Arg2=" + Id + "&Arg3=" + iinam + "", "_self"); return false;
        }  
    </script>

    <div class="column" style="background-color: white; width: 3%;"></div>
    <div class="column" style="width: 94%; height: auto;">
        <script>
            if (<%=language%> == "1") {
                sessionStorage.setItem("mainTitleIn", "Liste des II");
            } else {
                sessionStorage.setItem("mainTitleIn", "II List");
            }
        </script>
        <hr />

        <div class="col-lg-12">
            <div class="col-lg-1" style="height: 200px;"></div>
            <div class="col-lg-10" style="">
                <label id="label99">aaa </label>
                <script>  
                    if (<%=language%> == "1") {
                        document.getElementById('label99').innerHTML = "Rechercher";
                    } else {
                        document.getElementById('label99').innerHTML = "Search";
                    }
                </script>
                <asp:TextBox ID="txtSearch" runat="server" Font-Size="16px" Style="float: left;" AutoPostBack="true" OnTextChanged="BindGrid"></asp:TextBox>
                <label>&nbsp;&nbsp;&nbsp</label>
                <asp:LinkButton runat="server" OnClick="ClearBox">  
                <img Type="submit" runat="server" style="float: left; width: 20px; margin-left: -40px; align-content: center;"  src="/Images/deleteX.jpg" /> 
                </asp:LinkButton>
                <label>&nbsp;&nbsp;&nbsp</label> 

                <div class="col-lg-3" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                    <asp:Button ID="button1" runat="server" Style="visibility: hidden; height: 25px; width: auto; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                        Text=" " OnClick="DeleteCheckedRecords  "/>
                </div>
                <script>   
                    if (<%=language%> == "1") {
                        document.getElementById('MainContent_button1').value = "Supprimer";
                    } else {
                        document.getElementById('MainContent_button1').value = "Delete";
                    }
                </script>
                <div class="col-lg-3" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                    <asp:Button ID="button2" runat="server" Style="height: 25px; width: auto; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                        Text=" " OnClientClick="javascript:window.close(), window.open('FrmAddII.aspx', '_self'); return false" />
                </div>
                <script>   
                    if (<%=language%> == "1") {
                        document.getElementById('MainContent_button2').value = "Ajouter un nouvel II";
                    } else {
                        document.getElementById('MainContent_button2').value = "Add a new II ";
                    }
                </script>
                <div class="col-lg-12" style="height: 10px;"></div>

                <table>
                    <tr>
                        <td>
                            <%--<asp:Panel runat="server">--%>

                            <asp:GridView CssClass="myGridView" ID="GridView" runat="server" AutoGenerateColumns="false" Width="800px" ShowHeader="true" BorderColor="black" BorderStyle="solid" GridLines="Both" HeaderStyle-CssClass="centerHeaderText" Font-Bold="false" Font-Size="Smaller" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging" PageSize="9">
                                <PagerStyle Wrap="False" CssClass="GridPager" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <Columns>

                                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true" ItemStyle-HorizontalAlign="center">
                                        <ItemStyle CssClass="" Width="75" />
                                    </asp:BoundField>
                                    <asp:TemplateField ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" onclick="myFunction(this)" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:BoundField DataField="IInum" HeaderText="" ItemStyle-Width="150px"
                                        ItemStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="IInam" HeaderText=" " ItemStyle-Width="400px" ItemStyle-HorizontalAlign="Left" />
                                    <asp:BoundField DataField="Year" HeaderText=" " ItemStyle-Width="100px"
                                        ItemStyle-HorizontalAlign="center" />

                                    <asp:TemplateField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server"
                                                NavigateUrl='#'
                                                Text=" " OnClick="ModifySelectedRow(this);">
                                            </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink2" runat="server"
                                                NavigateUrl='#'
                                                Text=" " OnClick="DeleteSelectedRow(this);"> 
                                            </asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                            <script>var row = <%=GridView.Rows.Count %>
                                    if (<%=language%> == "1") {
                                    for (let i = 0; i < row; i++) {
                                        document.getElementById("MainContent_GridView_HyperLink1_" + i).innerText = "Modifier";
                                        document.getElementById("MainContent_GridView_HyperLink2_" + i).innerText = "Supprimer";
                                    }
                                }
                                else {
                                    for (let i = 0; i < row; i++) {
                                        document.getElementById("MainContent_GridView_HyperLink1_" + i).innerText = "Edit";
                                        document.getElementById("MainContent_GridView_HyperLink2_" + i).innerText = "Delete";
                                    }
                                }

                                if (<%=language%> == "1") {
                                    document.getElementById('<%= GridView.ClientID %>').rows[0].cells[2].innerText = "Code II";
                                    document.getElementById('<%= GridView.ClientID %>').rows[0].cells[3].innerText = "Description II";
                                    document.getElementById('<%= GridView.ClientID %>').rows[0].cells[4].innerText = "Année Fiscale";
                                    //document.getElementById('searchBox').innerHTML = "Recherche:";

                                }
                                else {
                                    document.getElementById('<%= GridView.ClientID %>').rows[0].cells[2].innerText = "II Code";
                                    document.getElementById('<%= GridView.ClientID %>').rows[0].cells[3].innerText = "II Description";
                                    document.getElementById('<%= GridView.ClientID %>').rows[0].cells[4].innerText = "Fiscal year";
                                    //document.getElementById('searchBox').innerHTML = "Search:";
                                }


                            </script>
                            <script> 
                                function Search_Gridview(strKey) {
                                    document.getElementById("<%=GridView.ClientID%>").AllowPaging = false;

                                    var strData = strKey.value.toLowerCase().split(" ");
                                    var tblData = document.getElementById("<%=GridView.ClientID%>");
                                    var rowData1;
                                    var rowData2;
                                    var rowData3;

                                    //for (var ii = 1; ii < tblData. )
                                    for (var i = 1; i < tblData.rows.length; i++) {
                                        rowData1 = tblData.rows[i].cells[1].innerHTML;
                                        rowData2 = tblData.rows[i].cells[2].innerHTML;
                                        rowData3 = tblData.rows[i].cells[3].innerHTML;
                                        var styleDisplay = 'none';
                                        for (var j = 0; j < strData.length; j++) {
                                            if (rowData1.toLowerCase().indexOf(strData[j]) >= 0 ||
                                                rowData2.toLowerCase().indexOf(strData[j]) >= 0 ||
                                                rowData3.toLowerCase().indexOf(strData[j]) >= 0)
                                                styleDisplay = '';
                                            else {
                                                styleDisplay = 'none';
                                                break;
                                            }
                                        }
                                        tblData.rows[i].style.display = styleDisplay;
                                    }
                                    document.getElementById("<%=GridView.ClientID%>").AllowPaging = true;
                                }

                            </script>
                            <%--  </asp:Panel>--%>

                        </td>
                    </tr>
                </table>
            </div>
          
            <div class="col-lg-1" style="">
                <asp:LinkButton Style="float: right; padding-top: 2px; padding-left: 10px;" runat="server"
                    OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false">
                                <img class="theImg" style="width:40px; height:40px;" src="/Images/MainMenu.jpg" >	
                </asp:LinkButton>
            </div>



        </div>

          <asp:HiddenField ID="hdnfldVariable" runat="server" />
        <script type="text/javascript">
           
            function myFunction(lnk) {
                document.getElementById('<%=button1.ClientID %>').style.visibility = "hidden";
                var grid = document.getElementById("<%= GridView.ClientID %>");
                var cell;
               Int16Array   = [];
                if (grid.rows.length > 0) {
                    for (i = 1; i < grid.rows.length; i++) {
                        cell = grid.rows[i].cells[1];
                        cell2 = grid.rows[i].cells[0].innerHTML;

                        for (j = 0; j < cell.childNodes.length; j++) {
                            if (cell.childNodes[j].type == "checkbox") {
                                if (cell.childNodes[j].checked) {
                               document.getElementById('<%=button1.ClientID %>').style.visibility = "visible";  
                                    Int16Array.push(  cell2  );
                                    document.getElementById('<%=hdnfldVariable.ClientID%>').value =  Int16Array ; 
                                    //alert(Int16Array);
                                } 
                            }
                        } 
                    }
                }
            }

        </script>

        <div class="col-lg-12 " style="height: 10px;">
        </div>
        <div class="col-lg-3 " style="height: 10px;">
        </div>
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

            .centerHeaderText th {
                text-align: center;
            }


            tr.GridPager td {
                height: 26px;
                margin: 0;
                padding: 0;
                border: 0;
            }

            .GridPager a, .GridPager span {
                display: block;
                width: 20px;
                font-weight: bold;
                text-align: center;
                text-decoration: none;
                margin: 0;
                padding: 0;
                font-size: 80%;
            }

            .GridPager a {
                background-color: #f5f5f5;
                color: #969696;
                border: 1px solid #dddddd;
                height: 20px;
                font-size: 80%;
            }

            .GridPager span {
                background-color: #ccdef4;
                color: #000;
                border: 1px solid #969696;
                height: 20px;
            }
        </style>
    </div>

    <div class="column" style="background-color: white; width: 3%;"></div>
</asp:Content>

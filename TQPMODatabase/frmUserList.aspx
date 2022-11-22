<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FrmUserList.aspx.cs" Inherits="TQPMODatabase.FrmUserList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <script> 
        $(function () {
            $("#metaData").load("metaData.html");
            $("#viewtitle").load("ViewTitle.html");
        });

        function ModifySelectedRow(lnk) {
            var rowIn = lnk.parentNode.parentNode;
            var row = rowIn.rowIndex;
            var userId = document.getElementById('<%= GridView.ClientID %>').rows[row].cells[0].innerText;
            javascript: window.close(), window.open('FrmModifyUser.aspx?Arg1=' + userId, '_self'); return false;
        }
        function DeleteSelectedRow(lnk) {
            var rowIn = lnk.parentNode.parentNode;
            var row = rowIn.rowIndex;
            var userId = document.getElementById('<%= GridView.ClientID %>').rows[row].cells[0].innerText; 
            var userName = document.getElementById('<%= GridView.ClientID %>').rows[row].cells[3].innerText; 
            //alert(userId + '  ' + userName);
            javascript: window.close(), window.open("FrmModifyUser.aspx?Arg2=" + userId + "&Arg3=" + userName + "","_self"); return false; 
        }
    </script>

    <div class="column" style="background-color: white; width: 2%;"></div>
    <div class="column" style="width: 96%; height: auto;">
        <script> 
            if (<%=language%> == "1") {
                sessionStorage.setItem("mainTitleIn", "Ajout Nouveau II");
            } else {
                sessionStorage.setItem("mainTitleIn", "Added New II");
            }
        </script>
        <hr />
        <div class="col-lg-12">
            <div class="col-lg-1" style="height: 200px;"></div>
            <div class="col-lg-10" style="">
                <label id="searchBox"></label>
                <asp:TextBox ID="txtSearch" runat="server" Font-Size="14px" Style="float: left; font-weight: 200" onkeyup="Search_Gridview(this)"> </asp:TextBox>
                <label>&nbsp;&nbsp;&nbsp</label>
                <asp:LinkButton runat="server" OnClick="ClearBox">  
                <img Type="submit" runat="server" style="float: left; width: 20px; margin-left: -40px; align-content: center;"  src="/Images/deleteX.jpg" /> 
                </asp:LinkButton>
                <label>&nbsp;&nbsp;&nbsp</label>
                 <div class="col-lg-3" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                    <asp:Button ID="button2" runat="server" Style="  height: 25px; width: auto; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                        Text=" " OnClientClick="javascript:window.close(), window.open('FrmAddUser.aspx', '_self'); return false"/> 
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
                            <asp:Panel runat="server">
                                <asp:GridView CssClass=" " ID="GridView" runat="server" AutoGenerateColumns="false" ShowHeader="true" Width="900px" BorderColor="black" BorderStyle="solid" GridLines="Both" HeaderStyle-CssClass="centerHeaderText" Font-Bold="false" Font-Size="Smaller">
                                    <Columns>
                                        <asp:BoundField DataField="ID_User" HeaderText=" " ReadOnly="true">
                                            <ItemStyle CssClass="   " Width="55" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="TelusCodeUser" HeaderText=" " ItemStyle-Width="120"
                                            ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="SAPCodeUser" HeaderText="" ItemStyle-Width="120" ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="NameUser" HeaderText=" " ItemStyle-Width="250px"
                                            ItemStyle-HorizontalAlign="left" />
                                        <asp:BoundField DataField="EmailUser" HeaderText=" " ItemStyle-Width="200" ItemStyle-HorizontalAlign="left" />
                                        <asp:BoundField DataField="RoleUser" HeaderText=" " ItemStyle-Width="55" ItemStyle-HorizontalAlign="center" />
                                        <asp:BoundField DataField="StatusUser" HeaderText=" " ItemStyle-Width="55" ItemStyle-HorizontalAlign="center" />
                                        <asp:BoundField DataField="ID_Manager" HeaderText=" " ItemStyle-Width="55" ItemStyle-HorizontalAlign="center" />
                                        <%--<asp:TemplateField ItemStyle-Width="82px" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="25px">
                                            <ItemTemplate>
                                                <asp:Image ID="ACTCMTS3" class="button4" runat="server" src="/Images/Modifier.jpg"
                                                    Style="margin-right: 10px; height: 20px; width: 80px;" OnClick="ModifySelectedRow(this);" />
                                            </ItemTemplate>
                                        </asp:TemplateField>--%>

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
                                <%--OnClick="DeleteSelectedRow(this);"> --%>
                                <script> 
                                    var row = <%=GridView.Rows.Count %>
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
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[1].innerText = "Code Telus";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[2].innerText = "Code SAP";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[3].innerText = "Nom";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[4].innerText = "Courriel";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[5].innerText = "Rôle";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[6].innerText = "Statut";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[7].innerText = "Gest. ID";
                                        document.getElementById('searchBox').innerHTML = "Recherche:";
                                    }
                                    else {
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[1].innerText = "Telus Code";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[2].innerText = "SAP Code";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[3].innerText = "Name";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[4].innerText = "Email";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[5].innerText = "Role";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[6].innerText = "Status";
                                        document.getElementById('<%= GridView.ClientID %>').rows[0].cells[7].innerText = "ID MGMT";
                                        document.getElementById('searchBox').innerHTML = "Search:";
                                    }
                                    //Rôle
                                </script>
                                <script> 
                                    function Search_Gridview(strKey) {
                                        var strData = strKey.value.toLowerCase().split(" ");
                                        var tblData = document.getElementById("<%=GridView.ClientID%>");
                                        var rowData0;
                                        var rowData1;
                                        var rowData2;
                                        var rowData3;
                                        for (var i = 1; i < tblData.rows.length; i++) {
                                            rowData0 = tblData.rows[i].cells[1].innerHTML;
                                            rowData1 = tblData.rows[i].cells[2].innerHTML;
                                            rowData2 = tblData.rows[i].cells[3].innerHTML;
                                            rowData3 = tblData.rows[i].cells[4].innerHTML;
                                            var styleDisplay = 'none';
                                            for (var j = 0; j < strData.length; j++) {
                                                if (rowData0.toLowerCase().indexOf(strData[j]) >= 0 ||
                                                    rowData1.toLowerCase().indexOf(strData[j]) >= 0 ||
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
                                    }
                                </script>

                                <%-- ====================================================================================--%>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="col-lg-1" style="">
            </div>

            <asp:LinkButton Style="float: right; padding-top: 2px; padding-left: 10px;" runat="server"
                OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false">

                                <img class="theImg" style="width:40px; height:40px;" src="/Images/MainMenu.jpg" >	
            </asp:LinkButton>

        </div>

        <%-- OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx' );">--%>
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

            .hiddencol {
                display: none;
            }
        </style>
    </div>
    <div class="column" style="background-color: white; width: 2%;"></div>
</asp:Content>

<%@ Page Title="Ajout RSUB" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmAjoutRSUB.aspx.cs" Inherits="TQPMODatabase.FrmAjoutRSUB" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>
    <div class="column" style="background-color: white; width: 10%;"></div>
    <div class="column" style="width: 80%; height: auto;">
        <div class="container" style="width: 100%; background-color: lightgray;">

            <div class="row" style="background-color: #6F3198;">
                <div class="AllHeader  col-lg-2" style="display: inline-block; height: 50px;">
                    <img class="theImg2" src="/Images/TelusLogo.jpg">
                </div>
                <div class="AllHeader  col-lg-9" style="display: inline-block; height: 50px;">
                    <label id="label1">
                    </label>
                    <script>   
                        if (<%=language%> == "1") {
                            document.getElementById('label1').innerHTML = "Ajout Commentaire RSUB";
                        } else {
                            document.getElementById('label1').innerHTML = "Add RSUB Comment";
                        }
                    </script>
                </div>

                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmAdminSection.aspx', '_self'); return false  ">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                </div>
            </div>

            <div class="row">

                <div class="col-lg-6" style="">
                    <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                        <div class="panel-body" style="height: 128px; border-style: solid; border-color: black; margin-top: 0!important;">

                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label id="label2" for="nameField" class="col-xs-5"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label2').innerHTML = "Demandeur:";
                                        } else {
                                            document.getElementById('label2').innerHTML = "Applicant:";
                                        }
                                    </script>
                                    <div class="col-xs-3">
                                        <asp:DropDownList ID="DropDownList22" runat="server" CssClass="dropDown" Style="width: 120px; height: 20px; display: inline-block; margin-top: 2px; float: left;">
                                            <asp:ListItem Text="Sélectionner" Enabled="true" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Roger Delisle" Enabled="true" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="JF Lepage" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="JF Bernier" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="Fabio Reis" Value="4"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="emailField" class="col-xs-5">Date:</label>
                                    <div class="col-xs-7">
                                        <input type="text" class="form-control " style="margin-top: 2px; width: 115px; height: 20px; float: left;" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6" style="">
                    <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                        <div class="panel-body" style="height: 128px; border-style: solid; border-color: black; margin-top: 0!important;">

                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="nameField" class="col-xs-5">II:</label>
                                    <div class="col-xs-7">

                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropDown" Style="width: 120px; height: 20px; display: inline-block; margin-top: 2px; float: left;">
                                            <asp:ListItem Text="Sélectionner" Enabled="true" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="BL04.19.T0510" Enabled="true" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="BL04.19.T0511" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="BL04.19.T0512" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="BL04.19.T0513" Value="4"></asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <label id="label3" for="emailField" class="col-xs-5"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label3').innerHTML = "Projet:";
                                        } else {
                                            document.getElementById('label3').innerHTML = "Project:";
                                        }
                                    </script>
                                    <div class="col-xs-7">
                                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropDown" Style="width: 120px; height: 20px; display: inline-block; margin-top: 2px; float: left;">
                                            <asp:ListItem Text="Sélectionner" Enabled="true" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="P-2170477.01" Enabled="true" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="P-2170477.02" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="P-2170477.03" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="P-2170477.04" Value="4"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="phoneField" class="col-xs-5">C/E:</label>
                                    <div class="col-xs-7">
                                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="dropDown" Style="width: 120px; height: 20px; display: inline-block; margin-top: 2px; float: left;">
                                            <asp:ListItem Text=" " Enabled="true" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text=" " Enabled="true" Value="1"></asp:ListItem>
                                            <asp:ListItem Text=" " Value="2"></asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-2" style=""></div>
                <div class="col-lg-8" style="">
                    <div class="panel panel-default" style="margin: 0 !important; padding: 0 !important;">
                        <div class="panel-body" style="height: auto; border-style: solid; border-color: black; margin-top: 0!important;">

                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label id="label4" for="nameField" class="col-xs-5"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label4').innerHTML = "Année Budget:";
                                        } else {
                                            document.getElementById('label4').innerHTML = "Year Budget:";
                                        }
                                    </script>
                                    <div class="col-xs-7">
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropDown" Style="width: 120px; height: 20px; display: inline-block; margin-top: 2px; float: left;">
                                            <asp:ListItem Text="Sélectionner" Enabled="true" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text=" " Enabled="true" Value="1"></asp:ListItem>
                                            <asp:ListItem Text=" " Value="2"></asp:ListItem>
                                            <asp:ListItem Text=" " Value="3"></asp:ListItem> 
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label id="label5" for="emailField" class="col-xs-5"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label5').innerHTML = "Ancien Budget:";
                                        } else {
                                            document.getElementById('label5').innerHTML = "Old Budget:";
                                        }
                                    </script>
                                    <div class="col-xs-7">
                                        <input type="text" class="form-control " style="margin-top: 2px; width: 115px; height: 20px; float: left;" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label id="label6" for="phoneField" class="col-xs-5"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label6').innerHTML = "Nouveau Budget:";
                                        } else {
                                            document.getElementById('label6').innerHTML = "New Budget:";
                                        }
                                    </script>
                                    <div class="col-xs-7">
                                        <input type="text" class="form-control " style="margin-top: 2px; width: 115px; height: 20px; float: left;" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label id="label7" for="emailField" class="col-xs-5"></label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label7').innerHTML = "Montant RSUB:";
                                        } else {
                                            document.getElementById('label7').innerHTML = "Amount RSUB:";
                                        }
                                    </script>
                                    <div class="col-xs-7">
                                        <input type="text" class="form-control " style="margin-top: 2px; width: 115px; height: 20px; float: left;" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label id="label8" for="phoneField" class="col-xs-5">:</label>
                                    <script>   
                                        if (<%=language%> == "1") {
                                            document.getElementById('label8').innerHTML = "Raison du RSUB:";
                                        } else {
                                            document.getElementById('label8').innerHTML = "Reason for RSUB:";
                                        }
                                    </script>
                                    <div class="col-xs-7">


                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropDown" Style="width: 120px; height: 20px; display: inline-block; margin-top: 2px; float: left;">
                                            <asp:ListItem Text="Sélectionner" Enabled="true" Value="-1"></asp:ListItem>
                                            <asp:ListItem Text="Base Access" Enabled="true" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Fin Année" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="Note" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="PCR" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="TCLO" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="TECO" Value="6"></asp:ListItem>
                                            <asp:ListItem Text="JIRA" Value="7"></asp:ListItem>
                                            <asp:ListItem Text="Courriel" Value="8"></asp:ListItem>
                                            <asp:ListItem Text="Rollover" Value="9"></asp:ListItem>
                                            <asp:ListItem Text="Autres" Value="10"></asp:ListItem>
                                        </asp:DropDownList>

                                        <script>   
                                            if (<%=language%> == "1") {
                                                document.getElementById('label8').innerHTML = "Raison du RSUB:";
                                            } else {
                                                document.getElementById('label8').innerHTML = "Reason for RSUB:";
                                            }
                                    </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2" style=""></div>
            </div>

            <div class="row" style="height: 25px; align-content: center;">
                <div class="col-lg-3" style="">
                </div>
                <div  class="col-lg-3" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                    <asp:Button id="button1" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                        Text=" " />
                </div>
                <script>   
                    if (<%=language%> == "1") {
                        document.getElementById('MainContent_button1').value = "Sauvegarder";
                    } else {
                        document.getElementById('MainContent_button1').value = "Save";
                    }
                </script>
                <div class="col-lg-3" style="display: flex; align-items: center; justify-content: center; text-align: right;">
                    <asp:Button  id="button2" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                        Text="" />
                </div>
                <script>   
                    if (<%=language%> == "1") {
                        document.getElementById('MainContent_button2').value = "Effacer";
                    } else {
                        document.getElementById('MainContent_button2').value = "Erase";
                    }
                </script>
                <div class="col-lg-3" style="">
                </div>
            </div>

            <div class="row" style="height: 10px;">
            </div>

            <div class="row">
                <div class="header5  col-lg-10">
                    <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                        Version:
                    </div>
                    <div class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;"></div>
                </div>
                <div class="AllHeader  col-lg-2" style="align-content: flex-start;">
                </div>
            </div>
        </div>
    </div>

    <div class="column" style="background-color: white; width: 10%;">
    </div>
</asp:Content>

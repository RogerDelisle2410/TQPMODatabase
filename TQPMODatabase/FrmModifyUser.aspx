<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FrmModifyUser.aspx.cs" Inherits="TQPMODatabase.FrmModifyUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
                sessionStorage.setItem("mainTitleIn", "Modifier Usagers");
            } else {
                sessionStorage.setItem("mainTitleIn", "User Modification");
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

                        <div class="form-group" id=" ">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label2" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label2').innerHTML = "Code Telus:";
                                    } else {
                                        document.getElementById('label2').innerHTML = "Telus Code:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:TextBox ID="telusCodeIn" runat="server" Style="width: 250px; display: inline-block; margin-top: 10px; float: left;" />
                                <label style="color: red; margin-top: 10px;">*</label>
                                 <asp:RequiredFieldValidator ID="telusCodeInValidator" runat="server" Style="margin-top: 30px;"
                                    ControlToValidate="telusCodeIn"
                                    ErrorMessage="Required Field" 
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator>&nbsp;&nbsp;
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label3" class="frmRechJalon " style="display: inline-block; float: right;"></label>

                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label3').innerHTML = "Code SAP:";
                                    } else {
                                        document.getElementById('label3').innerHTML = "SAP Code:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:TextBox ID="sapCodeIn" runat="server" Style="width: 250px; display: inline-block; margin-top: 10px; float: left;" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-5" style="height: 25px;">
                                <label id="label4" class="frmRechJalon" style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label4').innerHTML = "Nom:";
                                    } else {
                                        document.getElementById('label4').innerHTML = "Name:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7" style="height: 25px;">
                                <asp:TextBox ID="nameIn" runat="server" Style="width: 250px; display: inline-block; margin-top: 10px; float: left;" />
                                <label style="color: red; margin-top: 10px;">*</label>
                                 <asp:RequiredFieldValidator ID="nameInValidator" runat="server" Style="margin-top: 30px;"
                                    ControlToValidate="nameIn"
                                    ErrorMessage="Required Field"
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5" style="height: 25px;">
                                <label id="label5" class="frmRechJalon" style="display: inline-block; float: right;">IDSAP:  </label>
                            </div>
                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('label5').innerHTML = "Courriel:";
                                } else {
                                    document.getElementById('label5').innerHTML = "Email:";
                                }
                            </script>
                            <div class="col-lg-7" style="height: 25px;">
                                <asp:TextBox ID="emailIn" runat="server" Style="width: 250px; display: inline-block; margin-top: 10px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label6" class="frmRechJalon" style="display: inline-block; float: right;"></label>
                            </div>
                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('label6').innerHTML = "Rôle:";
                                } else {
                                    document.getElementById('label6').innerHTML = "Role:";
                                }
                            </script>
                            <div class="col-lg-7" style="height: 25px;">
                                <asp:TextBox ID="roleIn" runat="server" Style="width: 124px; display: inline-block; margin-top: 10px; float: left;" />
                                 <asp:CompareValidator runat="server" Style="margin-top: 30px;" Operator="DataTypeCheck" Type="Integer"
                                    ControlToValidate="roleIn" ErrorMessage="Role must be a whole number" ForeColor="Red" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label9" class="frmRechJalon" style="display: inline-block; float: right;"></label>
                            </div>
                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('label9').innerHTML = "Statut:";
                                } else {
                                    document.getElementById('label9').innerHTML = "Status:";
                                }
                            </script>
                            <div class="col-lg-7" style="height: 25px;">
                                <asp:DropDownList ID="statusIn" runat="server" CssClass="dropDown" Style="width: 65px; display: inline-block; margin-top: 10px; float: left;">
                                    <asp:ListItem Text="True" Enabled="true" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="False" Value="0"></asp:ListItem>
                                </asp:DropDownList>
                               <%-- <label style="color: red; margin-top: 10px;">*</label>--%>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label7" class="frmRechJalon" style="display: inline-block; float: right;"></label>
                            </div>
                            <script>   
                                if (<%=language%> == "1") {
                                    document.getElementById('label7').innerHTML = "Gestionaire ID:";
                                } else {
                                    document.getElementById('label7').innerHTML = "Manager ID:";
                                }
                            </script>
                            <div class="col-lg-7" style="height: 25px;">
                                <asp:TextBox ID="mgmtIn" runat="server" Style="width: 124px; display: inline-block; margin-top: 10px; float: left;" />
                                 <asp:CompareValidator runat="server" Style="margin-top: 30px;" Operator="DataTypeCheck" Type="Integer"
                                    ControlToValidate="mgmtIn" ErrorMessage="Mgmt must be a whole number" ForeColor="Red" />
                            </div>
                        </div>

                        <%-- <div class="col-lg-7" style="height: 25px;">
                                <asp:DropDownList ID="FKStatut" runat="server" CssClass="dropDown" Style="width: 124px; display: inline-block; margin-top: 10px; float: left;">
                                    <asp:ListItem Text=" " Enabled="true" Value="0"></asp:ListItem>
                                    <asp:ListItem Text=" " Value="1"></asp:ListItem>
                                </asp:DropDownList>
                                <label style="color: red; margin-top: 10px;">*</label>
                            </div>--%>
                        <%-- </div>--%>

                        <div class="row">
                            <div class="  col-lg-12" style="height: 25px;">
                            </div>
                        </div>
                        
                       
                        <div class="col-lg-12 " style="height: 10px;">
                            <div class="col-lg-4 "></div>

                            <div class="col-lg-2" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                <asp:Button Type="submit" ID="button1" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text=" " />
                            </div>

                            <div class="col-lg-2" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                <asp:Button ID="button2" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text=" " OnClientClick="javascript:window.close(), window.open('FrmUserList.aspx', '_self'); return false" />
                            </div>

                            <div class="col-lg-4 " style="height: 25px;">
                                <label id="label11" style="color: red; float: right;"></label>
                            </div>
                        </div>
                        <script>   
                            if (<%=language%> == "1") {
                                document.getElementById('MainContent_button1').value = "Sauvegarder";
                                document.getElementById('MainContent_button2').value = "Annuler";
                                document.getElementById('label11').innerHTML = "(*) Champ Obligatoire:";
                            } else {
                                document.getElementById('MainContent_button1').value = "Save";
                                document.getElementById('MainContent_button2').value = "Cancel";
                                document.getElementById('label11').innerHTML = "(*) Required Field:";
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
    <div class="column" style="background-color: white; width: 15%;"></div>
</asp:Content>




<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FrmModifyII.aspx.cs" Inherits="TQPMODatabase.FrmModifyII" %>
 
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
                sessionStorage.setItem("mainTitleIn", "Modifier II");
            } else {
                sessionStorage.setItem("mainTitleIn", "Modify II");
            }
        </script>

        <hr />
        <table class="col-lg-12 ">
            <tr>
                <td>
                    <asp:LinkButton Style="float: right; padding-top: 2px; padding-left: 10px;" runat="server"
                        OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false"   > 
                                <img class="theImg" style="width:40px; height:40px;" src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                    <asp:Panel runat="server" Style="height: auto; overflow: hidden; width: auto; border-style: solid; border-color: black; margin: 1px 1px 1px 1px;">

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label2" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label2').innerHTML = "Numero II:";
                                    } else {
                                        document.getElementById('label2').innerHTML = "II Num:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:TextBox ID="IInumIn" runat="server" Style="width: 300px; display: inline-block; margin-top: 10px; float: left;" />
                                <%--<input  type="text" id="IInum" name="IInum" style="width: 300px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />--%>
                                <label style="color: red; margin-top: 10px;">*</label>
                                 <asp:RequiredFieldValidator ID="IInumInValidator" runat="server" Style="margin-top: 30px;"
                                    ControlToValidate="IInumIn"
                                    ErrorMessage="Required Field" 
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator> 
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label3" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label3').innerHTML = "Nom II:";
                                    } else {
                                        document.getElementById('label3').innerHTML = "II Name:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:TextBox    id="IInamIn" runat="server"  style="width: 300px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                                <label style="color: red; margin-top: 10px;">*</label>
                                 <asp:RequiredFieldValidator ID="IInameValidator" runat="server" Style="margin-top: 30px;"
                                    ControlToValidate="IInamIn"
                                    ErrorMessage="Required Field"
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator> 
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label4" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label4').innerHTML = "Année:";
                                    } else {
                                        document.getElementById('label4').innerHTML = "Year:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:DropDownList ID="yearIn" runat="server" CssClass="dropDown" Style="width: 130px; height: 20px; display: inline-block; margin-top: 10px; float: left;">
                                    <asp:ListItem Text=" " Enabled="true" Value="1"></asp:ListItem>
                                    <asp:ListItem Text=" " Value="2"></asp:ListItem>
                                    <asp:ListItem Text=" " Value="3"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label class="frmRechJalon " style="display: inline-block; float: right;">Province: </label>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:DropDownList ID="provIn" runat="server" CssClass="dropDown" Style="width: 130px; height: 20px; display: inline-block; margin-top: 10px; float: left;">
                                    <asp:ListItem Text="AB" Enabled="true" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="BC" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="CT" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="MB" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="QC" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="TQ" Value="6"></asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label5" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label5').innerHTML = "Gest. de programme:";
                                    } else {
                                        document.getElementById('label5').innerHTML = "Program Manager:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:TextBox  runat="server" id="PrgmMgrIn"   style="width: 130px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                                <label style="color: red; margin-top: 10px;">*</label>
                                  <asp:RequiredFieldValidator ID="PrgmMgrInValidator" runat="server" Style="margin-top: 30px;"
                                    ControlToValidate="PrgmMgrIn"
                                    ErrorMessage="Required Field"
                                    ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </div>

                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label6" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label6').innerHTML = "Resp. du programme:";
                                    } else {
                                        document.getElementById('label6').innerHTML = "Program Lead:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7" style="height: 25px;">
                                <asp:TextBox runat="server" id="PrgmLeadIn"  style="width: 130px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label7" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label7').innerHTML = "Nouveau Programme:";
                                    } else {
                                        document.getElementById('label7').innerHTML = "New Programme:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:TextBox runat="server" id="NewProgramIn"  style="width: 130px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label8" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label8').innerHTML = "Programme Groupe:";
                                    } else {
                                        document.getElementById('label8').innerHTML = "Group program:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7     " style="height: 25px;">
                                <asp:TextBox runat="server" id="PrgmGrpIn"   style="width: 130px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label9" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label9').innerHTML = "Programme TSO:";
                                    } else {
                                        document.getElementById('label9').innerHTML = "TSO Program:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7 " style="height: 25px;">
                                <asp:TextBox  runat="server" id="TsoPrgmIn" style="width: 130px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-5 " style="height: 25px;">
                                <label id="label10" class="frmRechJalon " style="display: inline-block; float: right;"></label>
                                <script>   
                                    if (<%=language%> == "1") {
                                        document.getElementById('label10').innerHTML = "Niveau moyen:";
                                    } else {
                                        document.getElementById('label10').innerHTML = "Mid Level:";
                                    }
                                </script>
                            </div>
                            <div class="col-lg-7     " style="height: 25px;">
                                <asp:TextBox  runat="server" id="MidLevelIn"   style="width: 130px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-12 " style="height: 25px;">
                            </div>
                        </div>
                       
                      
                      
                        <div class="col-lg-12 " style="height: 10px;">
                            <div class="col-lg-4 ">
                            </div>

                            <div class="col-lg-2" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                <asp:Button ID="button1"  type="submit" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text=" " />
                            </div>

                            <div class="col-lg-2" style="display: flex; align-items: center; justify-content: center; text-align: left;">
                                <asp:Button ID="button2" runat="server" Style="height: 25px; width: 124px; display: inline-block; font-size: 12px; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;" Text=" "   OnClientClick="javascript:window.close(), window.open('FrmIIList.aspx', '_self'); return false"    />
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



<%@ Page Title="Admin Section" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmUserPermission.aspx.cs" Inherits="TQPMODatabase.FrmUserPermission" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div> 
    <script> 
        
        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>

    <div class="column" style="background-color: white; width: 20%;"></div>
    <div class="column" style="width: 60%; height: auto;">

        <div class="container" style="width: 100%; background-color: lightgray;">

            <div class="row" style="background-color: #6F3198;">
                <div class="AllHeader col-lg-2" style="display: inline-block;">
                    <img class="theImg2"  src="/Images/TelusLogo.jpg" >
                </div>
                <div class="AllHeader col-lg-4" style="display: inline-block; height: 50px;">
                    <label id="label1"></label>
                    <script>   
                        if (<%=language%> == "1") {
                            document.getElementById('label1').innerHTML = "Permission Usagers";
                        } else {
                            document.getElementById('label1').innerHTML = "User Permission";
                        }
                    </script>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton runat="server" Style="" CssClass="">
                        <img class="theImg"  src="/Images/addNew.jpg" >
                    </asp:LinkButton>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton runat="server" Style="" CssClass="">
                        <img class="theImg"  src="/Images/previousPage.jpg" >
                    </asp:LinkButton>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton runat="server" Style="" CssClass="">
                        <img class="theImg"  src="/Images/nextPage.jpg" >
                    </asp:LinkButton>
                </div>
                <div class="AllHeader col-lg-1 " style="display: inline-block; height: 50px;">
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton runat="server" Style="" CssClass="">
                        <img class="theImg"  src="/Images/save.jpg" >
                    </asp:LinkButton>
                </div>
                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmAdminSection.aspx');">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                </div>
            </div>


            <div class="row">
                <div class="  col-lg-12" style="height: 20px;">
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-4 " style="height: 25px;">
                    <label id="label2" class="frmRechJalon " style="display: inline-block; float: left;">  </label>
                     <script>   
                         if (<%=language%> == "1") {
                             document.getElementById('label2').innerHTML = "Prénom - Nom:";
                         } else {
                             document.getElementById('label2').innerHTML = "First Name - Name";
                         }
                    </script>
                </div>
                <div class="col-lg-8 " style="height: 25px;">
                    <input runat="server" style="width: 300px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-4 " style="height: 25px;">
                    <label id="label3" class="frmRechJalon " style="display: inline-block; float: left;"> </label>
                    
                     <script>   
                         if (<%=language%> == "1") {
                             document.getElementById('label3').innerHTML = "Courriel:";
                         } else {
                             document.getElementById('label3').innerHTML = "Email:";
                         }
                    </script>
                </div>
                <div class="col-lg-8 " style="height: 25px;">
                    <input runat="server" style="width: 300px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-4" style="height: 25px;">
                    <label id="label4" class="frmRechJalon" style="display: inline-block; float: left;">  </label>
                     <script>   
                         if (<%=language%> == "1") {
                             document.getElementById('label4').innerHTML = "ID Réseau:";
                         } else {
                             document.getElementById('label4').innerHTML = "Network ID:";
                         }
                    </script>
                </div>
                <div class="col-lg-8" style="height: 25px;">
                    <input runat="server" style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-4" style="height: 25px;">
                    <label class="frmRechJalon" style="display: inline-block; float: left;">TNumber:  </label>
                </div>
                <div class="col-lg-8" style="height: 25px;">
                    <input runat="server" style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: left;" />
                </div>
            </div> 

            <div class="form-group">
                <div class="col-lg-4 " style="height: 25px;">
                    <label class="frmRechJalon" style="display: inline-block; float: left;">Permission:</label>
                </div>
                <div class="col-lg-8" style="height: 25px;"> 

                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropDown" Style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: left;">
                        <asp:ListItem Text="Admin" Enabled="true" Value="1"></asp:ListItem>
                        <asp:ListItem Text="User" Value="2"></asp:ListItem>
                        <asp:ListItem Text="User Lock" Value="3"></asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-4 " style="height: 25px;">
                    <label id="label5" class="frmRechJalon" style="display: inline-block; float: left;"></label>
                     <script>   
                         if (<%=language%> == "1") {
                             document.getElementById('label5').innerHTML = "Département:";
                         } else {
                             document.getElementById('label5').innerHTML = "Department";
                         }
                    </script>
                </div>
                <div class="col-lg-8" style="height: 25px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropDown" Style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: left;">
                        <asp:ListItem Text="PMO" Enabled="true" Value="1"></asp:ListItem>
                        <asp:ListItem Text="BIRI" Value="2"></asp:ListItem>
                        <asp:ListItem Text="BIRE_OUEST" Value="3"></asp:ListItem>
                        <asp:ListItem Text="BIRE_EST" Value="4"></asp:ListItem>
                        <asp:ListItem Text="BIRE_NILEC" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-4 " style="height: 25px;">
                    <label id="label6" class="frmRechJalon" style="display: inline-block; float: left;">  </label>
                    <script>   
                        if (<%=language%> == "1") {
                            document.getElementById('label6').innerHTML = "Rôle:";
                        } else {
                            document.getElementById('label6').innerHTML = "Role:";
                        }
                    </script>
                </div>
                <div class="col-lg-8" style="height: 25px;">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropDown" Style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: left;">
                        <asp:ListItem Text="Analyste" Enabled="true" Value="1"></asp:ListItem>
                        <asp:ListItem Text="PFC" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Technicien" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Directeur" Value="4"></asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>

            <div class="form-group">
                <div class="col-lg-4 " style="height: 25px;">
                    <label id="label7" class="frmRechJalon" style="display: inline-block; float: left;"> </label>
                     <script>   
                         if (<%=language%> == "1") {
                             document.getElementById('label7').innerHTML = "Statut:";
                         } else {
                             document.getElementById('label7').innerHTML = "Status:";
                         }
                    </script>
                </div>
                <div class="col-lg-8" style="height: 25px;">

                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="dropDown" Style="width: 124px; height: 20px; display: inline-block; margin-top: 10px; float: left;">
                        <asp:ListItem Text="Active" Enabled="true" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Not Working" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="row">
                <div class="  col-lg-12" style="height: 20px;">
                </div>
            </div>

            <div class="row">
               <div class="header5  col-lg-10">
    <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
        Version:
    </div>
    <div class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;"> </div>
</div>
<div class="AllHeader  col-lg-2" style="align-content: flex-start;"> 
</div>
            </div>
        </div>
    </div>

    <div class="column" style="background-color: white; width: 20%;">
    </div>
</asp:Content>

<%@ Page Title="PMOSection" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmPMOSection.aspx.cs" Inherits="TQPMODatabase.FrmPMOSection" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div id="metaData"></div> 
    <script> 
        
        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>

    <script type="text/javascript">
        function CloseWindow() {
            window.close();
        }
    </script>
    <div class="column" style="background-color: white; width: 25%;"></div>
    <div class="column" style="background-color: lightgray; width: 50%;">
        <div class="container" style="width: 100%; background-color: lightgray;">

            <div class="row" style="background-color: #6F3198;">
                <div class="AllHeader  col-lg-2" style="display: inline-block; height: 50px;">
                    <img class="theImg2"  src="/Images/TelusLogo.jpg" >
                </div>
                <div class="AllHeader  col-lg-9" style="display: inline-block; height: 50px;">
                    <label id="label3"></label>
                </div>

                <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx', '_self'); return false  ">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                    </asp:LinkButton>
                </div>
            </div>

            <div class="row">
                <div class="header2 col-lg-2">
                    <asp:Button ID="BtnAdjustmentProfiling" runat="server" CssClass="button1"
                        OnClientClick="javascript:window.close(), window.open('FrmRechProjet.aspx', '_self');  return false" />
                </div>
                <div class="header2 col-lg-10">
                    <label id="label1" class="headerTitle2" style=""></label>
                </div>
            </div>

            <div class="row">
                <div class="header2 col-lg-2">
                    <asp:Button ID="BtnExplicationVariance" runat="server" CssClass="button1"
                        OnClientClick="javascript:window.close(), window.open('FrmVariance.aspx', '_self');  return false" />
                </div>
                <div class="header2 col-lg-10">
                    <div  id="label2" class="headerTitle2" style=""></div>
                </div>
            </div> 

             <script>  
                <%-- let language = <%=language%>;--%>
                 if (<%=language%> == "1") {
                     document.getElementById('label1').innerHTML = "Ajustement Profil";
                     document.getElementById('label2').innerHTML = "Explication Variance";
                     document.getElementById('label3').innerHTML = "Section PMO";
                 } else {
                     document.getElementById('label1').innerHTML = "Profile Adjustment";
                     document.getElementById('label2').innerHTML = "Variances Explanation"; 
                     document.getElementById('label3').innerHTML = " PMO Section";
                 }
            </script>

            <div class="row">
               <div class="header5  col-lg-10">
    <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
        Version:
    </div>
    <div class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;">Quitter / Quit</div>
</div>
<div class="AllHeader  col-lg-2" style="align-content: flex-start; padding-top:10px; ">
    <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx', '_self'); return false   ">
        <img class="theImg" src="/Images/MainMenu.jpg">
    </asp:LinkButton>
</div>
            </div>
        </div>
    </div>

    <div class="column" style="background-color: white; width: 25%;">
    </div>



</asp:Content>

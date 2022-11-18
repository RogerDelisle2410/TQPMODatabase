<%@ Page Title="Param PPO" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmParamPPO.aspx.cs" Inherits="TQPMODatabase.frmParamPPO" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div> 
    <script> 
        $(function () {
            $("#footer").load("footer.html");
        });
        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>

    <div class="column" style="background-color: white; width: 25%;"></div>
    <div class="column" style="width: 50%; height: auto;">

        <div class="container" style="width: 100%; background-color: lightgray;">

            <div class="row">
                <div class="headerpfc col-lg-1">
                </div>
                <div class="headerpfc col-lg-10">
                    <div>Veuillez préciser les informations suivantes</div>
                </div>
                <div class="col-lg-1" style="background-color: #6F3198;">
                    <asp:Button runat="server" Style="" CssClass="button2"
                        OnClientClick="javascript:window.close(), window.open('frmAdminSection.aspx'); return false" />
                </div>
            </div>
             
              
            <div class="row">
                <div class="header5  col-lg-12">
                    <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                        Version: 
                    </div> 
                </div> 
            </div>
        </div>
    </div>

    <div class="column" style="background-color: white; width: 25%;">
    </div>
</asp:Content>


<%@ Page Title="Form Rapport" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmRapportMenu.aspx.cs" Inherits="TQPMODatabase.FrmRapportMenu" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>
    <div class="column" style="background-color: white; width: 5%;"></div>
    <div class="column" style="width: 90%;">

        <div class="row" style="background-color: #6F3198;">
            <div class="AllHeader  col-lg-2">
                <img class="theImg2" src="/Images/TelusLogo.jpg">
            </div>
            <div class="AllHeader  col-lg-9">
                <div id="label1"></div>
                <script>

                    if (<%=language%> == "1") {
                        document.getElementById('label1').innerHTML = ".xls Rapports";
                    } else {
                        document.getElementById('label1').innerHTML = ".xls Reports";
                    }
                </script>
            </div>

            <div class="AllHeader col-lg-1">
                <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx');">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                </asp:LinkButton>
            </div>
        </div>
        <div class="col-lg-1"></div>
        <div class="col-lg-10" style="height: 400px; max-height: 600px; overflow-y: scroll;">
            <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                runat="server" AutoGenerateColumns="false" Style="height: 10px; width: 100%; border-style: solid; border-color: black;" ShowHeader="true">
                <Columns>
                    <asp:BoundField  DataField="Name" HeaderText="Name" ItemStyle-Width="100"
                        ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-Width="350" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center" /> 
                </Columns>
            </asp:GridView>
             
        </div>
        <div class="col-lg-1"></div>

        <div class="row">
            <div class="header5  col-lg-10">
                <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                    Version:
                </div>
                <div id="label2" class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;"></div>
                <script>

                    if (<%=language%> == "1") {
                        document.getElementById('label2').innerHTML = "Quitter";
                    } else {
                        document.getElementById('label2').innerHTML = "Quit";
                    }
                </script>
            </div>
            <div class="AllHeader  col-lg-2" style="align-content: flex-start; padding-top: 10px;">
                <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('TQPMOAcceuil.aspx'); ">
        <img class="theImg" src="/Images/MainMenu.jpg">
                </asp:LinkButton>
            </div>
        </div>
    </div>

    <div class="column" style="background-color: white; width: 5%;">
    </div>

</asp:Content>

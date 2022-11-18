<%@ Page Title="Form Variance" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmVariance.aspx.cs" Inherits="TQPMODatabase.FrmVariance" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="metaData"></div>
    <script> 

        $(function () {
            $("#metaData").load("metaData.html");
        });
    </script>
    <div class="container" style="width: 100%; background-color: lightgray;" enableviewstate="true">
        <div class="row" style="background-color: #6F3198;">
            <div class="AllHeader  col-lg-2" style="display: inline-block; height: 50px;">
                <img class="theImg2" src="/Images/TelusLogo.jpg">
            </div>
            <div class="AllHeader  col-lg-9" style="display: inline-block; height: 50px;">
                <div id="label1"> </div>
                <script>

                    if (<%=language%> == "1") {
                        document.getElementById('label1').innerHTML = "Rapport d'explication des variances";
                    } else {
                        document.getElementById('label1').innerHTML = "Variances explanation report";
                    }
                </script>
            </div>

            <div class="AllHeader col-lg-1" style="display: inline-block; height: 50px;">
                <asp:LinkButton CssClass="  " runat="server" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx');">
                     <img class="theImg"  src="/Images/MainMenu.jpg" >	
                </asp:LinkButton>
            </div>
        </div>
 
        <table style="width: 100%; height: 50px;">
            <tr>
                <td>
                    <div class="  col-lg-2" style="">
                        <label id="label2"></label>
                        <input class="row " style="float: left; margin: 2px; width: 15px; height: 15px; overflow: hidden;" type="checkbox" />
                    </div>
                    <div class="  col-lg-2" style="">
                        <label id="label3"></label>
                        <input class="row " style="float: left; margin: 2px; width: 15px; height: 15px; overflow: hidden;" type="checkbox" />
                    </div>
                    <div class="  col-lg-4" style="">
                        <label id="label4"></label>
                        <input class="row " style="float: left; margin: 2px; width: 15px; height: 15px; overflow: hidden;" type="checkbox" />
                    </div>
                    <div class="col-lg-4" style="">
                        <label id="label5"></label>

                        <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 130px;">
                            <asp:ListItem Text="Janvier" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Février" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Mars" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Avril" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Mai" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Juin" Value="6"></asp:ListItem>
                            <asp:ListItem Text="Juillet" Value="7"></asp:ListItem>
                            <asp:ListItem Text="Août" Value="8"></asp:ListItem>
                            <asp:ListItem Text="Septembre" Value="9"></asp:ListItem>
                            <asp:ListItem Text="Octobre" Value="10"></asp:ListItem>
                            <asp:ListItem Text="Novembre" Value="11"></asp:ListItem>
                            <asp:ListItem Text="Décembre" Value="12"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 130px;">
                            <asp:ListItem Text="January" Value="1"></asp:ListItem>
                            <asp:ListItem Text="February" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Mars" Value="3"></asp:ListItem>
                            <asp:ListItem Text="April" Value="4"></asp:ListItem>
                            <asp:ListItem Text="May" Value="5"></asp:ListItem>
                            <asp:ListItem Text="June" Value="6"></asp:ListItem>
                            <asp:ListItem Text="July" Value="7"></asp:ListItem>
                            <asp:ListItem Text="August" Value="8"></asp:ListItem>
                            <asp:ListItem Text="September" Value="9"></asp:ListItem>
                            <asp:ListItem Text="October" Value="10"></asp:ListItem>
                            <asp:ListItem Text="November" Value="11"></asp:ListItem>
                            <asp:ListItem Text="Décember" Value="12"></asp:ListItem>

                        </asp:DropDownList>

                    </div>
                    <script>

                        if (<%=language%> == "1") {
                            document.getElementById('label2').innerHTML = "Mon PMO";
                            document.getElementById('label3').innerHTML = "Mon Nom";
                            document.getElementById('label4').innerHTML = "Variances Sans Commentaires";
                            document.getElementById('label5').innerHTML = "Mois:";
                        } else {
                            document.getElementById('label2').innerHTML = "My PMO";
                            document.getElementById('label3').innerHTML = "My Name";
                            document.getElementById('label4').innerHTML = "Variances No Comments";
                            document.getElementById('label5').innerHTML = "Month:";
                        }
                    </script>
                </td>
            </tr>
        </table>

        <table style="width: 100%; height: 200px; border-style: solid; border-color: black;">
            <tr>
                <td>
                    <div class="row col-lg-12" style="text-align: center;">
                    </div>
                </td>
            </tr>
        </table>

        <asp:Button ID="buttonVariance" runat="server" Style="height: 25px; width: auto; display: inline-block; font-size: 12px; float: left; margin-left: 30px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
            Text="" />
        <div class="form-group col-lg-12" style="height: 10px;"></div>
    </div>

    <div class="header5  col-lg-12">
        <div class="header5  col-lg-10">
            <div style="color: white; font-weight: bold; display: inline-block; float: left; padding-top: 15px;">
                Version:
            </div>
            <%--<div class="BtnQuit" style="color: white; display: inline-block; float: right; padding-top: 15px;"></div>--%>
        </div>
        <div class="AllHeader  col-lg-2" style="align-content: flex-start;">
        </div>
    </div>
</asp:Content>

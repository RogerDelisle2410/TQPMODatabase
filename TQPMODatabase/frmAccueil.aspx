<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmAccueil.aspx.cs" Inherits="TQPMODatabase.FrmAccueil" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .columnA {
            float: left;
            width: 33.33%;
            text-align: center;
            font-weight: bold;
            height: 300px;
        }

        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        .topheaderA {
            background-color: white;
            height: 62px;
        }

        .headerA {
            text-align: center;
            background-color: #6F3198;
            height: 72px;
        }

        .header2A {
            text-align: center;
            background-color: lightgrey;
            height: 72px;
        }

        .header3AA {
            text-align: center;
            background-color: lightgrey;
            height: 47px;
        }

        .header3A {
            text-align: center;
            background-color: lightgrey;
            /*height: 112px;*/
        }

        .headerTitleA {
            align-content: center;
            margin-top: 0px;
            padding-top: 20px;
            font-size: 18px;
            color: white;
            font-weight: bold;
        }

        .headerTitle2A {
            align-content: center;
            margin-top: 5px;
            padding-bottom: 25px;
            font-size: 18px;
            font-weight: bold;
            color: #6F3198;
        }

        .headerTitle3A {
            align-content: center;
            margin-top: 10px;
            font-size: 14px;
            color: black;
            text-align: left;
            float: left;
            margin-left: 10px;
        }

        input {
            width: 100%;
            padding: 5px;
            padding-left: 10px;
            padding-right: 10px;
            border: 1px solid black;
            background-color: transparent;
            -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
            -moz-box-sizing: border-box; /* Firefox, other Gecko */
            box-sizing: border-box; /* Opera/IE 8+ */
        }

        input, label {
            display: block;
        }

        .aaa {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
        }
    </style>

    <div class="row ">
        <div class="columnA" style="background-color: white;"></div>
        <div class="columnA" style="background-color: lightgray;">
            <div class="row">
                <div class="topheaderA col-lg-12" style="background-color: white;">
                </div>
            </div>
            <div class="row">
                <div class="headerA  col-lg-12" style="text-align: center; border-style: solid; border-color: lightgray;">
                    <p class="headerTitleA">PMO Database 2.0</p>
                </div>
            </div>
            <div class="row">
                <div class="header2A col-lg-12" style="border-style: solid; border-color: lightgray;">
                    <p class="headerTitle2A">
                        Bienvenue
                            <br />
                        Welcome
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="header2A col-lg-12" style="border-style: solid; border-color: lightgray;">
                    <p class="headerTitle2A"><%=Nom%></p>




                </div>
            </div>

            <div class=" row">
                <div class="header2A col-lg-12 " style="border-style: solid; border-color: lightgray;">
                    <div id='wrapper' style='text-align: center;'>
                        <div class="headerTitle2A" style='display: inline-block;'>Version:</div>
                        <div class="headerTitle2A" id="etqVersion" runat="server" style='display: inline-block;'>8.50</div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="header3AA col-lg-12" style="border-style: solid; border-color: lightgray;">
                    <label class="headerTitle3A" style="width: 90%">Début</label>
                </div>
            </div>

            <div class="row">
                <div class="header3AA col-lg-12" style="border-style: solid; border-color: lightgray;">
                    <%--  <input matinput id="Cadre_Progress">--%>
                    <input id="Cadre_Progress" style="width: 90%; float: left;">
                </div>
            </div>
            <div class="row">
                <div class="header3AA col-lg-6" style="">
                    <asp:Button runat="server" Style="height: 20px; width: auto; font-size: 12px; float: left; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b;"
                        Text="Continuer" OnClientClick="javascript:window.close(), window.open('FrmMenuPrincipal.aspx'); return false" />

              
                </div>
               
                <div class="header3AA col-lg-6" style="">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="header3AA" RepeatColumns="2" TextAlign="Left" Font-Size="smaller" OnSelectedIndexChanged="ChangeLanguage" AutoPostBack="True">
                        <asp:ListItem Value="1" Text="Français" Selected="True" />
                        <asp:ListItem Value="2" Text="English" />
                    </asp:RadioButtonList>
                </div>
            </div>

            <%--  </div>--%>
            <div class="row">
                <div class="header2A col-lg-12">
                    <div></div>
                </div>
            </div>

        </div>
        <div class="columnA" style="background-color: white;">
            <%--  Version:  <%=Version %><br />
            User:  <%=UserNetwork %><br />
           Name:  <%=Nom %><br />--%>
        </div>
    </div>

</asp:Content>

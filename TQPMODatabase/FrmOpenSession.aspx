<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="FrmOpenSession.aspx.cs" Inherits="TQPMODatabase.FrmOpenSession" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="column" style="background-color: white; width: 25%;"></div>
    <div class="column" style="width: 50%; height: auto;">

        <div class="form-container form-container__padding">
            <hr />
            <h2 id="h2Title" data-label-ignore="login.header" class="form-container__heading section-header" style=""></h2>

            <div class="col-lg-12">
                <div class="col-lg-3" style="height: 34px;"></div>
                <div class="col-lg-6 input" style="height: 34px;" >
                    <input type="text" id="TelusCodeUser" name="TelusCodeUser" style="height: 34px; width: 300px;" />
                </div>
                <div class="col-lg-3" style="height: 34px;"></div>
            </div>
            <div class="col-lg-12" style="height: 35px;"></div>
            <div class="col-lg-12" style="align-content: center;">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <button class="button " type="submit" id="logInBtn" style="width: 150px; height: 35px; background-color: forestgreen; color: white;" onclick="verifyUser_Click()">
                    </button>
                </div>
                <div class="col-lg-3"></div>
            </div>
            <div class="col-lg-12" style="height: 35px;"></div>
            <div class="col-lg-12">
                <div class="col-lg-2" style="height: 34px;"></div>
                <div class="col-lg-8 input" style="height: 34px;" >
                    <asp:Label ID="label11" runat="server" Style="color: red; font-size: large; font-weight: bold;" />
                </div>
                <div class="col-lg-2" style="height: 34px;"></div>
            </div>

            <script> 

                if (<%=language%> == "1") {
                    document.getElementById('h2Title').innerHTML = "Ouvrir une Session";
                    document.getElementById('logInBtn').innerHTML = "Connexion";
                } else {
                    document.getElementById('h2Title').innerHTML = "Open a Session";
                    document.getElementById('logInBtn').innerHTML = "Log in";
                }

                if (<%=language%> == "1") {
                    sessionStorage.setItem("mainTitleIn", "TELUS PMO Est");
                } else {
                    sessionStorage.setItem("mainTitleIn", "TELUS East PMO");
                }
            </script>
        </div>

    </div>
    <div class="column" style="background-color: white; width: 25%;"></div>

    <style>
        .input {
            display: grid;
            justify-content: center;
        }
    </style>

</asp:Content>

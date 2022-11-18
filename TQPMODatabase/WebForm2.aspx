<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TQPMODatabase.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Stylesheets" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" id="bootstrap-css" href="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/styles/bootstrap.3.3.5.min.css?ver=3.6.3" type="text/css" media="all" />
    <link rel="stylesheet" id="telus_eti-hero-css" href="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/styles/main-hero.css?ver=3.6.3" type="text/css" media="all" />
    <link rel="stylesheet" id="telus_eti-newslike-css" href="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/styles/main-newslike.css?ver=3.6.3" type="text/css" media="all" />
    <%-- </meta>--%>

    <script>
        window.onload = function () {

           <%-- var radioButtonlist = document.getElementsByName("<%=RadioButtonList1.ClientID%>");--%>

            //for (var x = 0; x < 3; x++) {
            if (<%=language%> == "1") {
                radioButtonlist[0].checked = true;
            } else {
                radioButtonlist[1].checked = true;
            }
            //}


        }
    </script>

    <style>
        UL.nav > LI {
            float: left;
            border: 1px solid red;
            position: relative;
            height: 24px;
        }

        UL.nav UL {
            left: -10000px;
            position: absolute;
        }

        UL.nav > LI:hover UL {
            left: 0;
            top: 24px; /* IE7 has problems without this */
        }
    </style>






    <%--</head>--%>
    <%--<body class="post-2 page type-page status-publish has-post-thumbnail hentry hbt-detect-os-windows hbt-detect-browser-chrome hbt-front_page-layout-newslike">
    <form runat="server">--%>
    <header class="menu-showning menu-shown" style="width: 100%;">
        <div class="header-inner" style="">
            <div class="container header" style="width: 100%;">
                <div class="row">
                    <div class="col-md-12">

                        <section id="h.6f824a6f86e29360_13" class="yaqOZd LB7kq cJgDec tpmmCb O13XJf" style="">

                            <div style="background-position: center; overflow: hidden;">
                                <asp:Image ID="Image1" src="Images/PMOLogo.jpg" runat="server" alt="User Image" ToolTip="userimage"
                                    Width="100%" Height="200px" />
                                <div style="">
                                    <asp:Label ID="Label10" Text="Cloud Infrastructure - PMO Est " runat="server" ForeColor="black" CssClass="lblposition" />
                                </div>
                            </div>
                            <style>
                                .lblposition {
                                    position: absolute;
                                    left: 30%;
                                    top: 25px;
                                    height: 21px;
                                    width: auto;
                                    font-size: 30px;
                                    font-weight: bold;
                                }
                            </style>
    </section>


                        <div class="col-md-12">
                            <ul class="nav col-lg-3">
                                <li>This item has a dropdown
        <ul>
            <li>Sub item 1</li>
            <li>Sub item 2</li>
        </ul>
                                </li>
                                <li>Item</li>
                                <li>So does this item
            <ul>
                <li>Sub item 1</li>
                <li>Sub item 2</li>
            </ul>

                                </li>
                            </ul>
                        </div>

    <script>    
        if (<%=language%> == "1") {

            document.getElementById('label20').innerHTML = "Rapport";
            document.getElementById('label21').innerHTML = "Rapport";
            document.getElementById('label22').innerHTML = "Section PFC";
            document.getElementById('label23').innerHTML = "Section PFC";
            document.getElementById('label24').innerHTML = "Section PMO";
            document.getElementById('label25').innerHTML = "Section PMO";
            document.getElementById('label26').innerHTML = "Section Admin";
            document.getElementById('label27').innerHTML = "Section Admin";


        } else {

            document.getElementById('label20').innerHTML = "Report";
            document.getElementById('label21').innerHTML = "Report";
            document.getElementById('label22').innerHTML = "PFC Section";
            document.getElementById('label23').innerHTML = "PFC Section";
            document.getElementById('label24').innerHTML = "PMO Section";
            document.getElementById('label25').innerHTML = "PMO Section";
            document.getElementById('label26').innerHTML = "Admin Section";
            document.getElementById('label27').innerHTML = "Admin Section";
        }

    </script>
    </div>
                </div>
            </div>
        </div>
    </header>









    <%--<div id="footers">
        <footer id="footer">
            <div class="footer">
                <div class="container">
                    <div class="footer-top">
                        <div class="footer-copyright">
                            © 2022 TELUS         
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>--%>
    <%--    </form>
</body>
</html>--%>
</asp:Content>

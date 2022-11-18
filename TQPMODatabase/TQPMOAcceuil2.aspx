<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TQPMOAcceuil2.aspx.cs" Inherits="TQPMODatabase.TQPMOAcceuil2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="fr-fr">

<head>
    <title>TQPMO Database  </title>
    <%-- <meta charset="utf-8"> --%>

    <link rel="stylesheet" id="bootstrap-css" href="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/styles/bootstrap.3.3.5.min.css?ver=3.6.3" type="text/css" media="all" />
    <link rel="stylesheet" id="telus_eti-hero-css" href="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/styles/main-hero.css?ver=3.6.3" type="text/css" media="all" />
    <link rel="stylesheet" id="telus_eti-newslike-css" href="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/styles/main-newslike.css?ver=3.6.3" type="text/css" media="all" />
    <%-- </meta>--%>

    <script>
        window.onload = function () {

            var radioButtonlist = document.getElementsByName("<%=RadioButtonList1.ClientID%>");


            if (<%=language%> == "1") {
                radioButtonlist[0].checked = true;
            } else {
                radioButtonlist[1].checked = true;
            }

        }
    </script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/plugins/enable-jquery-migrate-helper/js/jquery/jquery-1.12.4-wp.js?ver=1.12.4-wp" id="jquery-core-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/plugins/enable-jquery-migrate-helper/js/jquery-migrate/jquery-migrate-1.4.1-wp.js?ver=1.4.1-wp" id="jquery-migrate-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=7.4.4" id="wp-polyfill-js"></script>

    <script type="text/javascript" src="https://assets.adobedtm.com/a2962fe01e14/612bd6c8135c/launch-c510b607feab.min.js?ver=0.1.0-p1telus" id="hbt-analytics--adobe-analytics--embed-js"></script>
    <script src="https://assets.adobedtm.com/extensions/EPbde2f7ca14e540399dcc1f8208860b7b/AppMeasurement.min.js" async=""></script>
    <script src="https://assets.adobedtm.com/extensions/EPbde2f7ca14e540399dcc1f8208860b7b/AppMeasurement_Module_ActivityMap.min.js" async=""></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/plugins/hbt-analytics/assets/polyfill/hbt-element-qsa-scope.js?ver=1.1.0-p1telus" id="hbt-analytics--adobe-analytics--polyfill--hbt-element-qsa-scope-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/plugins/hbt-analytics/assets/polyfill/hbt-IntersectionObserver.js?ver=0.1.0-p1telus" id="hbt-analytics--adobe-analytics--polyfill--intersection-observer-polyfill-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-includes/js/underscore.min.js?ver=1.8.3" id="underscore-js"></script>
    <%-- <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/plugins/telus-reading-progress-bar/js/jquery.progressScroll.js?ver=0.1.0" id="progressScrollreadingprogress-js"></script>--%>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/plugins/telus-comment-popularity/inc/../assets/js/modules/growl/javascripts/jquery.growl.min.js?ver=1.4.1-p2" id="growl-telus-comment-popularity-js"></script>
    <script type="text/javascript" id="telus-comment-popularity-js-extra">
        /* <![CDATA[ */
        var telus_comment_popularity = { "hmn_vote_nonce": "d1a5031d44", "ajaxurl": "https:\/\/habitat.telus.com\/wp-admin\/admin-ajax.php" };
/* ]]> */
    </script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/plugins/telus-comment-popularity/inc/../assets/js/voting.min.js?ver=1.4.1-p2" id="telus-comment-popularity-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/js/main.js?ver=3.6.3" id="telus_eti-main-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/js/hyphenate.js?ver=3.6.3" id="telus_eti-hyphenate-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/js/bootstrap.3.3.5.min.js?ver=3.3.5" id="bootstrap-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/js/boxes.js?ver=3.6.3" id="telus_eti-boxes-js"></script>
    <script type="text/javascript" src="https://cdn.habitat.telus.com/wp-content/themes/telus_eti/js/moment-with-locales.min.js?ver=2.0.16" id="moment-with-locales-js"></script>



    <!-- This site is using AdRotate v4.5 to display their advertisements - https://ajdg.solutions/products/adrotate-for-wordpress/ -->
    <!-- AdRotate CSS -->
    <style type="text/css" media="screen">
        .g {
            margin: 0px;
            padding: 0px;
            overflow: hidden;
            line-height: 1;
            zoom: 1;
        }

            .g img {
                height: auto;
            }

        .g-col {
            position: relative;
            float: left;
        }

            .g-col:first-child {
                margin-left: 0;
            }

            .g-col:last-child {
                margin-right: 0;
            }

        @media only screen and (max-width: 480px) {
            .g-col, .g-dyn, .g-single {
                width: 100%;
                margin-left: 0;
                margin-right: 0;
            }
        }
    </style>





</head>
<body class="post-2 page type-page status-publish has-post-thumbnail hentry hbt-detect-os-windows hbt-detect-browser-chrome hbt-front_page-layout-newslike">
    <form runat="server">
        <header class="menu-showning menu-shown" style="width: 100%;">
            <div class="header-inner" style="">
                <div class="container header" style="width: 100%;">
                    <div class="row">
                        <div class="col-md-12">

                            <section id="h.6f824a6f86e29360_13" class="yaqOZd LB7kq cJgDec tpmmCb O13XJf" style="">

                                <div style="background-position: center; overflow: hidden; border-style: solid; border-color: red;">
                                    <asp:Image ID="Image1" src="Images/PMOLogo2.jpg" runat="server" alt="User Image" ToolTip="userimage"
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


                            <nav class="navbar" >
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header  ">
                                    <div class="clearfix relative navbar-inner">
                                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="true">
                                            <span class="sr-only"></span>
                                            <span class="bar bar-top"></span>
                                            <span class="bar bar-middle"></span>
                                            <span class="bar bar-bottom"></span>
                                        </button>

                                    </div>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="navbar-collapse collapse in" id="bs-example-navbar-collapse-1 " aria-expanded="true" style="">
                                    <ul id="navbar-main-menu" class="nav navbar-nav navbar-main-menu col-lg-12" role="tablist" aria-multiselectable="true" style="">

                                        <li class="col-lg-1" style="height: auto;"></li>

                                        <li class="dropdown main-nav-dropdown-container col-lg-2" data-menu-item-index="1" style="">
                                            <a id="label24" role="button" href="#" class="visible-lg visible-md visible-lg desktop collapsed" aria-expanded="false" data-toggle="collapse" data-parent="#header-collapse-group" data-target="#dropdown-menu-1" aria-controls="#dropdown-menu-1" data-collapse-group="colHeader" style="">
                                                <span class="glyphicon glyphicon-menu-right"></span>
                                            </a>

                                            <a id="label25" role="button" href="#" class="visible-lg visible-xs visible-sm dropdown-toggle main-nav-dropdown-toggle mobile link-chevron secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                                        </li>


                                        <li class="dropdown main-nav-dropdown-container col-lg-2" data-menu-item-index="2" style="">
                                            <a id="label20" role="button" href="#" class="visible-lg visible-md visible-lg desktop collapsed" aria-expanded="false" data-toggle="collapse" data-parent="#header-collapse-group" data-target="#dropdown-menu-2" aria-controls="#dropdown-menu-2" data-collapse-group="colHeader">
                                                <span class="glyphicon glyphicon-menu-right"></span>
                                            </a>

                                            <a id="label21" role="button" href="#" class="visible-lg visible-xs visible-sm dropdown-toggle main-nav-dropdown-toggle mobile link-chevron secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                                        </li>


                                        <li class="dropdown main-nav-dropdown-container col-lg-2" data-menu-item-index="3" style="">
                                            <a id="label22" role="button" href="#" class="visible-lg visible-md visible-lg desktop" aria-expanded="true" data-toggle="collapse" data-parent="#header-collapse-group" data-target="#dropdown-menu-3" aria-controls="#dropdown-menu-3" data-collapse-group="colHeader">
                                                <span class="glyphicon glyphicon-menu-right"></span>
                                            </a>

                                            <a id="label23" role="button" href="#" class="visible-lg visible-xs visible-sm dropdown-toggle main-nav-dropdown-toggle mobile link-chevron secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                                        </li>


                                        <li class="dropdown main-nav-dropdown-container col-lg-2" data-menu-item-index="4" style="">
                                            <a id="label26" role="button" href="#" class="visible-lg visible-md visible-lg desktop collapsed" aria-expanded="false" data-toggle="collapse" data-parent="#header-collapse-group" data-target="#dropdown-menu-4" aria-controls="#dropdown-menu-4" data-collapse-group="colHeader">
                                                <span class="glyphicon glyphicon-menu-right"></span>
                                            </a>

                                            <a id="label27" role="button" href="#" class="visible-lg visible-xs visible-sm dropdown-toggle main-nav-dropdown-toggle mobile link-chevron secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                                        </li>

                                        <li class="col-lg-1" style="width: 80px;">
                                            <asp:RadioButtonList CssClass="radioBL" ID="RadioButtonList1" runat="server" Font-Size="10px" AutoPostBack="True" OnSelectedIndexChanged="ChangeLanguage" Style="text-align: center; margin-top: 15px;">
                                                <asp:ListItem Value="1" Text="Francais" />
                                                <asp:ListItem Value="2" Text="English" />
                                            </asp:RadioButtonList>
                                        </li>

                                    </ul>
                                    <script>
                                        let language = Value;
                                    </script>
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

                            </nav>
                        </div>
                    </div>
                </div>
            </div>

            <div class="visible-md visible-lg" id="header-collapse-group" role="tablist" aria-multiselectable="true">
                <div class="nav-dropdown collapse" id="dropdown-menu-1" data-menu-item-index="1" role="tabpanel" aria-labelledby="dropdown-menu-1" aria-expanded="false" style="height: 0px;">
                    <div class="container">
                        <div class="nav-inner">
                            <div class="nav-header   ">
                                <div class="col-lg-2">
                                </div>
                                <div class="nav-title col-lg-4">
                                    <h3>PMO Section</h3>
                                </div>
                                <div class="nav-action col-lg-2">
                                    <button class="btn-action collapsed" data-toggle="collapse" data-target="#dropdown-menu-1" data-parent="#header-collapse-group" role="button" aria-haspopup="true" aria-expanded="false">Fermer<span class="btn-icon icon-close"></span></button>
                                </div>
                            </div>
                            <div class="nav-content">
                                <div class="row row-equal-height row-no-gutters row-nav-content">

                                    <div class="col-lg-12   col-nav-items">
                                        <div class="row row-no-gutters row-nav-items">
                                            <div class="col-lg-1"></div>
                                            <div class="col-lg-6">
                                                <div class="col-nav-item   item-link">
                                                    <a id="label1" href="#" onclick="javascript:window.close(), window.open('frm_AdjProfiling4.aspx');"
                                                        rel="nofollow noopener"></a>
                                                </div>

                                                <div class="col-nav-item   item-link">
                                                    <a id="label2" href="#" onclick="javascript:window.close(), window.open('frmRechProjet.aspx');" rel="nofollow noopener"></a>
                                                </div>
                                                <div class="col-nav-item   item-link">
                                                    <a id="label3" href="#" onclick="javascript:window.close(), window.open('frmRechProjet.aspx');" rel="nofollow noopener"></a>
                                                </div>
                                                <div class=" col-nav-item  item-link">
                                                    <a id="label4" href="#" onclick="javascript:window.close(), window.open('frmRechProjet.aspx');" rel="nofollow noopener"></a>
                                                </div>
                                                <div class="col-nav-item   item-link">
                                                    <a id="label5" href="#" onclick="javascript:window.close(), window.open('frmVariance.aspx');" rel="nofollow noopener"></a>
                                                </div>

                                                <div class=" col-nav-item  item-link">
                                                    <a id="label6" href="#" onclick="javascript:window.close(), window.open('frmRechJalon.aspx');" rel="nofollow noopener"></a>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class=" col-nav-item  item-link">
                                                    <a id="label7" href="https://habitat.telus.com/fr/personnes-et-culture/" rel="nofollow noopener"></a>
                                                </div>
                                                <div class=" col-nav-item  item-link">
                                                    <a id="label8" href="https://habitat.telus.com/fr/personnes-et-culture/" rel="nofollow noopener"></a>
                                                </div>
                                                <div class="col-nav-item   item-link">
                                                    <a id="label9" href="https://habitat.telus.com/fr/personnes-et-culture/" rel="nofollow noopener">Recherche Avancée</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <script>    
                                    if (<%=language%> == "1") {

                                        document.getElementById('label1').innerHTML = "(Ajustement de profil) Afficher tous mes projets";
                                        document.getElementById('label2').innerHTML = "(Ajustement de profil) Afficher mes projets avec budget > 85% ";
                                        document.getElementById('label3').innerHTML = "(Ajustement de profil) Afficher mes projets avec budget > 100% ";
                                        document.getElementById('label4').innerHTML = "(Ajustement de profil) Projets avec budget null et ACTUAL > 0 $";
                                        document.getElementById('label5').innerHTML = "Explication des variances";
                                        document.getElementById('label6').innerHTML = "Renseigner les dates des jalons de mes projets";
                                        document.getElementById('label7').innerHTML = "Analyser les données de mes projets";
                                        document.getElementById('label8').innerHTML = "Exclure des projets de ma liste de projet a afficher";
                                        document.getElementById('label9').innerHTML = "Recherche Avancée";

                                    } else {

                                        document.getElementById('label1').innerHTML = "(Profile adjustment) Show all my projects";
                                        document.getElementById('label2').innerHTML = "(Profile adjustment) Show my projects with budget > 85%";
                                        document.getElementById('label3').innerHTML = "(Profile adjustment) Show my projects with budget > 100%";
                                        document.getElementById('label4').innerHTML = "Projects with null budget and ACTUAL > 0 $";
                                        document.getElementById('label5').innerHTML = "Explanation of variances";
                                        document.getElementById('label6').innerHTML = "Fill in the dates of the milestones of my projects";
                                        document.getElementById('label7').innerHTML = "Analyze my project data";
                                        document.getElementById('label8').innerHTML = "Exclude projects from my project list to display";
                                        document.getElementById('label9').innerHTML = "Advanced search";
                                    }

                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="nav-dropdown collapse" id="dropdown-menu-2" data-menu-item-index="2" role="tabpanel" aria-labelledby="dropdown-menu-2" aria-expanded="false" style="height: 0px;">
                <div class="container">
                    <div class="nav-inner">
                        <div class="nav-header">
                            <div class="col-lg-2"></div>
                            <div class="nav-title col-lg-4">
                                <h3 id="label30">Rapport</h3>
                            </div>
                            <div class="nav-action col-lg-2">
                                <button class="btn-action" data-toggle="collapse" data-target="#dropdown-menu-2" data-parent="#header-collapse-group" role="button" aria-haspopup="true" aria-expanded="true">Fermer<span class="btn-icon icon-close"></span></button>
                            </div>
                        </div>
                        <div class="nav-content">
                            <div class="row row-equal-height row-no-gutters row-nav-content">

                                <div class="col-lg-12  col-nav-items">
                                    <div class="row row-no-gutters row-nav-items">
                                        <div class="col-lg-1"></div>
                                        <div class="col-lg-4">
                                            <div class="col-nav-item   item-link">
                                                <a href="https://habitat.telus.com/myhr/fr/mesrh/" rel="nofollow noopener">Hardstop</a>
                                            </div>
                                            <div class="col-nav-item   item-link">
                                                <a href="https://hcm17.sapsf.com/login?company=TelusP" rel="nofollow noopener">Variances (East PMO)</a>
                                            </div>
                                            <div class="col-nav-item   item-link">
                                                <a href="https://go.telus.com/bravo" rel="nofollow noopener">PM Variances</a>
                                            </div>
                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">Variances Projet PLUG</a>
                                            </div>
                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">V0_Last Save</a>
                                            </div>
                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">Rapport Mes Last_Save</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">SAP V0 (Toutes / All</a>
                                            </div>

                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">Projets par PM / Projects by PM</a>
                                            </div>

                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">All projects PM</a>
                                            </div>
                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">Kick-Off Dates Jalons / Milestones Kick-off report</a>
                                            </div>
                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">Rapport Last_Save_Falcon_RF</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">V0_Mes/My Last Save</a>
                                            </div>
                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">V0_Mes/My Last Save +1</a>
                                            </div>

                                            <div class="col-nav-item   item-link">
                                                <a href="https://selfserve.tsl.telus.com/irj/portal/" rel="nofollow noopener">V0_Last Save JF-Bernier</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nav-dropdown collapse" id="dropdown-menu-3" data-menu-item-index="3" role="tabpanel" aria-labelledby="dropdown-menu-3" aria-expanded="true" style="">
                <div class="container">
                    <div class="nav-inner">
                        <div class="nav-header">

                            <div class="col-lg-2"></div>
                            <div class="nav-title col-lg-4">
                                <h3>PFC Section</h3>
                            </div>
                            <div class="nav-action col-lg-2">
                                <button class="btn-action" data-toggle="collapse" data-target="#dropdown-menu-3" data-parent="#header-collapse-group" role="button" aria-haspopup="true" aria-expanded="true">Fermer<span class="btn-icon icon-close"></span></button>
                            </div>
                        </div>
                        <div class="nav-content">
                            <div class="row row-equal-height row-no-gutters row-nav-content">

                                <div class="col-xs-12 col-md-8 col-nav-items">
                                    <div class="row row-no-gutters row-nav-items">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-10">
                                            <div class="col-nav-item item-text">
                                                <div>Future development</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="nav-dropdown collapse" id="dropdown-menu-4" data-menu-item-index="4" role="tabpanel" aria-labelledby="dropdown-menu-4" aria-expanded="false" style="height: 0px;">
                <div class="container">
                    <div class="nav-inner">
                        <div class="nav-header">
                            <div class="col-lg-2"></div>
                            <div class="nav-title col-lg-4">
                                <h3>Admin Section </h3>
                            </div>
                            <div class="nav-action col-lg-2">
                                <button class="btn-action collapsed" data-toggle="collapse" data-target="#dropdown-menu-4" data-parent="#header-collapse-group" role="button" aria-haspopup="true" aria-expanded="false">Fermer<span class="btn-icon icon-close"></span></button>
                            </div>
                        </div>

                        <div class="nav-content">
                            <div class="row row-equal-height row-no-gutters row-nav-content">

                                <div class="col-xs-12  col-nav-items">
                                    <div class="row row-no-gutters row-nav-items">

                                        <div class="col-lg-12 ">
                                            <div class="col-lg-3 "></div>
                                            <div class="col-lg-3 ">

                                                <div class="col-nav-item   item-link" onclick="myFunction1()">
                                                    <a id="label11" href="#" rel="nofollow noopener"></a>
                                                </div>
                                                <div class="col-nav-item   item-link" onclick="myFunction2()">
                                                    <a id="label12" href="#" rel="nofollow noopener"></a>
                                                </div>
                                                <div class="col-nav-item  item-link">
                                                    <a id="label13" href="#" rel="nofollow noopener"></a>
                                                </div>
                                                <div class="col-nav-item   item-link">
                                                    <a id="label14" href="#" rel="nofollow noopener"></a>
                                                </div>
                                                <div class="col-nav-item   item-link">
                                                    <a id="label15" href="#" rel="nofollow noopener"></a>
                                                </div>
                                                <div class="col-nav-item   item-link">
                                                    <a id="label16" href="#" rel="nofollow noopener"></a>
                                                </div>
                                            </div>

                                            <span class="popup">
                                                <a id="label141" class="popuptext">
                                                    <label onclick="javascript:window.close(), window.open('frmNewUser.aspx'); return false">
                                                        Ajouter un nouvel Usager 
                                                    </label>
                                                    <br />
                                                    <br />
                                                    <label onclick="javascript:window.close(), window.open('frmUserList.aspx'); return false">
                                                        Liste des Usagers 
                                                    </label>
                                                </a>
                                            </span>

                                            <span class="popup">
                                                <a id="label142" class="popuptext">
                                                    <label onclick="javascript:window.close(), window.open('frmNewUser.aspx'); return false">
                                                        Add a new User 
                                                    </label>
                                                    <br />
                                                    <br />
                                                    <label onclick="javascript:window.close(), window.open('frmUserList.aspx'); return false">
                                                        Users List 
                                                    </label>
                                                </a>
                                            </span>

                                            <span class="popup">
                                                <a id="label143" class="popuptext">
                                                    <label onclick=" javascript: window.close(), window.open('frmAjoutII.aspx'); return false;">
                                                        Ajouter un nouvel II
                                                    </label>
                                                    <br />
                                                    <br />
                                                    <label onclick="javascript:window.close(), window.open('frmIIlist.aspx'); return false">
                                                        Liste de tous les II 
                                                    </label>
                                                </a>
                                            </span>

                                            <span class="popup">
                                                <a id="label144" class="popuptext">
                                                    <label onclick="javascript:window.close(), window.open('frmNewUser.aspx'); return false">
                                                        Add a new II 
                                                    </label>
                                                    <br />
                                                    <br />
                                                    <label onclick="javascript:window.close(), window.open('frmUserList.aspx'); return false">
                                                        II List 
                                                    </label>
                                                </a>
                                            </span>
                                        </div>

                                        <script> 
                                            function myFunction1() {
                                                if (<%=language%> == "1") {
                                                    var popup1 = document.getElementById("label141");
                                                    popup1.classList.toggle("show");
                                                    var popup3 = document.getElementById("label143");
                                                    popup3.classList.remove("show");
                                                } else {
                                                    var popup2 = document.getElementById("label142");
                                                    popup2.classList.toggle("show");
                                                    var popup4 = document.getElementById("label144");
                                                    popup4.classList.remove("show");
                                                }
                                            }

                                            function myFunction2() {
                                                if (<%=language%> == "1") {
                                                    var popup3 = document.getElementById("label143");
                                                    popup3.classList.toggle("show");
                                                    var popup1 = document.getElementById("label141");
                                                    popup1.classList.remove("show");
                                                } else {
                                                    var popup2 = document.getElementById("label142");
                                                    popup2.classList.remove("show");
                                                    var popup4 = document.getElementById("label144");
                                                    popup4.classList.toggle("show");
                                                }
                                            }
                                        </script>

                                    </div>
                                </div>
                                <script>   


                                    if (<%=language%> == "1") {

                                        document.getElementById('label11').innerHTML = "Gestion des usagers";
                                        //  document.getElementById('LinkButton1').innerHTML = "Gestion des usagers";
                                        document.getElementById('label12').innerHTML = "Gestion des II";
                                        document.getElementById('label13').innerHTML = "Figer le PPX";
                                        document.getElementById('label14').innerHTML = "Modifier les dates des jalons";
                                        document.getElementById('label15').innerHTML = "Paramétrage des seuils de variances";
                                        document.getElementById('label16').innerHTML = "Désactiver la base pour maintenance";

                                    } else {

                                        document.getElementById('label11').innerHTML = "User management ";
                                        //  document.getElementById('LinkButton1').innerHTML = "User management ";
                                        document.getElementById('label12').innerHTML = "Management of II";
                                        document.getElementById('label13').innerHTML = "Freeze the PPX";
                                        document.getElementById('label14').innerHTML = "Edit milestone dates";
                                        document.getElementById('label15').innerHTML = "Setting variance thresholds";
                                        document.getElementById('label16').innerHTML = "Disable the database for maintenance";
                                    }

                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <script type="text/javascript">
            //Collapse 'collapse' elements if dropdown element in nav clicked
            $('.dropdown').click(function () {
                if ($('#quick-links-toggle,#search-bar-toggle,#search-tm-toggle').hasClass('in'))
                    $('#quick-links-toggle,#search-bar-toggle,#search-tm-toggle').collapse('hide');
            });

            // Set input focus after Bootstrap Collapse transition is done
            $(".searchbar-header-wrapper").on("shown.bs.collapse", function (evt) {
                var jThis = $(this);
                var jInput = jThis.find("input[type='search']");
                jInput.focus();
            });
        </script>


        <div class="container main container-header">
            <div class="row">
                <div class="col-md-12">
                    <!--Changed from 9 to 12 for full-width content / moving sidebar out of footer-->

                </div>
                <!-- .col-md-12 -->
            </div>
            <!-- .row.margin-top -->
        </div>
        <!-- .container.main -->


        <div id="footers">
            <footer id="footer">
                <div class="footer">
                    <div class="container">
                        <div class="footer-top">
                            <div class="footer-copyright">
                                © 2022 TELUS         
                            </div>

                            <asp:Button runat="server" Style="height: 20px; width: auto; font-size: 12px; float: left; margin-left: 10px; text-align: center; text-align: center; line-height: 1px; border-radius: 10px; -webkit-border-radius: 10px; box-shadow: 0 1px 2px #5e5d5b; margin-top: 15px;"
                                Text="Continuer" OnClientClick="javascript:window.close(), window.open('frmMenuPrincipal.aspx'); return false" />

                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </form>
    <style>
        /* Popup container - can be anything you want */
        .popup {
            position: absolute;
            display: inline-block;
            cursor: pointer;
            width: 200px;
            height: 100px;
            word-wrap: break-word;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

            /* The actual popup */
            .popup .popuptext {
                visibility: hidden;
                width: 260px;
                height: 100px;
                border-style: solid;
                border-color: black;
                word-wrap: break-word;
                /*background-color:  black;*/
                color: black;
                text-align: center;
                border-radius: 6px;
                padding: 8px 0;
                position: absolute;
                z-index: 1;
                /*bottom: 15%;
                left: 40%;*/
                margin-left: -80px;
            }


                /* Popup arrow */
                .popup .popuptext::after {
                    content: "";
                    position: absolute;
                    top: 100%;
                    left: 50%;
                    margin-left: -5px;
                    border-width: 5px;
                    border-style: solid;
                    border-color: red;
                    border-color: #555 transparent transparent transparent;
                }


            /* Toggle this class - hide and show the popup */
            .popup .show {
                visibility: visible;
                -webkit-animation: fadeIn 1s;
                animation: fadeIn 1s;
            }

        /* Add animation (fade in the popup) */
        @-webkit-keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }
    </style>

</body>
</html>


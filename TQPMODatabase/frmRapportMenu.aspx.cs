using System;
using System.Data;

namespace TQPMODatabase
{
    public partial class FrmRapportMenu : System.Web.UI.Page
    {
        public string language;
        protected void Page_Load(object sender, EventArgs e)
        {
            //  1 Francais - 2 English  
            if (Session["language"] != null)
            {
                language = Session["language"].ToString();
            }
            else
            {
                Session["language"] = "1";
            }

            DataTable dt2 = new DataTable();
            dt2.Columns.AddRange(new DataColumn[2] {
                            new DataColumn("Name", typeof(string)),
                            new DataColumn("Description", typeof(string)) });

            dt2.Rows.Add("Hardstop", "	Vu et risques sur les budgets par projet / View and risks of projects budget");
            dt2.Rows.Add("Variances (East PMO)", "	Variances de tous les projets / Variances of all projects");
            dt2.Rows.Add("PM Variances", "	Rapport de variances individuels / Individual variances report");
            dt2.Rows.Add("Variances Projet PLUG", "	Variances des projets Plug de type demande_P-Multi / Projects variances for Demand_P-Multi type");
            dt2.Rows.Add("V0_Last Save", "	Derniers profils traités ou en cours par PFC (Tous les projets) / Last profiles completed or ongoing at PFC (For all projects)");
            dt2.Rows.Add("Rapport Mes Last_Save", "	LS traitées ou en cours de traitement par PFC  (tous mes projets, anneé courante)");
            dt2.Rows.Add("SAP V0 (Toutes / All)", "	Toutes les V0 mise à jour issue de SAP de tous les projets / All V0 from SAP for all projects");
            dt2.Rows.Add("Projets par PM / Projects by PM	", "Liste de tous les projets par PM avec Budget, Actuel, Commit, etc / Liste of all projects by PM with Budget, Actual, Commit, etc.");
            dt2.Rows.Add("All projects PM	", "Liste de tous les projets détaillés du PM qui effectue la demande / List of all details projects for PM who run the report");
            dt2.Rows.Add("Kick-Off Dates Jalons / Milestones Kick-off report", "	Dates jalons capturés au kick-off de tous les projets / Milestones captured at kick-off of all projects");
            dt2.Rows.Add("Rapport Last_Save_Falcon_RF", "	Last_Save pour les projets Falcon RF (Année courante et suivantte)");
            dt2.Rows.Add("V0_Mes/My Last Save", "	MES derniers profil traités ou en cours par PFC (Projets du PM, année en cours) / MY last profils completed or ongoing by PFC (All PM’s projects, current year)");
            dt2.Rows.Add("V0_Mes/My Last Save +1	", "MES derniers profil traités ou en cours par PFC (Projets du PM, année suivante) / MY last profils completed or ongoing by PFC (All PM’s projects, next year)");
            dt2.Rows.Add("V0_Last Save JF-Bernier	", "Profils traités ou en cours par PFC (Tous les projets) incluant projet clos/ profiles completed or ongoing at PFC + Closed Projects");

            GridView1.DataSource = dt2;
            GridView1.DataBind();
        }
    }
}
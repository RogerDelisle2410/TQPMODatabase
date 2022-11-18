using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TQPMODatabase
{
    public partial class TQPMOAcceuil3 : Page
    {
        public string TabName;
        public string MAT;
        public double randomNum;
        public string language;
        public string mainTitle;

        //bool firstTime  ;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["connectionString"] = System.Configuration.ConfigurationManager.ConnectionStrings["TQPMODB"].ConnectionString;

            // language = "1"; //1 Francais - 2 English  
            if (Session["language"] != null)
            {
                language = Session["language"].ToString();
            }
            else
            {
                Session["language"] = "1";
                language = "1";
            }

            if (!IsPostBack)
            {
                if (Session["TabName"] != null)
                {
                    TabName = Session["TabName"].ToString();
                }
                else
                {
                    Session["TabName"] = "SAPVO";
                    TabName = "SAPVO";
                }
            }

            if (Session["TabName"] != null)
            {
                TabName = Session["TabName"].ToString();

                switch (TabName)
                {
                    case "SAPVO":
                        TabSectionPMO.CssClass = "Clicked";
                        MainView.ActiveViewIndex = 0;
                        break;
                    case "ACTUAL":
                        TabRapport.CssClass = "Clicked";
                        MainView.ActiveViewIndex = 1;
                        break;
                    case "CMTS":
                        TabSectionPFC.CssClass = "Clicked";
                        MainView.ActiveViewIndex = 2;
                        break;
                    case "ACTCMTS":
                        TabSectionAdmin.CssClass = "Clicked";
                        MainView.ActiveViewIndex = 3;
                        break;
                }
            }
        }
        public void ResetButtons()
        {
            foreach (Control container in Page.Controls)
            {
                foreach (Control c in container.Controls)
                {
                    foreach (Control ctrl in c.Controls)
                    {
                        if (ctrl is Button button)
                        {
                            (button).ForeColor = System.Drawing.Color.Black;
                            (button).CssClass = "Initial";
                        }
                    }
                }
            }
        }
        public void TabSectionPMO_Click(object sender, EventArgs e)
        {
            //ResetButtons();
            TabSectionPMO.ForeColor = System.Drawing.Color.Blue;
            TabRapport.ForeColor = System.Drawing.Color.Black;
            TabSectionPFC.ForeColor = System.Drawing.Color.Black;
            TabSectionAdmin.ForeColor = System.Drawing.Color.Black;
            MainView.ActiveViewIndex = 0;
            TabName = "SAPVO";
            Session["TabName"] = "SAPVO";
        }

        public void TabRapport_Click(object sender, EventArgs e)
        {
            //ResetButtons();
            TabRapport.ForeColor = System.Drawing.Color.Blue;
            TabSectionPFC.ForeColor = System.Drawing.Color.Black;
            TabSectionPMO.ForeColor = System.Drawing.Color.Black;
            TabSectionAdmin.ForeColor = System.Drawing.Color.Black;
            MainView.ActiveViewIndex = 1;
            TabName = "ACTUAL";
            Session["TabName"] = "ACTUAL";
        }

        public void TabSectionPFC_Click(object sender, EventArgs e)
        {
            //ResetButtons();
            TabSectionPFC.ForeColor = System.Drawing.Color.Blue;
            TabSectionPMO.ForeColor = System.Drawing.Color.Black;
            TabRapport.ForeColor = System.Drawing.Color.Black;
            TabSectionAdmin.ForeColor = System.Drawing.Color.Black;
            MainView.ActiveViewIndex = 2;
            TabName = "CMTS";
            Session["TabName"] = "CMTS";
        }
        public void TabSectionAdmin_Click(object sender, EventArgs e)
        {
            //  ResetButtons();
            TabSectionAdmin.ForeColor = System.Drawing.Color.Blue;
            TabSectionPFC.ForeColor = System.Drawing.Color.Black;
            TabRapport.ForeColor = System.Drawing.Color.Black;
            TabSectionPMO.ForeColor = System.Drawing.Color.Black;
            MainView.ActiveViewIndex = 3;
            TabName = "ACTCMTS";
            Session["TabName"] = "ACTCMTS";
        }
    }
}

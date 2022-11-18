using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TQPMODatabase
{
    public partial class FrmAdjProfiling : Page
    {
        public string TabName;
        public string MAT;
        public double randomNum;
        public string language;
        protected void Page_Load(object sender, EventArgs e)
        {

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
                TabSAPVO.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
                TabName = "SAPVO";

            }
        }
        public void ResetButtons(Control c)
        {
            foreach (var item in c.Controls)
            {
                if (item is Button button)
                {
                    (button).CssClass = "Initial";
                }
            }
        }
        protected void TabSAPVO_Click(object sender, EventArgs e)
        {
            ResetButtons(tabPanel);
            TabSAPVO.CssClass = "Clicked";
            MainView.ActiveViewIndex = 0;
            TabName = "SAPVO";
        }
        protected void TabACTUAL_Click(object sender, EventArgs e)
        {
            ResetButtons(tabPanel);
            TabACTUAL.CssClass = "Clicked";
            MainView.ActiveViewIndex = 1;
            TabName = "ACTUAL";
        }
        protected void TabCMTS_Click(object sender, EventArgs e)
        {
            ResetButtons(tabPanel);
            TabCMTS.CssClass = "Clicked";
            MainView.ActiveViewIndex = 2;
            TabName = "CMTS";
        }
        protected void TabACTCMTS_Click(object sender, EventArgs e)
        {
            ResetButtons(tabPanel);
            TabACTCMTS.CssClass = "Clicked";
            MainView.ActiveViewIndex = 3;
            TabName = "ACTCMTS";
        }
        protected void TabPPX_Click(object sender, EventArgs e)
        {
            ResetButtons(tabPanel);
            TabPPX.CssClass = "Clicked";
            MainView.ActiveViewIndex = 4;
            TabName = "PPX";
        }
        protected void TabLASTSAVE_Click(object sender, EventArgs e)
        {
            ResetButtons(tabPanel);
            TabLastSave.CssClass = "Clicked";
            MainView.ActiveViewIndex = 5;
            TabName = "LASTSAVE";
        }

        //protected void TabGrid_Click(object sender, EventArgs e)
        //{
        //    ResetButtons(tabPanel);
        //    TabGrid.CssClass = "Clicked";
        //    //TabSAPVO.CssClass = "Initial";
        //    //TabACTUAL.CssClass = "Initial";
        //    //TabCMTS.CssClass = "Initial";
        //    //TabACTCMTS.CssClass = "Initial";
        //    //TabPPX.CssClass = "Initial";
        //    //TabLastSave.CssClass = "Initial"; 
        //    MainView.ActiveViewIndex = 6;
        //    TabName = "GRID";
        //} 
    }
}
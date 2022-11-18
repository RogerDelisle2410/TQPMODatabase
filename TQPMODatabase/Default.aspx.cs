using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class _Default : Page
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
            //if (!IsPostBack)
            //{
            //    // language = "1"; //1 Francais - 2 English  
            //    if (Session["language"] != null)
            //    {
            //        language = Session["language"].ToString();
            //    }
            //    else
            //    {
            //        Session["language"] = "1";
            //    }
                TabSAPVO.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
                TabName = "SAPVO";
           // }
        }

        protected void TabSAPVO_Click(object sender, EventArgs e)
        {
            TabSAPVO.CssClass = "Clicked";
            TabACTUAL.CssClass = "Initial";
            TabCMTS.CssClass = "Initial";
            TabACTCMTS.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
            TabName = "SAPVO";
        }

        protected void TabACTUAL_Click(object sender, EventArgs e)
        {
            TabSAPVO.CssClass = "Initial";
            TabACTUAL.CssClass = "Clicked";
            TabCMTS.CssClass = "Initial";
            TabACTCMTS.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
            TabName = "ACTUAL";
        }

        protected void TabCMTS_Click(object sender, EventArgs e)
        {
            TabSAPVO.CssClass = "Initial";
            TabACTUAL.CssClass = "Initial";
            TabCMTS.CssClass = "Clicked";
            TabACTCMTS.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
            TabName = "CMTS";
        }
        protected void TabACTCMTS_Click(object sender, EventArgs e)
        {
            TabSAPVO.CssClass = "Initial";
            TabACTUAL.CssClass = "Initial";
            TabCMTS.CssClass = "Initial";
            TabACTCMTS.CssClass = "Clicked";
            MainView.ActiveViewIndex = 3;
            TabName = "ACTCMTS";
        }
        public void ChangeLanguage(object sender, EventArgs e)
        {
            Session["language"] = RadioButtonList1.SelectedItem.Value;

            Response.Redirect(Request.RawUrl);
        }
    }
}
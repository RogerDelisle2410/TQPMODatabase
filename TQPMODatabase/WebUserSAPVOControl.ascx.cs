using System;

namespace TQPMODatabase
{
    public partial class WebUserSAPVOControl : System.Web.UI.UserControl
    {
        public string language;
        public string TabName;
        protected void Page_Load(object sender, EventArgs e)
        {
            TabName = "SAPVO";
            // language = "1"; //1 Francais - 2 English  
            if (Session["language"] != null)
            {
                language = Session["language"].ToString();
            }
            else
            {
                Session["language"] = "1";
            }
        }
    }
}
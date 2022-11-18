using System;

namespace TQPMODatabase
{
    public partial class FrmPMOSection : System.Web.UI.Page
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
        }
    }
}
using System;

namespace TQPMODatabase
{
    public partial class FrmModJalon : System.Web.UI.Page
    {
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
                language = Session["language"].ToString();
            }

            //if (language == "1")
            //{
            //    Session["mainTitleIn"] = "Date dadministration";
            //}
            //else
            //{
            //    Session["mainTitleIn"] = "Admin Date Jalon";
            //} 
        }
    }
}
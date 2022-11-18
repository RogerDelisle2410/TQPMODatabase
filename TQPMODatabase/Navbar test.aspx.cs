using System;

namespace TQPMODatabase
{
    public partial class Navbar_test : System.Web.UI.Page
    {
        public string language;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
            }
        }
        public void ChangeLanguage(object sender, EventArgs e)
        {
            Session["language"] = RadioButtonList1.SelectedItem.Value;

            Response.Redirect(Request.RawUrl);
        }
    }
}
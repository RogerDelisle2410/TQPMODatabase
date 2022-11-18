using System;
using System.Web.UI;

namespace TQPMODatabase
{
    public partial class SiteMaster : MasterPage
    {
        public string TabName;
        public string language;
        public string mainTitleIn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["language"] != null)
            {
                language = Session["language"].ToString();
            }
            else
            {
                Session["language"] = "1";
            }
            if (!IsPostBack)
            {
                if (Session["language"] != null)
                {
                    language = Session["language"].ToString();
                    if (language == "1")
                    {
                        RadioButtonList1.SelectedIndex = 0;
                    }
                    else
                    {
                        RadioButtonList1.SelectedIndex = 1;
                    }
                }
                else
                {
                    Session["language"] = "1";
                    RadioButtonList1.SelectedIndex = 0;
                }
            }
        }
        public void ChangeLanguage(object sender, EventArgs e)
        {
            Session["language"] = RadioButtonList1.SelectedItem.Value;
            language = RadioButtonList1.SelectedItem.Value;
            if (language == "1")
            {
                RadioButtonList1.SelectedIndex = 0;
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                RadioButtonList1.SelectedIndex = 1;
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}

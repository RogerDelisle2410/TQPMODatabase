using System;

namespace TQPMODatabase
{
    public partial class WebUserLastSaveControl : System.Web.UI.UserControl
    {
        public string language;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime previousYear = DateTime.Now.AddYears(-1);
            DateTime currentYear = DateTime.Now;
            DateTime nextYear = DateTime.Now.AddYears(+1);

            this.RadioButtonList11.Items[0].Text = previousYear.Year.ToString();
            this.RadioButtonList11.Items[1].Text = currentYear.Year.ToString();
            this.RadioButtonList11.Items[2].Text = nextYear.Year.ToString();
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
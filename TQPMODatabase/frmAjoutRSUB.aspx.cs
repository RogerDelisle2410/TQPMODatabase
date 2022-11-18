using System;

namespace TQPMODatabase
{
    public partial class FrmAjoutRSUB : System.Web.UI.Page
    {
        public string language;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime previousYear = DateTime.Now.AddYears(-1);
            DateTime currentYear = DateTime.Now;
            DateTime nextYear = DateTime.Now.AddYears(+1);

            DropDownList1.Items[0].Text = previousYear.Year.ToString();
            DropDownList1.Items[1].Text = currentYear.Year.ToString();
            DropDownList1.Items[2].Text = nextYear.Year.ToString();
            // language = "1"; //1 Francais - 2 English  
            if (Session["language"] != null)
            {
                language = Session["language"].ToString();
            }
            else
            {
                Session["language"] = "1";
            }

            if (language == "1")
            {
                DropDownList5.Items[0].Text = "Sélectionner";
                DropDownList5.Items[1].Text = "C";
                DropDownList5.Items[2].Text = "E";
            }
            else
            {
                DropDownList5.Items[0].Text = "Select";
                DropDownList5.Items[1].Text = "C";
                DropDownList5.Items[2].Text = "E";
            }
        }
    }
}
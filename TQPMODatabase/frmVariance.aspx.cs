using System;

namespace TQPMODatabase
{
    public partial class FrmVariance : System.Web.UI.Page
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
            if (language == "1")
            {
                buttonVariance.Text = "Variances des Projets Plug";
                DropDownList1.Visible = true;
                DropDownList2.Visible = false;
            }
            else
            {
                buttonVariance.Text = "Plug Project Variances";
                DropDownList1.Visible = false;
                DropDownList2.Visible = true;
            }
        }
    }
}
using System;
using System.Web.UI;

namespace TQPMODatabase
{
    public partial class FrmMenuPrincipal : Page
    {
        public string MinDeDateMaj;
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
            //Page.ClientScript.RegisterOnSubmitStatement(typeof(Page), "closePage", "window.onunload = CloseWindow();");
        }
        protected void BtnClose_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.open('close.html', '_self', null);", true);
        }
        protected void BtnPMOSection_Click(object sender, EventArgs e)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('http://www.microsoft.com', '_blank');", true);

        }
    }
}
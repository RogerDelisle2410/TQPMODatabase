using System;

namespace TQPMODatabase
{
    public partial class TQPMOAcceuil2 : System.Web.UI.Page
    {

        public string language;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["language"] != null)
            {
                language = Session["language"].ToString();
            }
            else
            {
                Session["language"] = "1";
                language = "1";
            }
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

            //btnlabel11.Click += BtnFigerPPONo2_Click;

        }
        public void ChangeLanguage(object sender, EventArgs e)
        {
             Session["language"] = RadioButtonList1.SelectedItem.Value;

            Response.Redirect(Request.RawUrl);
        }

        //public void BtnFigerPPONo2_Click(object sender, EventArgs e)
        //{
        //    MessageBox.Show("Roger 2");
        //   // popOne.Visible = true;
        //} 
    }
}
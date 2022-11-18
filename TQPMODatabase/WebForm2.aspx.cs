using System;

namespace TQPMODatabase
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public string language;
        protected void Page_Load(object sender, EventArgs e)
        {
            //MessageBox.Show("in");
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
            // btnpopgestion.ServerClick += BtnPopGestion_Click;
            //   LinkButton1.Click += LinkButton1_OnClick;
        }
        //public void ChangeLanguage(object sender, EventArgs e)
        //{
        //    Session["language"] = RadioButtonList1.SelectedItem.Value;

        //    Response.Redirect(Request.RawUrl);
        //}


        //public void BtnPopGestion_Click(object sender, EventArgs e)
        //{

        //    PopGestionPanel.Visible = true;
        //}

        //protected void LinkButton1_OnClick(object sender, EventArgs e)
        //{
        //    MessageBox.Show("in");
        //}
    }
}
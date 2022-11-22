using System; 


namespace TQPMODatabase
{
    public partial class FrmFreezePPX : System.Web.UI.Page
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
            //    Session["mainTitleIn"]  = "Figer le PPX";
            //}
            //else
            //{
            //    Session["mainTitleIn"]  = "Freeze the PPX";
            //} 

            divPop4.Visible = true; 
            divPop5.Visible = true;
            divPop6.Visible = false;

            if (language == "1")
            {
                BtnFigerPPOYes.Text = "Oui";
                BtnFigerPPONo.Text = "Non";
                BtnCancel1.Text = "Annuler";
                BtnFigerPPOYesYes.Text = "Oui";
                BtnFigerPPONoNo.Text = "Non";
                BtnCancel2.Text = "Annuler";
                BtnSave.Text = "Sauver";
                BtnCancel3.Text = "Annuler";
            }
            else
            {
                BtnFigerPPOYes.Text = "Yes";
                BtnFigerPPONo.Text = "No";
                BtnCancel1.Text = "Cancel";
                BtnFigerPPOYesYes.Text = "Yes";
                BtnFigerPPONoNo.Text = "No";
                BtnCancel2.Text = "Cancel";
                BtnSave.Text = "Save";
                BtnCancel3.Text = "Cancel";
            }

            //BtnFigerPPO.Click += BtnFigerPPO_Click;
            BtnFigerPPOYes.Click += BtnFigerPPOYes_Click;
            BtnFigerPPONo.Click += BtnFigerPPONo_Click;
            BtnFigerPPOYesYes.Click += BtnFigerPPOYesYes_Click;
            BtnFigerPPONoNo.Click += BtnFigerPPOYesYes_Click;
            BtnSave.Click += BtnSave_Click;
        }
        public void BtnSave_Click(object sender, EventArgs e)
        { }
        public void BtnFigerPPOYes_Click(object sender, EventArgs e)
        {
            divPop4.Visible = true;
            divPop5.Visible = false;
            divPop6.Visible = true;
            divPop7.Visible = false;
        }
        public void BtnFigerPPONo_Click(object sender, EventArgs e)
        {
            divPop4.Visible = true;
            divPop5.Visible = false;
            divPop6.Visible = false;
            divPop7.Visible = true;
        }

        public void BtnFigerPPOYesYes_Click(object sender, EventArgs e)
        {
            divPop4.Visible = true;
            divPop5.Visible = false;
            divPop6.Visible = false;
            divPop7.Visible = true;
        }
    }
}
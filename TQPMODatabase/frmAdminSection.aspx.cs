using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TQPMODatabase
{
    public partial class FrmAdminSection : Page
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

            BtnDesactiveBase.Click += BtnDesactiveBase_Click;
            BtnDesactiveBaseYes.Click += BtnDesactiveBaseYes_Click;
            BtnDesactiveBaseNo.Click += BtnDesactiveBaseNo_Click;
            BtnFigerPPO.Click += BtnFigerPPO_Click;
            BtnFigerPPOYes.Click += BtnFigerPPOYes_Click;
            BtnFigerPPONo.Click += BtnFigerPPONo_Click;
            BtnFigerPPOYesYes.Click += BtnFigerPPOYesYes_Click;
            BtnFigerPPONoNo.Click += BtnFigerPPOYesYes_Click;
            BtnCancel1.Click += BtnCancel_Click;
            BtnCancel2.Click += BtnCancel_Click;
            BtnCancel3.Click += BtnCancel_Click;
            BtnSave.Click += BtnSave_Click;
        }
        public void BtnSave_Click(object sender, EventArgs e)
        { }
        public void BtnDesactiveBase_Click(object sender, EventArgs e)
        {
            //leBouton.Enabled = false;
            divPop1.Visible = false;
            divPop2.Visible = true;
            if (language == "1")
            {
                BtnDesactiveBaseYes.Text = "Oui";
                BtnDesactiveBaseNo.Text = "Non";
            }
            else
            {
                BtnDesactiveBaseYes.Text = "Yes";
                BtnDesactiveBaseNo.Text = "No";
            }
        }

        public void BtnDesactiveBaseYes_Click(object sender, EventArgs e)
        {
            divPop1.Visible = true;
            divPop2.Visible = false;
            if (language == "1")
            {
                BtnDesactiveBaseYes.Text = "Oui";
                BtnDesactiveBaseNo.Text = "Non";
            }
            else
            {
                BtnDesactiveBaseYes.Text = "Yes";
                BtnDesactiveBaseNo.Text = "No";
            }
        }
        public void BtnDesactiveBaseNo_Click(object sender, EventArgs e)
        {
            divPop1.Visible = true;
            divPop2.Visible = false;
        }

        private void DisableChilds(Control ctrl)
        {
            foreach (Control c in ctrl.Controls)
            {
                DisableChilds(c);
                if (c is Button button)
                {
                    (button).Enabled = false;
                }
            }
        }
        public void BtnFigerPPO_Click(object sender, EventArgs e)
        {
            //  DisableChilds(this.Page); 
            divPop3.Visible = false;
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
            //BtnCancel1.Text = "Annuler";

        }
        public void BtnFigerPPOYes_Click(object sender, EventArgs e)
        {
            divPop3.Visible = false;
            divPop4.Visible = true;
            divPop5.Visible = false;
            divPop6.Visible = true;
            divPop7.Visible = false;
        }
        public void BtnFigerPPONo_Click(object sender, EventArgs e)
        {
            divPop3.Visible = false;
            divPop4.Visible = true;
            divPop5.Visible = false;
            divPop6.Visible = false;
            divPop7.Visible = true;
        }

        public void BtnFigerPPOYesYes_Click(object sender, EventArgs e)
        {
            divPop3.Visible = false;
            divPop4.Visible = true;
            divPop5.Visible = false;
            divPop6.Visible = false;
            divPop7.Visible = true;
        }
        public void BtnCancel_Click(object sender, EventArgs e)
        {
            //MainColumn.EnableViewState = true;
            divPop3.Visible = true;
            divPop4.Visible = false;
            divPop5.Visible = false;
            divPop6.Visible = false;
            divPop7.Visible = false;
        }
    }
}
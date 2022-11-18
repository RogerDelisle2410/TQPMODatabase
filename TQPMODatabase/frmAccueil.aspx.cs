using System;
//using System.Collections.Generic;

namespace TQPMODatabase
{
    public partial class FrmAccueil : System.Web.UI.Page
    {
        public string Nom;
        public string con;
        public string language;
        public string VersionActuel { get; set; }
        public string VersionOld { get; set; }
        public string UserNetwork { get; set; }
        public int Userlock { get; set; }
        public int FKPermission { get; set; }

        //private List<string> result = new List<string>();
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
            ProcessFile();
        }

        public void ChangeLanguage(object sender, EventArgs e)
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
        }
        public void ProcessFile()
        {
            //    con = System.Configuration.ConfigurationManager.ConnectionStrings["TQPMODB"].ConnectionString;
            //    VersionActuel = GetVersion.Version(con);

            //    //***AFE***Recuperer les permission des utilisateurs, si il n'est pas admin, la base ne s'ouvre pas si la bonne version n'est pas telecharger 
            //    var userName = System.Security.Principal.WindowsIdentity.GetCurrent().Name;
            //    var IDSAP = userName.Substring(userName.IndexOf(@"\") + 1);
            //    result = GetUserLock.GetUser(IDSAP, con);

            //    FKPermission = Convert.ToInt16(result[0]);
            //    // Nom = result[1];

            //    VersionOld = etqVersion.InnerText;

            //    if (VersionActuel == VersionOld)
            //    {

            //        if (FKPermission != 21) //Si 21 = User locked dans tbluserpermission 'If not 21 - proceed, else desactivated.
            //        {
            //            Nom = result[1];
            //        }
            //        else
            //        {
            //            DialogResult dialog = System.Windows.Forms.MessageBox.Show("Votre compte est desactivé, veuillez communiquer avec votre administrateur." + "\n" + "Your account is disabled, please contact your administrator.");

            //            if (dialog == DialogResult.OK)
            //            {
            //                ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
            //            }
            //        }

            //        //Va chercher les dernière mise-à-jour des rapports qui sont introduit dans la database
            //        UpdateMAJDate.UpdateMAJDates(con);

            //        //else  //'Si le match est pas bon entre version du BE et FE  affiche message
            //        //{
            //        //    System.Windows.Forms.MessageBox.Show("La version:  " + VersionOld + " de la Base n'est plus en service, veuillez télécharger la version: " + VersionActuel + "\n" + "The version:  " + VersionOld + " of the Data base is not in  service, Please download the version: " + VersionActuel);

            //        //    //'***AFE**** si le user n est pas Admin (<>15) la Base ne s'ouvrira pas
            //        //    if (Userlock != 15)
            //        //    {
            //        //        ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
            //        //    }
            //    }
            //    else
            //    {
            //        ////System.Windows.Forms.MessageBox.Show("Erreur de chargement de la version actuelle de la base, contacter votre administrateur." + "\n" + "Data load error of the current version, please contact the admin.");
            //    }

            //    //Rafraichir_Les_Donnees_en_Provenance_des_fichiers_excel *** not activated ***
            //    ////   ImportExcel.Rafraichir_Les_Donnees(con);

            //    //Response.Redirect(string.Format("~/FrmMenuPrincipal.aspx"));

            //    //Response.Redirect(string.Format("~/frmPersoSettings.aspx.cs"));

            //}

            //else
            //{

            //}

            //        private readonly int i;

            //            if (i >= 0) {
            //                i = i - 1 }
            //    else  if (i = 1  ){
            //            Btn_Mise_a_jours_FE()
            //}
            //else{
            //    DoCmd.OpenForm "FrmMenuPrincipal"
            //        DoCmd.Close acForm, "frmAccueil", acSaveNo
        }
    }
}


using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace TQPMODatabase
{
    public partial class FrmOpenSession : Page
    {
        public string language;

        public string con = System.Configuration.ConfigurationManager.ConnectionStrings["TQPMODB"].ConnectionString;

        public string Authorisation { get; set; }

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

            if (IsPostBack)
            {
                using (SqlConnection cnn = new SqlConnection(con))
                {
                    SqlCommand cmd = new SqlCommand
                    {
                        Connection = cnn,
                        CommandType = System.Data.CommandType.StoredProcedure,
                        CommandText = "sp_frmVerifyAuthorisation"
                    };
                    cmd.Parameters.AddWithValue("@TelusCodeUser", Request.Form["TelusCodeUser"]);
                    cnn.Open();

                    object StatusUser = cmd.ExecuteScalar();
                    //cmd.Dispose();
                    if (StatusUser != null)
                    {
                        if ((bool)StatusUser)
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "OpenWindow", "window.open('TQPMOAcceuil.aspx', '_self');", true);
                        }
                        else
                        {
                            if (language == "1")
                            {
                                label11.Text = "Votre compte est desactivé, veuillez communiquer avec votre administrateur.";
                            }
                            else
                            {
                                label11.Text = "Your account is disabled, please contact your administrator.";
                            }
                        }
                    }
                    else
                    {
                        if (language == "1")
                        {
                            label11.Text = "Code d'utilisateur Telus invalide";
                        }
                        else
                        {
                            label11.Text = "Invalid Telus User Code";
                        }
                    }
                }
            }
        }
    }
}
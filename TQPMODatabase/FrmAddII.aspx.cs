using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace TQPMODatabase
{
    public partial class FrmAddII : System.Web.UI.Page
    {
        public string language;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                using (SqlConnection cnn = new SqlConnection(Session["connectionString"].ToString()))
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand
                        {
                            Connection = cnn,
                            CommandType = System.Data.CommandType.StoredProcedure,
                            CommandText = "sp_frmAddII"
                        };

                        cmd.Parameters.AddWithValue("@IInum", IInum.Text);
                        cmd.Parameters.AddWithValue("@IInam", IInam.Text);
                        cmd.Parameters.AddWithValue("@PrgmMgr", PrgmMgr.Text);
                        cmd.Parameters.AddWithValue("@PrgmLead", PrgmLead.Text);
                        cmd.Parameters.AddWithValue("@NewProgram", NewProgram.Text);
                        cmd.Parameters.AddWithValue("@PrgmGrp", PrgmGrp.Text);
                        cmd.Parameters.AddWithValue("@TsoPrgm", TsoPrgm.Text);
                        cmd.Parameters.AddWithValue("@MidLevel", MidLevel.Text);
                        cmd.Parameters.AddWithValue("@Year", yearIn.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@Prov", provIn.SelectedItem.Text);

                        cnn.Open();
                        cmd.ExecuteNonQuery();
                        cmd.Dispose();
                        //cnn.Close();
                        Response.Redirect("FrmIIList.aspx", false);
                    }
                    catch (Exception ex)
                    {
                        DialogResult dialog = System.Windows.Forms.MessageBox.Show(ex.Message);

                        if (dialog == DialogResult.OK)
                        {
                            Environment.Exit(0);
                        }
                    }
                }
            }

            DateTime previousYear = DateTime.Now.AddYears(-1);
            DateTime currentYear = DateTime.Now;
            DateTime nextYear = DateTime.Now.AddYears(+1);

            yearIn.Items[0].Text = previousYear.Year.ToString();
            yearIn.Items[1].Text = currentYear.Year.ToString();
            yearIn.Items[2].Text = nextYear.Year.ToString();

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
    }
}
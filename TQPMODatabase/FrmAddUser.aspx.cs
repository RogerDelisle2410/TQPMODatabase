using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace TQPMODatabase
{
    public partial class FrmAddUser : System.Web.UI.Page
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
                            CommandText = "sp_frmAddUser"
                        };
                        cmd.Parameters.AddWithValue("@telusCode",  telusCode.Text);
                        cmd.Parameters.AddWithValue("@sapCode", sapCode.Text);
                        cmd.Parameters.AddWithValue("@name", name.Text);
                        cmd.Parameters.AddWithValue("@email", email.Text);
                        cmd.Parameters.AddWithValue("@role",  role.Text);
                        cmd.Parameters.AddWithValue("@status", statusIn.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@mgmt", mgmt.Text); 

                        cnn.Open();
                        cmd.ExecuteNonQuery();
                         cmd.Dispose();
                        //cnn.Close();

                        Response.Redirect("FrmUserList.aspx", false);
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

using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace TQPMODatabase
{
    public partial class FrmModifyII : System.Web.UI.Page
    {
        public string language;
        public string idOut;
        public string idIn;
        public string deleteII;
        public string deleteIIname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["language"] != null)
            {
                language = Session["language"].ToString();
            }
            else
            {
                Session["language"] = "1";
            }
            DateTime previousYear = DateTime.Now.AddYears(-1);
            DateTime currentYear = DateTime.Now;
            DateTime nextYear = DateTime.Now.AddYears(+1);

            yearIn.Items[0].Text = previousYear.Year.ToString();
            yearIn.Items[1].Text = currentYear.Year.ToString();
            yearIn.Items[2].Text = nextYear.Year.ToString();

            if (!IsPostBack)
            {
                idIn = Request.QueryString["Arg1"];
                deleteII = Request.QueryString["Arg2"];
                deleteIIname = Request.QueryString["Arg3"];
                if (idIn != null)
                {
                    ModifyII(idIn);
                }
                if (deleteII != null)
                {
                    DeleteII(deleteII, deleteIIname);
                    Response.Redirect("FrmIIList.aspx", false);
                }
            }
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
                            CommandText = "sp_frmUpdateII"
                        };
                        cmd.Parameters.AddWithValue("@id", Request.QueryString["Arg1"]);
                        cmd.Parameters.AddWithValue("@IInum", IInumIn.Text);
                        cmd.Parameters.AddWithValue("@IInam", IInamIn.Text);
                        cmd.Parameters.AddWithValue("@PrgmMgr", PrgmMgrIn.Text);
                        cmd.Parameters.AddWithValue("@PrgmLead", PrgmLeadIn.Text);
                        cmd.Parameters.AddWithValue("@NewProgram", NewProgramIn.Text);
                        cmd.Parameters.AddWithValue("@PrgmGrp", PrgmGrpIn.Text);
                        cmd.Parameters.AddWithValue("@TsoPrgm", TsoPrgmIn.Text);
                        cmd.Parameters.AddWithValue("@MidLevel", MidLevelIn.Text); ;
                        cmd.Parameters.AddWithValue("@Year", yearIn.SelectedItem.Text);
                        cmd.Parameters.AddWithValue("@Prov", provIn.SelectedItem.Text);

                        cnn.Open();
                        cmd.ExecuteNonQuery();
                        //cmd.Dispose();
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
        }

        public void ModifyII(string idIn)
        {
            //User modifyUser = new User();
            using (SqlConnection cnn = new SqlConnection(Session["connectionString"].ToString()))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand
                    {
                        Connection = cnn,
                        CommandType = System.Data.CommandType.StoredProcedure,
                        CommandText = "sp_frmModifyII"
                    };
                    cmd.Parameters.AddWithValue("@userId", idIn);
                    cnn.Open();
                    using (SqlDataReader oReader = cmd.ExecuteReader())
                    {
                        while (oReader.Read())
                        {
                            IInumIn.Text = oReader["IInum"].ToString();
                            IInamIn.Text = oReader["IInam"].ToString();
                            PrgmMgrIn.Text = oReader["PrgmMgr"].ToString();
                            PrgmLeadIn.Text = oReader["PrgmLead"].ToString();
                            NewProgramIn.Text = oReader["New Program"].ToString();
                            PrgmGrpIn.Text = oReader["Prgm Grp"].ToString();
                            TsoPrgmIn.Text = oReader["Tso Prgm"].ToString();
                            MidLevelIn.Text = oReader["MidLevel"].ToString();

                            var yy = oReader["Year"].ToString();
                            var pr = oReader["Prov"].ToString();

                            int i = 0;
                            foreach (var item in yearIn.Items)
                            {
                                if (item.ToString().Equals(yy))
                                {
                                    yearIn.SelectedIndex = i;
                                    break;
                                }
                                i++;
                            }
                            int ii = 0;
                            foreach (var item in provIn.Items)
                            {
                                if (item.ToString().Equals(pr))
                                {
                                    provIn.SelectedIndex = ii;
                                    break;
                                }
                                ii++;
                            }
                        }
                        //cmd.Dispose();
                        //cnn.Close();
                    }
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

        public void DeleteII(string deleteII, string deleteIIname)
        {
            string message = "Do you want to Delete this II" + "\n" + deleteIIname + "?";
            string title = "Delete II";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result = MessageBox.Show(message, title, buttons);
            if (result == DialogResult.No)
            {
                Response.Redirect("FrmIIList.aspx", false);
            }
            else
            {
                using (SqlConnection cnn = new SqlConnection(Session["connectionString"].ToString()))
                {
                    try
                    {
                        SqlCommand cmd = new SqlCommand
                        {
                            Connection = cnn,
                            CommandType = System.Data.CommandType.StoredProcedure,
                            CommandText = "sp_frmDeleteII"
                        };
                        cmd.Parameters.AddWithValue("@Id", deleteII);
                        cnn.Open();
                        cmd.ExecuteNonQuery();
                        //cmd.Dispose();
                        //cnn.Close();
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
        }
    }
}
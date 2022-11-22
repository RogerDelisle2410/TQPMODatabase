using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace TQPMODatabase
{
    public partial class FrmIIlist : Page
    {
        public string language;
        //public int[] laArray;
        public DataTable dt;
        public SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                this.BindGrid(sender, e);
            }
            // language = "1"; //1 Francais - 2 English  
            if (Session["language"] != null)
            {
                language = Session["language"].ToString();
            }
            else
            {
                Session["language"] = "1";
            }
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView.PageIndex = e.NewPageIndex;
            BindGrid(sender, e);
        }
        protected void ClearBox(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            BindGrid(sender, e);
        }
        protected void BindGrid(object sender, EventArgs e)
        {
            dt = new DataTable();
            SqlConnection cnn = new SqlConnection(Session["connectionString"].ToString());


            if (txtSearch.Text == "")
            {
                SqlCommand cmd = new SqlCommand
                {
                    Connection = cnn,
                    CommandType = System.Data.CommandType.StoredProcedure,
                    CommandText = "sp_frmIIList"
                };
                da = new SqlDataAdapter(cmd);
            }
            else
            {
                SqlCommand cmd = new SqlCommand
                {
                    Connection = cnn,
                    CommandType = System.Data.CommandType.StoredProcedure,
                    CommandText = "sp_frmFilterIIList"
                };
                cmd.Parameters.AddWithValue("@searchItem", txtSearch.Text);
                da = new SqlDataAdapter(cmd);
            }

            da.Fill(dt);
            cnn.Close();
            da.Dispose();

            GridView.RowStyle.HorizontalAlign = HorizontalAlign.Right;

            GridView.DataSource = dt;
            GridView.DataBind();
        }
        protected void DeleteCheckedRecords(object sender, EventArgs e)
        {
            string[] variable = hdnfldVariable.Value.Split(',');

            string message = "Do you want to Delete the Selected II?";
            string title = "Delete II";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result = MessageBox.Show(message, title, buttons);
            if (result == DialogResult.No)
            {
                Response.Redirect("FrmIIList.aspx", false);
            }
            else
            {
                for (int i = 0; i < variable.Length; i++)
                {
                    using (SqlConnection cnn = new SqlConnection(Session["connectionString"].ToString()))
                    {
                        try
                        {
                            SqlCommand cmd = new SqlCommand
                            {
                                Connection = cnn,
                                CommandType = System.Data.CommandType.StoredProcedure,
                                CommandText = "sp_frmDeleteIIfromArray"
                            };
                            cmd.Parameters.AddWithValue("@list", variable[i]);
                            cnn.Open();
                            cmd.ExecuteNonQuery();
                            cmd.Dispose();
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
            Response.Redirect("FrmIIList.aspx", false);
        }
    }
}
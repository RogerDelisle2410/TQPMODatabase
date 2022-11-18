using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.ModelBinding;
using System.Linq;

namespace TQPMODatabase
{
    public partial class FrmIIlist : Page
    {
        public string language;
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
        protected void DeleteSelectedRow(object sender, EventArgs e)
        {

        }

    }
}
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace TQPMODatabase
{
    public partial class FrmUserList : System.Web.UI.Page
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
            } 

            DataTable dt = new DataTable();
            SqlConnection cnn = new SqlConnection(Session["connectionString"].ToString());

            SqlCommand cmd = new SqlCommand
            {
                Connection = cnn,
                CommandType = System.Data.CommandType.StoredProcedure,
                CommandText = "sp_frmUserList"
            }; 

            SqlDataAdapter da = new SqlDataAdapter(cmd);
             
            da.Fill(dt);
            cnn.Close();
            da.Dispose();
            GridView.DataSource = dt;
            GridView.DataBind();
        }
        protected void ClearBox(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            Page_Load(sender, e);
        }
    }
}
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace TQPMODatabase
{
    public partial class WebUserGridControl : System.Web.UI.UserControl
    {
        public string TabName;
        public string MAT;
        public double randomNum;
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
            if (!IsPostBack)
            {
                Random random = new Random();
                randomNum = Math.Round(random.NextDouble() / 100, 3);

                DataTable dt = new DataTable();
                DataTable dt2 = new DataTable();

                dt.Columns.Add("Month");
                dt.Columns.Add("MAT");
                dt.Columns.Add("INT");
                dt.Columns.Add("EXT");
                dt.Columns.Add("Total");
                dt.Columns.Add("CTRB");
                dt.Columns.Add("NetTotal");

                dt.Rows.Add("Jan");
                dt.Rows.Add("Feb");
                dt.Rows.Add("Mar");
                dt.Rows.Add("Apr");
                dt.Rows.Add("Mai");
                dt.Rows.Add("Jun");
                dt.Rows.Add("Jul");
                dt.Rows.Add("Aou");
                dt.Rows.Add("Sep");
                dt.Rows.Add("Oct");
                dt.Rows.Add("Nov");
                dt.Rows.Add("Dec");
                dt.Rows.Add("Tot");

                dt2.Columns.Add("Middle");
                dt2.Columns.Add("MAT2");
                dt2.Columns.Add("INT2");
                dt2.Columns.Add("EXT2");
                dt2.Columns.Add("Total2");
                dt2.Columns.Add("CTRB2");
                dt2.Columns.Add("NetTotal2");

                dt2.Rows.Add("Jan");
                dt2.Rows.Add("Feb");
                dt2.Rows.Add("Mar");
                dt2.Rows.Add("Apr");
                dt2.Rows.Add("Mai");
                dt2.Rows.Add("Jun");
                dt2.Rows.Add("Jul");
                dt2.Rows.Add("Aou");
                dt2.Rows.Add("Sep");
                dt2.Rows.Add("Oct");
                dt2.Rows.Add("Nov");
                dt2.Rows.Add("Dec");
                dt2.Rows.Add("Tot");

                GridView1.RowStyle.HorizontalAlign = HorizontalAlign.Right;
                GridView2.RowStyle.HorizontalAlign = HorizontalAlign.Right;

                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView2.DataSource = dt2;
                GridView2.DataBind();
            }
        }
    }
}
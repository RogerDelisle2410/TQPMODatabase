using System;
using System.Data;
using System.Web.UI.WebControls;

namespace TQPMODatabase
{
    public partial class WebUserCMTSGridControl : System.Web.UI.UserControl
    {
        public string TabName;
        public string MAT;
        public double randomNum;
        public string language;

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime previousYear = DateTime.Now.AddYears(-1);
            DateTime currentYear = DateTime.Now;
            DateTime nextYear = DateTime.Now.AddYears(+1);

            RadioButtonList3.Items[0].Text = previousYear.Year.ToString();
            RadioButtonList3.Items[1].Text = currentYear.Year.ToString();
            RadioButtonList3.Items[2].Text = nextYear.Year.ToString();

            RadioButtonList4.Items[0].Text = previousYear.Year.ToString();
            RadioButtonList4.Items[1].Text = currentYear.Year.ToString();
            RadioButtonList4.Items[2].Text = nextYear.Year.ToString();

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
                DataTable dt = new DataTable();

                dt.Columns.Add("Month");
                dt.Columns.Add("MAT");
                dt.Columns.Add("INT");
                dt.Columns.Add("EXT");
                dt.Columns.Add("Total");
                dt.Columns.Add("CTRB");
                dt.Columns.Add("NetTotal");

                dt.Columns.Add("Middle");
                dt.Columns.Add("MAT2");
                dt.Columns.Add("INT2");
                dt.Columns.Add("EXT2");
                dt.Columns.Add("Total2");
                dt.Columns.Add("CTRB2");
                dt.Columns.Add("NetTotal2");

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

                GridView1b.RowStyle.HorizontalAlign = HorizontalAlign.Right;

                GridView1b.DataSource = dt;
                GridView1b.DataBind();
            }
        }
    }
}
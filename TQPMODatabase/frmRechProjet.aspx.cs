using System;
using System.Data;

namespace TQPMODatabase
{
    public partial class FrmRechProjet : System.Web.UI.Page
    {
        public string language;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["language"] != null)
                {
                    language = Session["language"].ToString();
                }
                else
                {
                    Session["language"] = "1";
                }

                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[2] {
                            new DataColumn("Name", typeof(string)),
                            new DataColumn("Country",typeof(string)) });
                dt.Rows.Add("BK04.32.T0510", "NAV Canada PQ Bid # 13221");
                dt.Rows.Add("BK04.32.T0510", "NAV Canada PQ Bid # 13221");
                dt.Rows.Add("BK04.32.T0510", "NAV Canada PQ Bid # 13221");
                GridView1.DataSource = dt;
                GridView1.DataBind();

                DataTable dt2 = new DataTable();
                dt2.Columns.AddRange(new DataColumn[5] {
                            new DataColumn("1", typeof(string)),
                            new DataColumn("2",typeof(string))   ,
                            new DataColumn("3", typeof(string))   ,
                            new DataColumn("4", typeof(string))   ,
                            new DataColumn("5", typeof(string)) });

                dt2.Rows.Add("BK04.32.T0510", "BK04.32.T0510", "NAV Canada PQ Bid # 13221", "CAP", "Roger Delisle");
                dt2.Rows.Add("BK04.32.T0510", "BK04.32.T0510", "NAV Canada PQ Bid # 13221", "CAP", "Roger Delisle");
                dt2.Rows.Add("BK04.32.T0510", "BK04.32.T0510", "NAV Canada PQ Bid # 13221", "CAP", "Roger Delisle");
                GridView2.DataSource = dt2;
                GridView2.DataBind();
            }
        }
    }
}
using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace TQPMODatabase
{
    public partial class FrmModifyUser : System.Web.UI.Page
    {
        public string language;
        public string idOut;
        public string UserId;
        public string deleteUser;
        public string deleteUserName;
        public string leLanguage;

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
            if (!IsPostBack)
            {
                UserId = Request.QueryString["Arg1"];
                deleteUser = Request.QueryString["Arg2"]; 
                deleteUserName = Request.QueryString["Arg3"];
                
                if (UserId != null)
                {
                    ModifyUser(UserId);
                }
                if (deleteUser != null)
                {
                    DeleteUser(deleteUser, deleteUserName);
                    Response.Redirect("FrmUserList.aspx", false);
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
                            CommandText = "sp_frmUpdateUser"
                        };

                        cmd.Parameters.AddWithValue("@id", Request.QueryString["Arg1"]);
                        cmd.Parameters.AddWithValue("@telusCode", telusCodeIn.Text);
                        cmd.Parameters.AddWithValue("@sapCode", sapCodeIn.Text);
                        cmd.Parameters.AddWithValue("@name", nameIn.Text);
                        cmd.Parameters.AddWithValue("@email", emailIn.Text);
                        cmd.Parameters.AddWithValue("@role", roleIn.Text);
                        cmd.Parameters.AddWithValue("@status", statusIn.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@mgmt", mgmtIn.Text);

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
        }

        public void ModifyUser(string UserId)
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
                        CommandText = "sp_frmModifyUser"
                    };
                    cmd.Parameters.AddWithValue("@userId", UserId);
                    cnn.Open();
                    using (SqlDataReader oReader = cmd.ExecuteReader())
                    {
                        while (oReader.Read())
                        {
                            //test.Value = oReader["UserReseau"].ToString();
                            telusCodeIn.Text = oReader["TelusCodeUser"].ToString();
                            sapCodeIn.Text = oReader["SAPCodeUser"].ToString();
                            nameIn.Text = oReader["NameUser"].ToString();
                            emailIn.Text = oReader["EmailUser"].ToString();
                            roleIn.Text = oReader["RoleUser"].ToString();
                            statusIn.SelectedIndex = 0;  /*(bit)oReader["StatusUser"];*/
                            mgmtIn.Text = oReader["ID_Manager"].ToString();
                        }
                        cmd.Dispose();
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
        public void DeleteUser(string deleteUser, string deleteUserName)
        {
            //MessageBox.Show(deleteUser + ' ' + deleteUserName);
            string message = "Do you want to Delete User" +"\n" + deleteUserName + "?";
            string title = "Delete User";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result = MessageBox.Show(message, title, buttons);
            if (result == DialogResult.No)
            {
                Response.Redirect("FrmUserList.aspx", false);
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
                            CommandText = "sp_frmDeleteUser"
                        };
                        cmd.Parameters.AddWithValue("@userId", deleteUser);
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
    }
}
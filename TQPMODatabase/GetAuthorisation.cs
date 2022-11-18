using System.Data.SqlClient;

namespace TQPMODatabase
{
    public static class GetAuthorisation
    {
        public static string Version(string con)
        {
            SqlConnection cnn = new SqlConnection(con);

            SqlCommand cmd = new SqlCommand
            {
                Connection = cnn,
                CommandType = System.Data.CommandType.StoredProcedure,
                CommandText = "sp_VerifyAuthorisation"
            };
            cmd.Parameters.AddWithValue("@id", 1);
            cmd.Parameters.AddWithValue("@userId", telusCodeIn.Text);
            cnn.Open();
            object authorisation = cmd.ExecuteScalar();
            cmd.Dispose();
            cnn.Close();
            return authorisation.ToString();
             
        }
    }
}
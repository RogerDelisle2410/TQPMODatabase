using System.Collections.Generic;

namespace TQPMODatabase
{
    public static class GetUserLock
    {
        public static List<string> GetUser(string UserNetwork, string con)
        {
            //SqlConnection cnn = new SqlConnection(con);

            ////string FKPermission = "";
            ////string Nom = "";
            //List<string> result = new List<string>();
            //SqlCommand cmd = new SqlCommand
            //{
            //    Connection = cnn,
            //    CommandType = System.Data.CommandType.StoredProcedure,
            //    CommandText = "sp_Userlock"
            //};
            //cmd.Parameters.AddWithValue("@UserNetwork", UserNetwork);
            //cnn.Open();

            //using (var reader = cmd.ExecuteReader())
            //{
            //    while (reader.Read())
            //    {
            //        result.Add(reader["FKPermission"].ToString());
            //        result.Add(reader["Nom"].ToString());
            //    }
            //} 
            //cmd.Dispose();
            //cnn.Close();
            //return result;  
            return null;
        }
    }
}
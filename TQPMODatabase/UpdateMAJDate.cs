using System;
using System.Data.SqlClient;

namespace TQPMODatabase
{
    public static class UpdateMAJDate
    {
        public static DateTime PS03TRACK { get; private set; }
        public static DateTime PS03Upload { get; private set; }
        public static DateTime PS35LPA { get; private set; }
        public static DateTime PS03Cont { get; private set; }
        public static DateTime DtHardStop { get; private set; }
        public static void UpdateMAJDates(string con)
        {
            //SqlConnection cnn = new SqlConnection(con);
            //PS03TRACK = File.GetLastWriteTime(@"\\corp.ads\data\NetworkOperations\GestionProjets\BaseAccessProd\PS03-tracking.xlsm");
            //ProcessSQL("sp_PS03TRACK", PS03TRACK, cnn);
            //PS03Upload = File.GetLastWriteTime(@"\\corp.ads\data\NetworkOperations\GestionProjets\BaseAccessProd\PS03Upload.xlsm");
            //ProcessSQL("sp_PS03Upload",PS03Upload, cnn);
            //PS35LPA = File.GetLastWriteTime(@"\\corp.ads\data\NetworkOperations\GestionProjets\BaseAccessProd\PS35 - Importation LPA.xlsm");
            //ProcessSQL("sp_PS35LPA", PS35LPA, cnn);
            //PS03Cont = File.GetLastWriteTime(@"\\corp.ads\data\NetworkOperations\GestionProjets\BaseAccessProd\PS03 Contribution.xlsm");
            //ProcessSQL("sp_PS03Cont", PS03Cont, cnn);
            //DtHardStop = File.GetLastWriteTime(@"\\tqpfs001\GPSM\3. Logiciels\Hard Stop Report\Hard Stop Report.xlsm");
            //ProcessSQL("sp_DtHardStop", DtHardStop, cnn);
        }
        private static void ProcessSQL(string spSQL, DateTime newDate, SqlConnection cnn)
        {
            //try
            //{
            //    SqlCommand cmd1 = new SqlCommand
            //    {
            //        Connection = cnn,
            //        CommandType = System.Data.CommandType.StoredProcedure,
            //        CommandText = spSQL
            //    };
            //    cmd1.Parameters.AddWithValue("@newDate", newDate);
            //    cnn.Open();
            //    cmd1.ExecuteScalar();
            //    cmd1.Dispose();
            //    cnn.Close();
            //}
            //catch (Exception e)
            //{
            //    DialogResult dialog = System.Windows.Forms.MessageBox.Show(e.Message);

            //    if (dialog == DialogResult.OK)
            //    {
            //        Environment.Exit(0);
            //    }
            //}
        }
    }
}
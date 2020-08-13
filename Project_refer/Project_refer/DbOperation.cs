using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project_refer
{
    public class DbOperation
    {
        #region tblReferral_DeleteByID Code 

        ///<summary>
        ///What this method do...?
        ///</summary>
        ///<param name="ReferralID" >This Parm Used For ??? </param>
        ///<param name="_Status" >This Parm Used For ??? </param>
        ///<param name="_StatusDetails" >This Parm Used For ??? </param>
        ///<returns>void</returns>
        public static void tblReferral_DeleteByID(int ReferralID, out bool _Status, out string _StatusDetails)
        {
            _Status = false;
            _StatusDetails = null;

            SqlConnection conn = null;
            SqlCommand cmd = null;
            try
            {
                string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
                conn = new SqlConnection(ConnectionString);
                cmd = new SqlCommand("tblReferral_DeleteByID", conn);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ReferralID", ReferralID);

                SqlParameter _StatusParm = new SqlParameter("@_Status", SqlDbType.Bit);
                _StatusParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusParm);

                SqlParameter _StatusDetailsParm = new SqlParameter("@_StatusDetails", SqlDbType.VarChar, 100);
                _StatusDetailsParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusDetailsParm);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                _Status = (bool)_StatusParm.Value;
                _StatusDetails = (string)_StatusDetailsParm.Value;
            }
            catch (Exception ex)
            {
                _Status = false;
                _StatusDetails = ex.Message;
                return;
            }
            finally
            {
                conn.Dispose();
                cmd.Dispose();
            }
        }


        #endregion

        #region tblReferral_SelectAll Code 

        ///<summary>
        ///What this method do...?
        ///</summary>
        ///<param name="_Status" >This Parm Used For ??? </param>
        ///<param name="_StatusDetails" >This Parm Used For ??? </param>
        ///<returns>DataTable</returns>
        public static DataTable tblReferral_SelectAll(out bool _Status, out string _StatusDetails)
        {
            _Status = false;
            _StatusDetails = null;


            // DataTable Declaration
            DataTable dt = new DataTable();

            SqlConnection conn = null;
            SqlCommand cmd = null;
            try
            {
                string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
                conn = new SqlConnection(ConnectionString);
                cmd = new SqlCommand("tblReferral_SelectAll", conn);

                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);


                SqlParameter _StatusParm = new SqlParameter("@_Status", SqlDbType.Bit);
                _StatusParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusParm);

                SqlParameter _StatusDetailsParm = new SqlParameter("@_StatusDetails", SqlDbType.VarChar, 100);
                _StatusDetailsParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusDetailsParm);

                conn.Open();
                Adapter.Fill(dt);
                conn.Close();

                _Status = (bool)_StatusParm.Value;
                _StatusDetails = (string)_StatusDetailsParm.Value;

                return dt;
            }
            catch (Exception ex)
            {
                _Status = false;
                _StatusDetails = ex.Message;

                //Return Value
                return dt;
            }
            finally
            {
                conn.Dispose();
                cmd.Dispose();
            }
        }


        #endregion

        #region tblReferral_SelectByID Code 

        ///<summary>
        ///What this method do...?
        ///</summary>
        ///<param name="ReferralID" >This Parm Used For ??? </param>
        ///<param name="_Status" >This Parm Used For ??? </param>
        ///<param name="_StatusDetails" >This Parm Used For ??? </param>
        ///<returns>DataTable</returns>
        public static DataTable tblReferral_SelectByID(int ReferralID, out bool _Status, out string _StatusDetails)
        {
            _Status = false;
            _StatusDetails = null;


            // DataTable Declaration
            DataTable dt = new DataTable();

            SqlConnection conn = null;
            SqlCommand cmd = null;
            try
            {
                string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
                conn = new SqlConnection(ConnectionString);
                cmd = new SqlCommand("tblReferral_SelectByID", conn);

                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);

                cmd.Parameters.AddWithValue("@ReferralID", ReferralID);

                SqlParameter _StatusParm = new SqlParameter("@_Status", SqlDbType.Bit);
                _StatusParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusParm);

                SqlParameter _StatusDetailsParm = new SqlParameter("@_StatusDetails", SqlDbType.VarChar, 100);
                _StatusDetailsParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusDetailsParm);

                conn.Open();
                Adapter.Fill(dt);
                conn.Close();

                _Status = (bool)_StatusParm.Value;
                _StatusDetails = (string)_StatusDetailsParm.Value;

                return dt;
            }
            catch (Exception ex)
            {
                _Status = false;
                _StatusDetails = ex.Message;

                //Return Value
                return dt;
            }
            finally
            {
                conn.Dispose();
                cmd.Dispose();
            }
        }


        #endregion

        #region tblReferral_Create Code 

        ///<summary>
        ///What this method do...?
        ///</summary>
        ///<param name="ReferralType" >This Parm Used For ??? </param>
        ///<param name="ReferralDetails" >This Parm Used For ??? </param>
        ///<param name="Decision" >This Parm Used For ??? </param>
        ///<param name="SendingDate" >This Parm Used For ??? </param>
        ///<param name="Deadline" >This Parm Used For ??? </param>
        ///<param name="DecisionDate" >This Parm Used For ??? </param>
        ///<param name="Purpose" >This Parm Used For ??? </param>
        ///<param name="ProjectID" >This Parm Used For ??? </param>
        ///<param name="ProjectCode" >This Parm Used For ??? </param>
        ///<param name="ReferralByID" >This Parm Used For ??? </param>
        ///<param name="EditByID" >This Parm Used For ??? </param>
        ///<param name="_Status" >This Parm Used For ??? </param>
        ///<param name="_StatusDetails" >This Parm Used For ??? </param>
        ///<returns>void</returns>
        public static void tblReferral_Create(string ReferralType, string ReferralDetails, string Decision, DateTime SendingDate, DateTime Deadline, DateTime DecisionDate, string Purpose, int ProjectID, int ProjectCode, int ReferralByID, int EditByID, DateTime EditDate, out bool _Status, out string _StatusDetails)
        {
            _Status = false;
            _StatusDetails = null;

            SqlConnection conn = null;
            SqlCommand cmd = null;
            try
            {
                string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
                conn = new SqlConnection(ConnectionString);
                cmd = new SqlCommand("tblReferral_Create", conn);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ReferralType", ReferralType);
                cmd.Parameters.AddWithValue("@ReferralDetails", ReferralDetails);
                cmd.Parameters.AddWithValue("@Decision", Decision);
                cmd.Parameters.AddWithValue("@SendingDate", SendingDate);
                cmd.Parameters.AddWithValue("@Deadline", Deadline);
                cmd.Parameters.AddWithValue("@DecisionDate", DecisionDate);
                cmd.Parameters.AddWithValue("@Purpose", Purpose);
                cmd.Parameters.AddWithValue("@ProjectID", ProjectID);
                cmd.Parameters.AddWithValue("@ProjectCode", ProjectCode);
                cmd.Parameters.AddWithValue("@ReferralByID", ReferralByID);
                cmd.Parameters.AddWithValue("@EditByID", EditByID);
                cmd.Parameters.AddWithValue("@EditDate", EditDate);

                SqlParameter _StatusParm = new SqlParameter("@_Status", SqlDbType.Bit);
                _StatusParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusParm);

                SqlParameter _StatusDetailsParm = new SqlParameter("@_StatusDetails", SqlDbType.VarChar, 100);
                _StatusDetailsParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusDetailsParm);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                _Status = (bool)_StatusParm.Value;
                _StatusDetails = (string)_StatusDetailsParm.Value;
            }
            catch (Exception ex)
            {
                _Status = false;
                _StatusDetails = ex.Message;
                return;
            }
            finally
            {
                conn.Dispose();
                cmd.Dispose();
            }
        }


        #endregion

        #region tblReferral_UpdateByID Code 

        ///<summary>
        ///What this method do...?
        ///</summary>
        ///<param name="ReferralID" >This Parm Used For ??? </param>
        ///<param name="ReferralType" >This Parm Used For ??? </param>
        ///<param name="ReferralDetails" >This Parm Used For ??? </param>
        ///<param name="Decision" >This Parm Used For ??? </param>
        ///<param name="SendingDate" >This Parm Used For ??? </param>
        ///<param name="Deadline" >This Parm Used For ??? </param>
        ///<param name="DecisionDate" >This Parm Used For ??? </param>
        ///<param name="Purpose" >This Parm Used For ??? </param>
        ///<param name="ProjectID" >This Parm Used For ??? </param>
        ///<param name="ProjectCode" >This Parm Used For ??? </param>
        ///<param name="ReferralByID" >This Parm Used For ??? </param>
        ///<param name="EditByID" >This Parm Used For ??? </param>
        ///<param name="_Status" >This Parm Used For ??? </param>
        ///<param name="_StatusDetails" >This Parm Used For ??? </param>
        ///<returns>void</returns>
        public static void tblReferral_UpdateByID(int ReferralID, string ReferralType, string ReferralDetails, string Decision, DateTime SendingDate, DateTime Deadline, DateTime DecisionDate, string Purpose, int ProjectID, int ProjectCode, int ReferralByID, int EditByID, out bool _Status, out string _StatusDetails)
        {
            _Status = false;
            _StatusDetails = null;

            SqlConnection conn = null;
            SqlCommand cmd = null;
            try
            {
                string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
                conn = new SqlConnection(ConnectionString);
                cmd = new SqlCommand("tblReferral_UpdateByID", conn);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ReferralID", ReferralID);
                cmd.Parameters.AddWithValue("@ReferralType", ReferralType);
                cmd.Parameters.AddWithValue("@ReferralDetails", ReferralDetails);
                cmd.Parameters.AddWithValue("@Decision", Decision);
                cmd.Parameters.AddWithValue("@SendingDate", SendingDate);
                cmd.Parameters.AddWithValue("@Deadline", Deadline);
                cmd.Parameters.AddWithValue("@DecisionDate", DecisionDate);
                cmd.Parameters.AddWithValue("@Purpose", Purpose);
                cmd.Parameters.AddWithValue("@ProjectID", ProjectID);
                cmd.Parameters.AddWithValue("@ProjectCode", ProjectCode);
                cmd.Parameters.AddWithValue("@ReferralByID", ReferralByID);
                cmd.Parameters.AddWithValue("@EditByID", EditByID);

                SqlParameter _StatusParm = new SqlParameter("@_Status", SqlDbType.Bit);
                _StatusParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusParm);

                SqlParameter _StatusDetailsParm = new SqlParameter("@_StatusDetails", SqlDbType.VarChar, 100);
                _StatusDetailsParm.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(_StatusDetailsParm);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                _Status = (bool)_StatusParm.Value;
                _StatusDetails = (string)_StatusDetailsParm.Value;
            }
            catch (Exception ex)
            {
                _Status = false;
                _StatusDetails = ex.Message;
                return;
            }
            finally
            {
                conn.Dispose();
                cmd.Dispose();
            }
        }


        #endregion
    }
}
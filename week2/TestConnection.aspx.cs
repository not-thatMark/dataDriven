using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//new
using System.Data;//for datatabes
using System.Data.SqlClient;//sql stuff
using System.Configuration;//access web config files
namespace week2
{
    public partial class TestConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //get test connection string from out web config
            string connectionString = ConfigurationManager.ConnectionStrings["TestConnection"].ConnectionString;
            // open a connection
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            //setup sql command
            SqlCommand command = new SqlCommand("SELECT * FROM TestQuestion", connection);
            //execute command and send result into a reader
            SqlDataReader reader = command.ExecuteReader();
            //make empty data table to store data in
            DataTable dt = new DataTable();
            //setup columns
            dt.Columns.Add("ID", typeof(Int32));
            dt.Columns.Add("Text", typeof(String));
            dt.Columns.Add("QuestionType", typeof(Int32));
            dt.Columns.Add("nextQuestion", typeof(Int32));
            //loop through sql result and put into table
            while (reader.Read())//work with one row at a time
            {
                //generate empty rows for table
                DataRow row = dt.NewRow();
                //copy values across
                row["ID"] = reader["questionID"];
                row["text"] = reader["text"];
                row["questionType"] = reader["questionType"];
                row["nextQuestion"] = reader["nextQuestion"];
                //add this row to data table
                dt.Rows.Add(row);
            }
            //show result in out gridview
            QuestionGridView.DataSource = dt;
            QuestionGridView.DataBind();
            //close DB connection
            connection.Close();
        }
    }
}
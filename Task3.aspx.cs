using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net_task3
{
    public partial class Task3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql_con_task3"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new Dataset();

        protected void btninsert(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "storeprocedure_insert_btn";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookID", txtid.Text);
            cmd.Parameters.AddWithValue("@Title", txttitle.Text);
            cmd.Parameters.AddWithValue("@Publication_Year ", txtpyear.Text);
            cmd.Parameters.AddWithValue("@AuthorName ", txtauthorname.Text);

            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data is inserted Successfully...!')</script>");
            ClearForm();

        }

        protected void btnview_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            con.Open();
            da = new SqlDataAdapter("btn_grid_view", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "storeprocedure_insert_btn");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        

        protected void Delete(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SP_DLELTE_BTN";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Author_id", txtid.Text);
          

            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data is Deleted Successfully...!')</script>");
            ClearForm();

        }
        void ClearForm()
        {
            txtid.Text = "";
            txttitle.Text = "";
            txtpyear.Text = "";
            txtauthorname.Text = "";
        }

        protected void Update(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "sp_UPDATE_btn";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookID", txtid.Text);
            cmd.Parameters.AddWithValue("@Title", txttitle.Text);
            cmd.Parameters.AddWithValue("@Publication_Year ", txtpyear.Text);
            cmd.Parameters.AddWithValue("@AuthorName ", txtauthorname.Text);

            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Data is Update Successfully...!')</script>");
            ClearForm();

        }

        protected void Page_Load(object sender, EventArgs e)
        {
        
        }
    }
}
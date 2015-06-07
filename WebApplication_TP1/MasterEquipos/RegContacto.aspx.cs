using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication_TP1.MasterEquipos
{
    public partial class RegContacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            //[AR] Para que haga las validaciones

            // Page.Validate();

            //string connectionString = "Data Source=pcnora;initial catalog=PW3_20152C_TP2_Torneos;integrated security=True;";

            //InsertData(connectionString,
            //           txtNombre.Text.Trim(),
            //           txtMail.Text.Trim(),
            //           txtAreaComentario.Text.Trim()
            //           );


            try
            {

                //create  object  of Connection Class..................
                SqlConnection con = new SqlConnection();

                // Set Connection String property of Connection object..................
                con.ConnectionString = "Data Source=pcnora;Initial Catalog=PW3_20152C_TP2_Torneos;Integrated Security=True";

                // Open Connection..................
                con.Open();

                //Create object of Command Class................
                SqlCommand cmd = new SqlCommand();

                //set Connection Property  of  Command object.............
                cmd.Connection = con;
                //Set Command type of command object
                //1.StoredProcedure
                //2.TableDirect
                //3.Text   (By Default)

                cmd.CommandType = CommandType.Text;

                //Set Command text Property of command object.........

                cmd.CommandText = "Insert into contacto values (5, @nombre,@email,@comentario)";

                // Se tiene que modificar para pasarle +1 en el ID

                //Assign values as `parameter`. It avoids `SQL Injection`
                cmd.Parameters.AddWithValue("@nombre", txtNombre.Text);
                cmd.Parameters.AddWithValue("@email", txtMail.Text);
                cmd.Parameters.AddWithValue("@comentario", txtAreaComentario.Text);



              

                // Execute command by calling following method................
                //1.ExecuteNonQuery()
                //     This is used for insert,delete,update command...........
                //2.ExecuteScalar()
                //     This returns a single value .........(used only for select command)
                //3.ExecuteReader()
                //   Return one or more than one record.

                cmd.ExecuteNonQuery();
                con.Close();


                grabo.Text = "Data Saved";
                Response.Redirect("~/MasterEquipos/contacto-resultado.aspx");
            }


            catch (Exception ex)
            {
                grabo.Text =  ex.Message;
                throw;
            }


        }
    }
}

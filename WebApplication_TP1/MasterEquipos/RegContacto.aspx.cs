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

            //Page.Validate();

           try
            {
                int value = 0;

                //create  object  of Connection Class..................
                SqlConnection con = new SqlConnection();

                // Set Connection String property of Connection object..................
               
               con.ConnectionString = "Data Source=pcnora;Initial Catalog=PW3_20152C_TP2_Torneos;Integrated Security=True";
                
              // con.ConnectionString = "Data Source=MW78BCNSUGPW3E;Initial Catalog=PW3_20152C_TP2_Torneos;Integrated Security=True";
               
               // Se tiene que ver la forma de no tener el servidor local de la pc harcodeado en el string 
               // Open Connection..................
                con.Open();
               
                //Create object of Command Class................
                // Se crean 2, uno para el insert y otro para obtener el ID 
                SqlCommand cmd2 = new SqlCommand(); 

                SqlCommand cmd = new SqlCommand();

                //set Connection Property  of  Command object.............
               // Se crean 2, uno para el insert y otro para obtener el ID 
               cmd.Connection = con; 
                cmd2.Connection = con;

                //Set Command type of command object
                //1.StoredProcedure
                //2.TableDirect
                //3.Text   (By Default)
               
                cmd2.CommandType = CommandType.Text;
               
                //Set Command text Property of command object.........

               // recupero el mayor ID de contacto para el nuevo insert
                cmd2.CommandText = "select max(id) from contacto";

                // Execute command by calling following method................
                //1.ExecuteNonQuery()
                //     This is used for insert,delete,update command...........
                //2.ExecuteScalar()
                //     This returns a single value .........(used only for select command)
                //3.ExecuteReader()
                //   Return one or more than one record.

               object valor = (object)cmd2.ExecuteScalar();

                if (valor == null || valor == DBNull.Value)
                {
                    value = 0; // Si el max ID es null tomo 0

                }
                else
                {
                   int i = int.Parse(valor.ToString()); // convierto a int lo que devuelve el executescalar
                    value = i + 1; //Incremento 1 
                }
             
                cmd.CommandText = "Insert into contacto values (@value, @nombre,@email,@comentario)";

                //Assign values as `parameter`. It avoids `SQL Injection`
                cmd.Parameters.AddWithValue("@value", value);
                cmd.Parameters.AddWithValue("@nombre", txtNombre.Text);
                cmd.Parameters.AddWithValue("@email", txtMail.Text);
                cmd.Parameters.AddWithValue("@comentario", txtAreaComentario.Text);

               cmd.ExecuteNonQuery(); // Ejecuta el insert
              
               con.Close();

              
               Response.Redirect("~/MasterEquipos/contacto-resultado.aspx");
            }


            catch (Exception ex)
            {
               grabo.Text =  ex.Message;
                //con.Close();
                //throw;
            }


        }
    }
}

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
                //con.ConnectionString = "Data Source=pcnora;Initial Catalog=PW3_20152C_TP2_Torneos;Integrated Security=True";
                con.ConnectionString = "Data Source=MW78BCNSUGPW3E;Initial Catalog=PW3_20152C_TP2_Torneos;Integrated Security=True";
                // Open Connection..................
                con.Open();
               
                //Create object of Command Class................
                SqlCommand cmd2 = new SqlCommand(); // PRUEBA PARA RECUPERAR EL ID

                SqlCommand cmd = new SqlCommand();
                //set Connection Property  of  Command object.............
                cmd.Connection = con;
                cmd2.Connection = con;// PRUEBA PARA RECUPERAR EL ID

                //Set Command type of command object
                //1.StoredProcedure
                //2.TableDirect
                //3.Text   (By Default)
               
                cmd2.CommandType = CommandType.Text;
               
                //Set Command text Property of command object.........

               
                cmd2.CommandText = "select max(id) +1 from contacto";

                // Se tiene que modificar para pasarle +1 en el ID
               
                


                // Execute command by calling following method................
                //1.ExecuteNonQuery()
                //     This is used for insert,delete,update command...........
                //2.ExecuteScalar()
                //     This returns a single value .........(used only for select command)
                //3.ExecuteReader()
                //   Return one or more than one record.


                //Int32 value = (Int32)cmd2.ExecuteScalar();
                value = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
                //int Result = int.Parse(Command.ExecuteScalar().ToString());


                cmd.CommandText = "Insert into contacto values (@value, @nombre,@email,@comentario)";

                //Assign values as `parameter`. It avoids `SQL Injection`
                cmd.Parameters.AddWithValue("@value", value);
                cmd.Parameters.AddWithValue("@nombre", txtNombre.Text);
                cmd.Parameters.AddWithValue("@email", txtMail.Text);
                cmd.Parameters.AddWithValue("@comentario", txtAreaComentario.Text);

               cmd.ExecuteNonQuery();
              

               


                con.Close();


               

               /*  ====================================
                * 
                * 
                * 
                * lINEAS DE PRUEBA PARA RECUPERAR SOLO EL VALOR DEL ID*/
               
               // SqlCommand command = new SqlCommand("select max(id) +1 from contacto");
                               
                //command.Connection = con;
                        
               // Int32 value = (Int32)cmd.ExecuteScalar();
               //string myString = value.ToString();
               // grabo.Text = myString;
               Response.Redirect("~/MasterEquipos/contacto-resultado.aspx");
            }


            catch (Exception ex)
            {
               grabo.Text =  ex.Message;

                //throw;
            }


        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Agrego estos dos correspondientes a ADO
using System.Data;
using System.Data.SqlClient;

namespace WebApplication_TP1.MasterAdministracion
{
    public partial class RegEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                PW3_20152C_TP2_TorneosEntities dbContext = new PW3_20152C_TP2_TorneosEntities();
                ddlTorneos.DataValueField = "ID";
                ddlTorneos.DataTextField = "Nombre";
                ddlTorneos.DataSource = dbContext.Torneo.ToList();
             
                ddlTorneos.DataBind();
                this.ddlTorneos.Items.Insert(0, new ListItem("Seleccione un Torneo...", "0"));  //Agrego opcion 0 porque no es obligatorio
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            // Para que haga las validaciones

            Page.Validate();


            try
            {
                int value = 0;

                //create  object  of Connection Class..................
                SqlConnection con = new SqlConnection();

                // Set Connection String property of Connection object..................

                //ATECION SE TIENE QUE MODIFICAR EL DATASOURCE POR EL NOMBRE DE LA PC/SERVIDOR TAL COMO SE LOGUEA SQLSERVER
                //COMENTAR LAS DEMAS CONECCION STRING

                con.ConnectionString = "Data Source=pcnora;Initial Catalog=PW3_20152C_TP2_Torneos;Integrated Security=True";

                // con.ConnectionString = "Data Source=MW78BCNSUGPW3E;Initial Catalog=PW3_20152C_TP2_Torneos;Integrated Security=True";

         
                // Open Connection..................
                con.Open();

                //Create object of Command Class................
                // Se crean 2, uno para el insert y otro para obtener el ID 
                SqlCommand cmd2 = new SqlCommand();

                SqlCommand cmd = new SqlCommand();

                //set Connection Property  of  Command object.............
             
                cmd.Connection = con;
                cmd2.Connection = con;

                //Set Command type of command object
                //1.StoredProcedure
                //2.TableDirect
                //3.Text   (By Default)

                cmd2.CommandType = CommandType.Text;

                //Set Command text Property of command object.........

                // recupero el mayor ID de contacto para el nuevo insert
                cmd2.CommandText = "select max(id) from equipo";

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
                    value = i + 1; //Incremento 1 el ID
                }

               
                //Assign values as `parameter`. It avoids `SQL Injection`
                cmd.Parameters.AddWithValue("@value", value);
                cmd.Parameters.AddWithValue("@nombre", txtNombre.Text);
                cmd.Parameters.AddWithValue("@monto", txtMonto.Text);


                //SI no eligió torneo, no le pasamos nada para que lo inserte

                if (ddlTorneos.SelectedItem != null)
            {
                string text = ddlTorneos.SelectedItem.Text;
                string id_torneo = ddlTorneos.SelectedItem.Value;

                if (id_torneo == "0")
                {
                    cmd.CommandText = "INSERT INTO Equipo (Id, Nombre, MontoAbonado) values (@value, @nombre,@monto)";
                }
                else
                {
                    cmd.Parameters.AddWithValue("@torneo", ddlTorneos.SelectedValue); 
                    cmd.CommandText = "Insert into equipo values (@value, @nombre,@monto,@torneo )";
                }
            }

         
                cmd.ExecuteNonQuery(); // Ejecuta el insert

                con.Close();


                lblEquCreado.Text = "Equipo registrado exitosamente";
            }


            catch (Exception ex)
            {
                lblEquCreado.Text = ex.Message;
                //con.Close();
                //throw;
            }
        }
    }
}
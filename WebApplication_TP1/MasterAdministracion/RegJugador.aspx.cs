using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
	public partial class RegJugador : System.Web.UI.Page
	{
		DataBase.PW3_20152C_TP2_TorneosEntities dc = new DataBase.PW3_20152C_TP2_TorneosEntities();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				ddlEquipos.DataValueField = "ID";
				ddlEquipos.DataTextField = "Nombre";
				ddlEquipos.DataSource = dc.Equipo.ToList();
				/* Implícitamente ejecuta esta serie de pasos:
					{
						1. Abrir conexión
						2. Genera un comando (SELECT)
						3. Ejecuta comando
						4. Mapeo del resultado a clase "Equipo"
						5. Cierro la conexión
					}*/
				ddlEquipos.DataBind();
			}
		}

		protected void btnCrear_Click(object sender, EventArgs e)
		{

			Page.Validate();

			try
			{
				DataBase.Jugador j = new DataBase.Jugador();

				j.Nombre = txtNombre.Text;
				j.Apellido = txtApellido.Text;
				j.Edad = Convert.ToInt32(txtEdad.Text);
				j.IdEquipo = Convert.ToInt32(ddlEquipos.SelectedValue);

				dc.AddToJugador(j);
				dc.SaveChanges();

				lblJugCreado.Text = "Jugador registrado exitosamente";
			}

			catch (Exception ex)
			{
				lblJugCreado.Text = ex.Message;
				//throw;
			}
		}
	}
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
	public partial class ModJugador : System.Web.UI.Page
	{
		DataBase.PW3_20152C_TP2_TorneosEntities dc = new DataBase.PW3_20152C_TP2_TorneosEntities();
		
		protected void Page_Load(object sender, EventArgs e)
		{
			modificar2.Visible = false;

			if (!IsPostBack)
			{
				ddlJugadores.DataValueField = "ID";
				ddlJugadores.DataTextField = "Apellido";
				ddlJugadores.DataSource = dc.Jugador.ToList();
				ddlJugadores.DataBind();
			}
		}

		protected void btnSig_Click(object sender, EventArgs e)
		{
			int seljugador = Convert.ToInt32(ddlJugadores.SelectedItem.Value);
			var seljugador2 = ddlJugadores.SelectedItem.Text;

			modificar1.Visible = false;
			modificar2.Visible = true;

			var elijugador = (from t in dc.Jugador
							  where t.Id == seljugador
							  select t).First();

			txtNombre.Text = elijugador.Nombre;
			txtApellido.Text = elijugador.Apellido;
			txtEdad.Text = elijugador.Edad.ToString();

			ddlEquipos.DataValueField = "ID";
			ddlEquipos.DataTextField = "Nombre";
			ddlEquipos.DataSource = dc.Equipo.ToList();
			ddlEquipos.DataBind();

			foreach (ListItem li in ddlEquipos.Items)
			{
				if (li.Value == elijugador.IdEquipo.ToString())
				{
					ddlEquipos.SelectedValue = li.Value;
				}
			}
		}

		protected void btnModificar_Click(object sender, EventArgs e)
		{
			int seljugador = Convert.ToInt32(ddlJugadores.SelectedItem.Value);

			var query = from to in dc.Jugador
						where to.Id == seljugador
						select to;

			foreach (var to in query)
			{
				to.Nombre = txtNombre.Text;
				to.Apellido = txtApellido.Text;
				to.Edad = Convert.ToInt32(txtEdad.Text);
				to.IdEquipo = Convert.ToInt32(ddlEquipos.SelectedValue);
			}

			dc.SaveChanges();

			modificar1.Visible = false;
			modificar2.Visible = true;

			lblJugModificado.Text = "Jugador modificado exitosamente";
		}
	}
}
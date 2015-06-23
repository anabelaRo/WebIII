using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
	public partial class EliJugador : System.Web.UI.Page
	{
		DataBase.PW3_20152C_TP2_TorneosEntities dc = new DataBase.PW3_20152C_TP2_TorneosEntities();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				ddlJugadores.DataValueField = "ID";
				ddlJugadores.DataTextField = "Apellido";
				ddlJugadores.DataSource = dc.Jugador.ToList();
				ddlJugadores.DataBind();
			}
		}

		protected void btnBajaJugador_Click(object sender, EventArgs e)
		{
			Page.Validate();

            if (Page.IsValid)
            {
                if (ddlJugadores.SelectedItem.Value != "0")
                {
                    int seljugador = Convert.ToInt32(ddlJugadores.SelectedItem.Value);
                    var seljugador2 = ddlJugadores.SelectedItem.Text;

                    var elijugador = (from t in dc.Jugador
                                      where t.Id == seljugador
                                      select t).First();

                    //Elimino el jugador seleccionado
                    dc.Jugador.DeleteObject(elijugador);
                    dc.SaveChanges();

                    //Cargo de nuevo el ddl, no se lista el último eliminado
                    ddlJugadores.DataValueField = "ID";
                    ddlJugadores.DataTextField = "Apellido";
                    ddlJugadores.DataSource = dc.Jugador.ToList();
                    ddlJugadores.DataBind();

                    lblJugEliminado.Text = "Se ha eliminado exitosamente el jugador: " + seljugador2;
                }
            }
		}
	}
}
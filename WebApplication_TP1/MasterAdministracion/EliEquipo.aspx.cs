using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
	public partial class EliEquipo : System.Web.UI.Page
	{
		DataBase.PW3_20152C_TP2_TorneosEntities dc = new DataBase.PW3_20152C_TP2_TorneosEntities();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				ddlEquipos.DataValueField = "ID";
				ddlEquipos.DataTextField = "Nombre";
				ddlEquipos.DataSource = dc.Equipo.ToList();
				ddlEquipos.DataBind();
			}
		}

		protected void btnBajaEquipo_Click(object sender, EventArgs e)
		{
			Page.Validate();

            if (Page.IsValid)
            {
                if (ddlEquipos.SelectedItem.Value != "0")
                {
                    int selequipo = Convert.ToInt32(ddlEquipos.SelectedItem.Value);
                    var selequipo2 = ddlEquipos.SelectedItem.Text;

                    var eliequipo = (from t in dc.Equipo
                                     where t.Id == selequipo
                                     select t).First();

                    //Levanto todos los jugadores asociados al equipo, y los elimino
                    var query = from ju in dc.Jugador
                                where ju.IdEquipo == selequipo
                                select ju;

                    foreach (var ju in query)
                    {
                        dc.Jugador.DeleteObject(ju);
                    }

                    dc.Equipo.DeleteObject(eliequipo);
                    dc.SaveChanges();

                    //Cargo de nuevo el ddl, no se lista el último eliminado
                    ddlEquipos.DataValueField = "ID";
                    ddlEquipos.DataTextField = "Nombre";
                    ddlEquipos.DataSource = dc.Equipo.ToList();
                    ddlEquipos.DataBind();

                    lblEquEliminado.Text = "Se ha eliminado exitosamente el equipo: " + selequipo2;
                }
            }
		}
	}
}
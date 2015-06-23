using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
	public partial class ModTorneo : System.Web.UI.Page
	{
		DataBase.PW3_20152C_TP2_TorneosEntities dc = new DataBase.PW3_20152C_TP2_TorneosEntities();

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				ddlTorneos.DataValueField = "ID";
				ddlTorneos.DataTextField = "Nombre";
				ddlTorneos.DataSource = dc.Torneo.ToList();

				ddlTorneos.DataBind();
			}
		}

		protected void btnBajaTorneo_Click(object sender, EventArgs e)
		{
			Page.Validate();

            if (Page.IsValid)
            {
                if (ddlTorneos.SelectedItem.Value != "0")
                {
                    int seltorneo = Convert.ToInt32(ddlTorneos.SelectedItem.Value);
                    var seltorneo2 = ddlTorneos.SelectedItem.Text;

                    var elitorneo = (from t in dc.Torneo
                                     where t.Id == seltorneo
                                     select t).First();

                    //Levanto todos los equipos asociados al torneo, y les seteo torneo = NULL
                    var query = from eq in dc.Equipo
                                where eq.IdTorneo == seltorneo
                                select eq;
                    foreach (var eq in query) eq.IdTorneo = null;
                    dc.SaveChanges();

                    //Elimino el torneo seleccionado
                    dc.Torneo.DeleteObject(elitorneo);
                    dc.SaveChanges();

                    //Cargo de nuevo el ddl, no se lista el último eliminado
                    ddlTorneos.DataValueField = "ID";
                    ddlTorneos.DataTextField = "Nombre";
                    ddlTorneos.DataSource = dc.Torneo.ToList();

                    ddlTorneos.DataBind();

                    lblTorEliminado.Text = "Se ha eliminado exitosamente el torneo: " + seltorneo2;
                }
            }
		}
	}
}

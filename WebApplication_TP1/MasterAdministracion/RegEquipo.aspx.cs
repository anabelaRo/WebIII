using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
	public partial class RegEquipo : System.Web.UI.Page
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
				this.ddlTorneos.Items.Insert(0, new ListItem("Seleccione un Torneo...", "0"));  //Agrego opcion 0 porque no es obligatorio
			}
		}

		protected void btnCrear_Click(object sender, EventArgs e)
		{
			// Para que haga las validaciones
			Page.Validate();

            if (Page.IsValid)
            {
                try
                {
                    DataBase.Equipo eq = new DataBase.Equipo();
                    eq.Nombre = txtNombre.Text;
                    eq.MontoAbonado = Convert.ToInt32(txtMonto.Text);

                    //Si no eligió torneo, no le pasamos nada para que lo inserte
                    if (ddlTorneos.SelectedItem != null)
                    {
                        string text = ddlTorneos.SelectedItem.Text;
                        string id_torneo = ddlTorneos.SelectedItem.Value;

                        if (id_torneo != "0")
                        {
                            eq.IdTorneo = Convert.ToInt32(ddlTorneos.SelectedValue);
                        }
                    }

                    dc.AddToEquipo(eq);
                    dc.SaveChanges();

                    lblEquCreado.Text = "Equipo registrado exitosamente";
                }
                catch (Exception ex)
                {
                    lblEquCreado.Text = ex.Message;
                    //throw;
                }
            }
		}
	}
}
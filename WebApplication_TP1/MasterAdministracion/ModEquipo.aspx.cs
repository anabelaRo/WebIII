using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
	public partial class ModEquipo : System.Web.UI.Page
	{
		DataBase.PW3_20152C_TP2_TorneosEntities dc = new DataBase.PW3_20152C_TP2_TorneosEntities();

		protected void Page_Load(object sender, EventArgs e)
		{
			modificar2.Visible = false;

			if (!IsPostBack)
			{
				ddlEquipos.DataValueField = "ID";
				ddlEquipos.DataTextField = "Nombre";
				ddlEquipos.DataSource = dc.Equipo.ToList();
				ddlEquipos.DataBind();
			}
		}

		protected void btnSig_Click(object sender, EventArgs e)
		{
			int selequipo = Convert.ToInt32(ddlEquipos.SelectedItem.Value);
			var selequipo2 = ddlEquipos.SelectedItem.Text;

			modificar1.Visible = false;
			modificar2.Visible = true;

			var eliequipo = (from eq in dc.Equipo
							  where eq.Id == selequipo
							  select eq).First();

			txtNombre.Text = eliequipo.Nombre;
			txtMonto.Text = eliequipo.MontoAbonado.ToString();

			ddlTorneos.DataValueField = "ID";
			ddlTorneos.DataTextField = "Nombre";
			ddlTorneos.DataSource = dc.Torneo.ToList();
			ddlTorneos.DataBind();

			foreach (ListItem li in ddlTorneos.Items)
			{
				if (li.Value == eliequipo.IdTorneo.ToString())
				{
					ddlTorneos.SelectedValue = li.Value;
				}
			}
		}

		protected void btnModificar_Click(object sender, EventArgs e)
		{
			Page.Validate();

            if (Page.IsValid)
            {
                try
                {
                    int selequipo = Convert.ToInt32(ddlEquipos.SelectedItem.Value);

                    var query = from eq in dc.Equipo
                                where eq.Id == selequipo
                                select eq;

                    foreach (var eq in query)
                    {
                        eq.Nombre = txtNombre.Text;
                        eq.MontoAbonado = Convert.ToInt32(txtMonto.Text);
                        eq.IdTorneo = Convert.ToInt32(ddlTorneos.SelectedValue);
                    }

                    dc.SaveChanges();

                    modificar1.Visible = false;
                    modificar2.Visible = true;

                    lblEquModificado.Text = "Equipo modificado exitosamente";
                }
                catch (Exception ex)
                {
                    lblEquModificado.Text = ex.Message;
                    //throw;
                }
            }
		}
	}
}
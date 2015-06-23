using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
	public partial class RegTorneo : System.Web.UI.Page
	{
		DataBase.PW3_20152C_TP2_TorneosEntities dc = new DataBase.PW3_20152C_TP2_TorneosEntities();

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnCrear_Click(object sender, EventArgs e)
		{
			//Para que haga las validaciones
			Page.Validate();

            if (Page.IsValid)
            {
                try
                {
                    DataBase.Torneo t = new DataBase.Torneo();
                    t.Nombre = txtNombre.Text;
                    //t.Activo = radBtnLstEstado.SelectedValue;

                    if (radBtnLstEstado.SelectedValue == "True")
                    {
                        t.Activo = true;
                    }
                    else if (radBtnLstEstado.SelectedValue == "False")
                    {
                        t.Activo = false;
                    }
                    else
                    {
                        throw new Exception("Error desconocido");
                    }

                    dc.AddToTorneo(t);
                    dc.SaveChanges();

                    lblTorCreado.Text = "Torneo registrado exitosamente";
                }
                catch (Exception ex)
                {
                    lblTorCreado.Text = ex.Message;
                    //throw;
                }
            }

		}
	}
}
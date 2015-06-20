using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data;
//using System.Data.SqlClient;

namespace WebApplication_TP1.MasterEquipos
{
	public partial class RegContacto : System.Web.UI.Page
	{
		DataBase.PW3_20152C_TP2_TorneosEntities dc = new DataBase.PW3_20152C_TP2_TorneosEntities();

		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnRegistrar_Click(object sender, EventArgs e)
		{
			//[AR] Para que haga las validaciones
			//Page.Validate();

			try
			{
				DataBase.Contacto c = new DataBase.Contacto();
				c.NombreCompleto = txtNombre.Text;
				c.Email = txtMail.Text;
				c.Comentario = txtAreaComentario.Text;
				dc.AddToContacto(c);
				dc.SaveChanges();

				Response.Redirect("~/MasterEquipos/contacto-resultado.aspx");
			}

			catch (Exception ex)
			{
				grabo.Text = ex.Message;
				//throw;
			}
		}
	}
}

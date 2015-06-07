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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PW3_20152C_TP2_TorneosEntities dbContext = new PW3_20152C_TP2_TorneosEntities();
                ddlEquipos.DataValueField = "ID";
                ddlEquipos.DataTextField = "Nombre";
                ddlEquipos.DataSource = dbContext.Equipo.ToList();
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
        }
    }
}
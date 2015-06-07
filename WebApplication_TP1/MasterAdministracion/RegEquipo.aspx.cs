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
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                PW3_20152C_TP2_TorneosEntities dbContext = new PW3_20152C_TP2_TorneosEntities();
                ddlTorneos.DataValueField = "ID";
                ddlTorneos.DataTextField = "Nombre";
                ddlTorneos.DataSource = dbContext.Torneo.ToList();
             
                ddlTorneos.DataBind();
                this.ddlTorneos.Items.Insert(0, new ListItem("Seleccione un Torneo...", "0"));  //Agrego opcion 0 porqueno es obligatorio
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            //[AR] Para que haga las validaciones

            Page.Validate();
        }
    }
}
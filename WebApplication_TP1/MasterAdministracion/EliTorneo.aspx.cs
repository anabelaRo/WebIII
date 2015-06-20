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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBase.PW3_20152C_TP2_TorneosEntities dbContext = new DataBase.PW3_20152C_TP2_TorneosEntities();
                ddlTorneos.DataValueField = "ID";
                ddlTorneos.DataTextField = "Nombre";
                ddlTorneos.DataSource = dbContext.Torneo.ToList();

                ddlTorneos.DataBind();
             
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
         if (ddlTorneos.SelectedItem.Value != "0") {
            
             
             DataBase.PW3_20152C_TP2_TorneosEntities bbdd = new DataBase.PW3_20152C_TP2_TorneosEntities();

             int seltorneo =   Convert.ToInt32(ddlTorneos.SelectedItem.Value);
             var seltorneo2 = ddlTorneos.SelectedItem.Text;

             var elitorneo = (from t in bbdd.Torneo
                              where t.Id == seltorneo
                              select t).First();

             //Levanto todos los equipos asociados al torneo, y les seteo torneo = NULL
             var query = from eq in bbdd.Equipo
                         where eq.IdTorneo == seltorneo
                         select eq;
             foreach (var eq in query) eq.IdTorneo = null;
             bbdd.SaveChanges();


             //Elimino el torneo seleccionado


             bbdd.Torneo.DeleteObject(elitorneo);
             bbdd.SaveChanges();


             //Cargo de nuevo el ddl, no se lista el último eliminado
             DataBase.PW3_20152C_TP2_TorneosEntities dbContext = new DataBase.PW3_20152C_TP2_TorneosEntities();
             ddlTorneos.DataValueField = "ID";
             ddlTorneos.DataTextField = "Nombre";
             ddlTorneos.DataSource = dbContext.Torneo.ToList();

             ddlTorneos.DataBind();

             lblTorEliminado.Text = "Se ha eliminado exitosamente el torneo: " + seltorneo2;
            }
         
        }
        }
    }

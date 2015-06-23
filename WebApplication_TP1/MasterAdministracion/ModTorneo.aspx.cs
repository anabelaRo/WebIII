using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_TP1.MasterAdministracion
{
    public partial class ModTorneo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            modificar2.Visible = false;

            if (!IsPostBack)
            {
                DataBase.PW3_20152C_TP2_TorneosEntities dbContext = new DataBase.PW3_20152C_TP2_TorneosEntities();
                ddlTorneos.DataValueField = "ID";
                ddlTorneos.DataTextField = "Nombre";
                ddlTorneos.DataSource = dbContext.Torneo.ToList();

                ddlTorneos.DataBind();
            }
        }

        protected void btnSig_Click(object sender, EventArgs e)
        {
            DataBase.PW3_20152C_TP2_TorneosEntities bbdd = new DataBase.PW3_20152C_TP2_TorneosEntities();

            int seltorneo = Convert.ToInt32(ddlTorneos.SelectedItem.Value);
            var seltorneo2 = ddlTorneos.SelectedItem.Text;

            modificar1.Visible = false;
            modificar2.Visible = true;

            var elitorneo = (from t in bbdd.Torneo
                             where t.Id == seltorneo
                             select t).First();

            txtNombre.Text = seltorneo2;

            if (elitorneo.Activo == true)
            {
                radBtnLstEstado.SelectedValue = "True";
            }
            else
            {
                radBtnLstEstado.SelectedValue = "False";
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
			Page.Validate();

            if (Page.IsValid)
            {
                try
                {
                    int seltorneo = Convert.ToInt32(ddlTorneos.SelectedItem.Value);

                    var a = Convert.ToBoolean(radBtnLstEstado.SelectedValue);

                    DataBase.PW3_20152C_TP2_TorneosEntities bbdd = new DataBase.PW3_20152C_TP2_TorneosEntities();

                    var query = from to in bbdd.Torneo
                                where to.Id == seltorneo
                                select to;

                    foreach (var to in query) to.Nombre = txtNombre.Text;
                    foreach (var to in query) to.Activo = a;
                    bbdd.SaveChanges();

                    modificar1.Visible = false;
                    modificar2.Visible = true;

                    lblTorModificado.Text = "Torneo modificado exitosamente";
                }
                catch (Exception ex)
                {
                    lblTorModificado.Text = ex.Message;
                    //throw;
                }
            }
        }
    }
}

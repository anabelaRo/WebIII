﻿using System;
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
           
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            //[AR] Para que haga las validaciones

            Page.Validate();
        }
    }
}
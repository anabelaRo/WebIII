using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using WebApplication_TP1.DataBase;
using WebApplication_TP1.WebServices.Datos;

namespace WebApplication_TP1.WebServices
{
    /// <summary>
    /// Descripción breve de servicio
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class servicio : System.Web.Services.WebService
    {
        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public List<EquiposDTO> ObtenerEquipos(bool incluirDeTorneosInactivos)
        {
            DataBase.PW3_20152C_TP2_TorneosEntities contexto = new DataBase.PW3_20152C_TP2_TorneosEntities();
            
            List<EquiposDTO> equiposDTO = new List<EquiposDTO>();

            List<Equipo> list_equipos = EquipoServices.devolverEquipos(incluirDeTorneosInactivos);

            foreach (Equipo loc in list_equipos)
            {
                var torneo = contexto.Torneo.Where(t => t.Id == loc.IdTorneo).First();

                EquiposDTO dto = new EquiposDTO(loc, torneo.Nombre, torneo.Activo);

                equiposDTO.Add(dto);
            }

            return equiposDTO;
        }
    }
}

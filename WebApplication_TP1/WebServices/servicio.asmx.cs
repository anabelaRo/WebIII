using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using WebApplication_TP1.DataBase;
using WebApplication_TP1.WebServices.Entidades;
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
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public List<Equipo> ObtenerEquipos(bool incluirDeTorneosInactivos)
        //public List<EquiposDTO> ObtenerEquipos(bool incluirDeTorneosInactivos)
        {
            /*DataBase.PW3_20152C_TP2_TorneosEntities bbdd = new DataBase.PW3_20152C_TP2_TorneosEntities();

            List<Equipo> equiposDTO = new List<Equipo>();

            Equipo equipo = bbdd.Equipo.First();

            //equipo = bbdd.Equipo.First(); //trabajamos con los datos de la BBDD
                              //.where (c => c.Nombre = "PW3").First();
            
            var equipos = ( from e in bbdd.Equipo
					        join t in bbdd.Torneo 
                               on e.IdTorneo equals t.Id
					        select e).ToList();

            if (equipos != null)
            {
                foreach (Equipo iEquip in equipos)
                {
                    equiposDTO.Add(iEquip);
                }
            }

            return equiposDTO;*/

            //List<EquiposDTO> equiposDTO = new List<EquiposDTO>();

            //Ver esto:
            /*List<EntEquipo> list_equipos = EquipoServices.ObtenerEquipos(incluirDeTorneosInactivos);

            foreach (EntEquipo loc in list_equipos)
            {
                EquiposDTO dto = new EquiposDTO(loc);
                equiposDTO.Add(dto);
            }*/

            List<Equipo> list_equipos = EquipoServices.ObtenerEquipos(incluirDeTorneosInactivos);

            //return equiposDTO;
            return list_equipos;
        }
    }
}

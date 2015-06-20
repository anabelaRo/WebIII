using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication_TP1.DataBase;
using WebApplication_TP1.WebServices.Datos;

namespace WebApplication_TP1.WebServices
{
    public class EquipoServices
    {
        public static List<Equipo> devolverEquipos(bool incluirDeTorneosInactivos)
        {
            DataBase.PW3_20152C_TP2_TorneosEntities contexto = new DataBase.PW3_20152C_TP2_TorneosEntities();

            List<Equipo> equiposDTO = new List<Equipo>();

            if (incluirDeTorneosInactivos)
            {
                equiposDTO = (from e in contexto.Equipo
                              join t in contexto.Torneo
                                 on e.IdTorneo equals t.Id
                              where t.Activo == incluirDeTorneosInactivos
                              orderby t.Nombre
                              select e).ToList();
            }
            else
            {
                equiposDTO = (from e in contexto.Equipo
                              join t in contexto.Torneo
                                 on e.IdTorneo equals t.Id
                              orderby t.Nombre
                              select e).ToList();
            }

                return equiposDTO;
        }
    }
}
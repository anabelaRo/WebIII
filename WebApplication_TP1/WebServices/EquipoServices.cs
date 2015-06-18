using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication_TP1.WebServices.Entidades;
using WebApplication_TP1.DataBase;
using WebApplication_TP1.WebServices.Datos;

namespace WebApplication_TP1.WebServices
{
    public class EquipoServices
    {
        public static List<Equipo> ObtenerEquipos(bool incluirDeTorneosInactivos)
        {
            DataBase.PW3_20152C_TP2_TorneosEntities bbdd = new DataBase.PW3_20152C_TP2_TorneosEntities();

            List<Equipo> equiposDTO = new List<Equipo>();

            equiposDTO = ( from e in bbdd.Equipo
                           join t in bbdd.Torneo
                              on e.IdTorneo equals t.Id
                           select e).ToList();

            //List<EntEquipo> listEquipos = new List<EntEquipo>();

            /*if (equiposDTO != null)
            {
                foreach (Equipo iEquip in equiposDTO)
                {
                    listEquipos.Add(iEquip); //La idea era devolver un lista de tipo "string" y no de tipo "Equipo"
                }
            }*/

            return equiposDTO;
        }
    }
}
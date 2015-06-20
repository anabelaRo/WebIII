using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication_TP1.DataBase;

namespace WebApplication_TP1.WebServices.Datos
{
    public class EquiposDTO
    {
        //Entidades:
        public string NombreEquipo { get; set; }
        public string NombreTorneo { get; set; }
        public bool Activo { get; set; }

        //Constructor por defecto:
        public EquiposDTO()
        {

        }

        //Constructor parametrizado:
        public EquiposDTO(Equipo equipoEnt, string torneoEnt, bool activo)
        {
            if (equipoEnt != null)
            {
                this.NombreEquipo = equipoEnt.Nombre;
                this.NombreTorneo = torneoEnt;
                this.Activo = activo;
            }
        }
    }
}
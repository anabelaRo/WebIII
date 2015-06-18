using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication_TP1.WebServices.Entidades;

namespace WebApplication_TP1.WebServices.Datos
{
    public class EquiposDTO
    {
        //Entidades:
        public string Id { get; set; }
        public string Nombre { get; set; }
        public string MontoAbonado { get; set; }
        public string IdTorneo { get; set; }

        //Constructor por defecto:
        public EquiposDTO()
        {

        }

        //Constructor parametrizado:
        public EquiposDTO(EntEquipo equipoEnt)
        {
            if (equipoEnt != null)
            {
                this.Id = equipoEnt.Id.ToString();
                this.Nombre = equipoEnt.Nombre.ToString();
                this.MontoAbonado = equipoEnt.MontoAbonado.ToString();
                this.IdTorneo = equipoEnt.IdTorneo.ToString();
            }
        }
    }
}
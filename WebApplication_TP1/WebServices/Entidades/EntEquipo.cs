using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication_TP1.DataBase;

namespace WebApplication_TP1.WebServices.Entidades
{
    public class EntEquipo
    {
        public string Id { get; set; }
        public string Nombre { get; set; }
        public string MontoAbonado { get; set; }
        public string IdTorneo { get; set; }
    }
}
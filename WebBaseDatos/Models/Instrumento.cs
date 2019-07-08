using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Instrumento
    {
        public int Id { get; set; }
        public string Estado { get; set; }
        public string Descripción { get; set; }
        public string SalaNombre { get; set; }

        public Sala SalaNombreNavigation { get; set; }
        public Calefaccion Calefaccion { get; set; }
        public Computador Computador { get; set; }
        public Data Data { get; set; }
        public Pizarra Pizarra { get; set; }
    }
}

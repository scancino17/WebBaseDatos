using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Pizarra
    {
        public int Id { get; set; }
        public string Tipo { get; set; }
        public double? Largo { get; set; }
        public double? Ancho { get; set; }

        public Instrumento IdNavigation { get; set; }
    }
}

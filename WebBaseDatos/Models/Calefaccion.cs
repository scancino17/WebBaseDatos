using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Calefaccion
    {
        public int Id { get; set; }
        public string Tipo { get; set; }

        public Instrumento IdNavigation { get; set; }
    }
}

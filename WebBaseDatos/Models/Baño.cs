using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Baño
    {
        public string EdificioNombre { get; set; }
        public int NroPiso { get; set; }
        public int Número { get; set; }
        public string Estado { get; set; }

        public Edificio EdificioNombreNavigation { get; set; }
    }
}

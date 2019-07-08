using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Secretaria
    {
        public string Rut { get; set; }

        public Persona RutNavigation { get; set; }
    }
}

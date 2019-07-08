using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Profesor
    {
        public string Rut { get; set; }
        public int? NumRamos { get; set; }

        public Persona RutNavigation { get; set; }
    }
}

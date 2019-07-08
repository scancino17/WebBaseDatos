using System;
using System.Collections.Generic;

namespace WebBaseDatos
{
    public partial class Arriendo
    {
        public int Id { get; set; }
        public int Semestre { get; set; }
        public int Año { get; set; }
        public string PersonaRut { get; set; }

        public Persona PersonaRutNavigation { get; set; }
    }
}

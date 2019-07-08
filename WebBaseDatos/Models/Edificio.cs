using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebBaseDatos
{
    public partial class Edificio
    {
        public Edificio()
        {
            Baño = new HashSet<Baño>();
            Sala = new HashSet<Sala>();
        }

        public string Nombre { get; set; }
        public string Color { get; set; }
        [Display (Name= "Especificación Técnica")]
        public string EspecificaciónTécnica { get; set; }

        public ICollection<Baño> Baño { get; set; }
        public ICollection<Sala> Sala { get; set; }
    }
}

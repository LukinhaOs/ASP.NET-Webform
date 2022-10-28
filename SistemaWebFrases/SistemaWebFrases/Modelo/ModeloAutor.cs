using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaWebFrases.Modelo
{
    public class ModeloAutor
    {
        public int Id { get; set; }
        public String Nome { get; set; }
        public String Foto { get; set; }

        public ModeloAutor()
        {
            Id = 0;
            Nome = "";
            Foto = "";
        }
    }
}
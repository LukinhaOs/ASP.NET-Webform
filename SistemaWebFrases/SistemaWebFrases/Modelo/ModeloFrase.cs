using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaWebFrases.Modelo
{
    public class ModeloFrase
    {
        public int id { get; set; }
        public String Frase { get; set; }
        public int Autor { get; set; }
        public int Categoria { get; set; }
    }
}
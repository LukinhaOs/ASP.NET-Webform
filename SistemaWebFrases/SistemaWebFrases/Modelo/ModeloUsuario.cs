﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaWebFrases.Modelo
{
    public class ModeloUsuario
    {
        public int id { get; set; }
        public String Nome { get; set; }
        public String Email { get; set; }
        public String Senha { get; set; }
    }
}
﻿using Senai_WishList_Grupo3.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai_WishList_Grupo3.Interfaces
{
    interface IUsuarioRepository
    {
        List<Usuario> ListarTodos();
    }
}

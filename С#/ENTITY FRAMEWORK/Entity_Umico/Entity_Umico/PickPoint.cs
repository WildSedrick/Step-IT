﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity_Umico
{
    public class PickPoint
    {
        public int Id { get; set; }
        public string? Address { get; set; }

        public List<Order> Orders { get; set; } = new List<Order>();
    }
}

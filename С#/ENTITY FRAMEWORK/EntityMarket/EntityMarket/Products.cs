﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityMarket
{
    public class Products
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public int CustomerId { get; set; }
        public Customer? Customer { get; set; }
    }
}

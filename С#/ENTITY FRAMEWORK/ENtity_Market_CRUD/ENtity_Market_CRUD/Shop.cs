﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENtity_Market_CRUD
{
    public class Shop
    {
        [Column ("ShopId")]
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? Address { get; set; }
        public List<Product> Products { get; set; } = new List<Product>();
    }
}

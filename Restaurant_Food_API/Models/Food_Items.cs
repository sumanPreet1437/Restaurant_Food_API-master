using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Restaurant_Food_API.Models
{
    public class Food_Items
    {
        public int Id { get; set; }
        public string Food_Item_Name { get; set; }
        public string Food_Type { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
    }
}

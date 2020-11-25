using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Restaurant_Food_API.Models;

namespace Restaurant_Food_API.Data
{
    public class Restaurant_Food_APIContext : DbContext
    {
        public Restaurant_Food_APIContext (DbContextOptions<Restaurant_Food_APIContext> options)
            : base(options)
        {
        }

        public DbSet<Restaurant_Food_API.Models.Food_Items> Food_Items { get; set; }
    }
}

using GamePause.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GamePause.DataAccess
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }

        public DbSet<Category> Categories { get; set; } // erstellt den Table "Categories"
        public DbSet<CoverType> CoverTypes { get; set; } // erstellt den Table "Cover Type"

        public DbSet<Product> Products { get; set; } // erstellt den Table "Product"
    }
}

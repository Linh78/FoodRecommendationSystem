using System;
using Microsoft.EntityFrameworkCore;
namespace RecommendFood.Models.Entity
{
    public class FoodDBContext: DbContext
    {
        public FoodDBContext()
        {
        }
        public FoodDBContext(DbContextOptions<FoodDBContext> options) : base(options) { }
        private const string connectionstring = @"
            Data Source=DESKTOP-E8CRG8D\SQLEXPRESS;
            Initial Catalog=FoodSystem;
            User ID=sa;
            Password=123;
            TrustServerCertificate=Yes;";
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer(connectionstring);
        }
        public DbSet<Foods> Foods { get; set; }
        public DbSet<Categories> Categories { get; set; }
        public DbSet<BabyAge> BabyAges { get; set;}
        public DbSet<Nutrients_Food> Nutrients_Food { get; set;}
        public DbSet<News> News { get; set; }

    }
}

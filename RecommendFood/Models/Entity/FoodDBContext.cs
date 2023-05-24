using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using RecommendFood.Models.Dto;
namespace RecommendFood.Models.Entity
{
    public class FoodDBContext: IdentityDbContext
    {
        public FoodDBContext()
        {
        }
        public FoodDBContext(DbContextOptions options) : base(options) { }
        //private const string connectionstring = @"
        //    Data Source=DESKTOP-E8CRG8D\SQLEXPRESS;
        //    Initial Catalog=FoodSystem;
        //    User ID=sa;
        //    Password=123;
        //    TrustServerCertificate=Yes;";
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            //optionsBuilder.UseSqlServer(connectionstring);
            if (!optionsBuilder.IsConfigured)
            {
                IConfigurationRoot configuration = new ConfigurationBuilder()
                   .SetBasePath(Directory.GetCurrentDirectory())
                   .AddJsonFile("appsettings.json")
                   .Build();
                var connectionString = configuration.GetConnectionString("DatabaseInfor");
                optionsBuilder.UseSqlServer(connectionString);
            }
        }

        
        public DbSet<Foods> Foods { get; set; }
        public DbSet<Categories> Categories { get; set; }
        public DbSet<BabyAge> BabyAges { get; set;}
        public DbSet<News> News { get; set; }
        public DbSet<Ingredient> Ingredients { get; set;}
        public DbSet<Food_Ingredients> Food_Ingredients { get; set; }
       // public DbSet<Comment> Comments { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            //đặt khóa chính cho bảng Food_Ingredients là cặp khóa ngoại Id_Food, Id_Ingredient
            modelBuilder.Entity<Food_Ingredients>()
                .HasKey(x => new { x.Id_Food, x.Id_Ingredient });

            modelBuilder.Entity<Food_Ingredients>()
                .HasOne<Foods>(x => x.Food)
                .WithMany(s => s.Food_Ingredients)
                .HasForeignKey(x => x.Id_Food);
            modelBuilder.Entity<Food_Ingredients>()
                .HasOne(x => x.Ingredient)
                .WithMany(s => s.Food_Ingredients)
                .HasForeignKey(x => x.Id_Ingredient);
            modelBuilder.Entity<Foods>()
                .HasOne(x => x.Categorie)
                .WithMany(f => f.Foods)
                .HasForeignKey(d => d.Id_Category)
                .HasConstraintName("FK_Foods_Category");
            modelBuilder.Entity<Foods>()
                .HasOne(x => x.BabyAge)
                .WithMany(f => f.Foods)
                .HasForeignKey(d => d.Id_BabyAge)
                .HasConstraintName("FK_Foods_BabyAge");
            //modelBuilder.Entity<Comment>()
            //    .HasOne(x => x.User)
            //    .WithMany(f => f.Comments)
            //    .HasForeignKey(d => d.Id_User)
            //    .HasConstraintName("FK_Comment_User");
            //modelBuilder.Entity<Comment>()
            //    .HasOne(x => x.Foods)
            //    .WithMany(f => f.Comments)
            //    .HasForeignKey(d => d.Id_Food)
            //    .HasConstraintName("FK_Comment_Foods");

        }

        public DbSet<RecommendFood.Models.Dto.FoodDetail> FoodDetail { get; set; } = default!;
    }
}

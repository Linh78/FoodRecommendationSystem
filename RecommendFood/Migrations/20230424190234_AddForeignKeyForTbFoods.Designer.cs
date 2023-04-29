﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using RecommendFood.Models.Entity;

#nullable disable

namespace RecommendFood.Migrations
{
    [DbContext(typeof(FoodDBContext))]
    [Migration("20230424190234_AddForeignKeyForTbFoods")]
    partial class AddForeignKeyForTbFoods
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.5")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("RecommendFood.Models.Entity.BabyAge", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("AgeGroup")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("AmountOfMainMeal")
                        .HasColumnType("int");

                    b.Property<int>("AmountOfSnackMeal")
                        .HasColumnType("int");

                    b.Property<int>("FromAge")
                        .HasColumnType("int");

                    b.Property<int>("ToAge")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.ToTable("BabyAge");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Categories", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Food_Ingredients", b =>
                {
                    b.Property<int>("Id_Food")
                        .HasColumnType("int");

                    b.Property<int>("Id_Ingredient")
                        .HasColumnType("int");

                    b.Property<float>("Quantity")
                        .HasColumnType("real");

                    b.Property<string>("Unit")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id_Food", "Id_Ingredient");

                    b.HasIndex("Id_Ingredient");

                    b.ToTable("Food_Ingredients");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Foods", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<int?>("BabyAgeId")
                        .HasColumnType("int");

                    b.Property<int>("Id_AgeGroup")
                        .HasColumnType("int");

                    b.Property<int>("Id_Category")
                        .HasColumnType("int");

                    b.Property<string>("MakingProcess")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("Quantity")
                        .HasColumnType("float");

                    b.Property<string>("Thumbnail")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Unit")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("BabyAgeId");

                    b.HasIndex("Id_Category");

                    b.ToTable("Foods");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Ingredient", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<float>("Fat")
                        .HasColumnType("real");

                    b.Property<float>("Glucin")
                        .HasColumnType("real");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("Protein")
                        .HasColumnType("real");

                    b.HasKey("Id");

                    b.ToTable("Ingredient");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.News", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<string>("Content")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreateAt")
                        .HasColumnType("datetime2");

                    b.Property<string>("Href_param")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ShortContent")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Thumbnail")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("UpdateAt")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.ToTable("News");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Nutrients_Food", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<float>("Fat")
                        .HasColumnType("real");

                    b.Property<float>("Glucin")
                        .HasColumnType("real");

                    b.Property<int>("Id_Food")
                        .HasColumnType("int");

                    b.Property<float>("Protein")
                        .HasColumnType("real");

                    b.HasKey("Id");

                    b.ToTable("Nutrients_Food");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Food_Ingredients", b =>
                {
                    b.HasOne("RecommendFood.Models.Entity.Foods", "Food")
                        .WithMany("Food_Ingredients")
                        .HasForeignKey("Id_Food")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("RecommendFood.Models.Entity.Ingredient", "Ingredient")
                        .WithMany("Food_Ingredients")
                        .HasForeignKey("Id_Ingredient")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Food");

                    b.Navigation("Ingredient");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Foods", b =>
                {
                    b.HasOne("RecommendFood.Models.Entity.BabyAge", null)
                        .WithMany("Foods")
                        .HasForeignKey("BabyAgeId");

                    b.HasOne("RecommendFood.Models.Entity.Categories", "Categorie")
                        .WithMany("Foods")
                        .HasForeignKey("Id_Category")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("FK_Foods_Category");

                    b.Navigation("Categorie");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.BabyAge", b =>
                {
                    b.Navigation("Foods");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Categories", b =>
                {
                    b.Navigation("Foods");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Foods", b =>
                {
                    b.Navigation("Food_Ingredients");
                });

            modelBuilder.Entity("RecommendFood.Models.Entity.Ingredient", b =>
                {
                    b.Navigation("Food_Ingredients");
                });
#pragma warning restore 612, 618
        }
    }
}
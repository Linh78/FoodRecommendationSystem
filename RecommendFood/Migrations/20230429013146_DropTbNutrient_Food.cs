using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecommendFood.Migrations
{
    /// <inheritdoc />
    public partial class DropTbNutrient_Food : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Nutrients_Food");

            migrationBuilder.DropColumn(
                name: "Fat",
                table: "Ingredient");

            migrationBuilder.DropColumn(
                name: "Glucin",
                table: "Ingredient");

            migrationBuilder.DropColumn(
                name: "Protein",
                table: "Ingredient");

            migrationBuilder.AddColumn<string>(
                name: "Img",
                table: "Ingredient",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<float>(
                name: "Fat",
                table: "Foods",
                type: "real",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<float>(
                name: "Glucin",
                table: "Foods",
                type: "real",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<float>(
                name: "Protein",
                table: "Foods",
                type: "real",
                nullable: false,
                defaultValue: 0f);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Img",
                table: "Ingredient");

            migrationBuilder.DropColumn(
                name: "Fat",
                table: "Foods");

            migrationBuilder.DropColumn(
                name: "Glucin",
                table: "Foods");

            migrationBuilder.DropColumn(
                name: "Protein",
                table: "Foods");

            migrationBuilder.AddColumn<float>(
                name: "Fat",
                table: "Ingredient",
                type: "real",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<float>(
                name: "Glucin",
                table: "Ingredient",
                type: "real",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<float>(
                name: "Protein",
                table: "Ingredient",
                type: "real",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.CreateTable(
                name: "Nutrients_Food",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fat = table.Column<float>(type: "real", nullable: false),
                    Glucin = table.Column<float>(type: "real", nullable: false),
                    Id_Food = table.Column<int>(type: "int", nullable: false),
                    Protein = table.Column<float>(type: "real", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Nutrients_Food", x => x.Id);
                });
        }
    }
}

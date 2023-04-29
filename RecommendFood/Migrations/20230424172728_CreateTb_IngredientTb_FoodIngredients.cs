using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecommendFood.Migrations
{
    /// <inheritdoc />
    public partial class CreateTb_IngredientTb_FoodIngredients : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Ingredient",
                table: "Foods",
                newName: "Thumbnail");

            migrationBuilder.CreateTable(
                name: "Ingredient",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Protein = table.Column<float>(type: "real", nullable: false),
                    Fat = table.Column<float>(type: "real", nullable: false),
                    Glucin = table.Column<float>(type: "real", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Ingredient", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Food_Ingredients",
                columns: table => new
                {
                    Id_Food = table.Column<int>(type: "int", nullable: false),
                    Id_Ingredient = table.Column<int>(type: "int", nullable: false),
                    Quantity = table.Column<float>(type: "real", nullable: false),
                    Unit = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Food_Ingredients", x => new { x.Id_Food, x.Id_Ingredient });
                    table.ForeignKey(
                        name: "FK_Food_Ingredients_Foods_Id_Food",
                        column: x => x.Id_Food,
                        principalTable: "Foods",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Food_Ingredients_Ingredient_Id_Ingredient",
                        column: x => x.Id_Ingredient,
                        principalTable: "Ingredient",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Food_Ingredients_Id_Ingredient",
                table: "Food_Ingredients",
                column: "Id_Ingredient");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Food_Ingredients");

            migrationBuilder.DropTable(
                name: "Ingredient");

            migrationBuilder.RenameColumn(
                name: "Thumbnail",
                table: "Foods",
                newName: "Ingredient");
        }
    }
}

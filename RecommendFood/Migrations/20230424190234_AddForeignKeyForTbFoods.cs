using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecommendFood.Migrations
{
    /// <inheritdoc />
    public partial class AddForeignKeyForTbFoods : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Foods_Categories_CategoriesId",
                table: "Foods");

            migrationBuilder.DropIndex(
                name: "IX_Foods_CategoriesId",
                table: "Foods");

            migrationBuilder.DropColumn(
                name: "CategoriesId",
                table: "Foods");

            migrationBuilder.CreateIndex(
                name: "IX_Foods_Id_Category",
                table: "Foods",
                column: "Id_Category");

            migrationBuilder.AddForeignKey(
                name: "FK_Foods_Category",
                table: "Foods",
                column: "Id_Category",
                principalTable: "Categories",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Foods_Category",
                table: "Foods");

            migrationBuilder.DropIndex(
                name: "IX_Foods_Id_Category",
                table: "Foods");

            migrationBuilder.AddColumn<int>(
                name: "CategoriesId",
                table: "Foods",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Foods_CategoriesId",
                table: "Foods",
                column: "CategoriesId");

            migrationBuilder.AddForeignKey(
                name: "FK_Foods_Categories_CategoriesId",
                table: "Foods",
                column: "CategoriesId",
                principalTable: "Categories",
                principalColumn: "Id");
        }
    }
}

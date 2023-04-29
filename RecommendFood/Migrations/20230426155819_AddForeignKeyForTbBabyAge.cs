using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecommendFood.Migrations
{
    /// <inheritdoc />
    public partial class AddForeignKeyForTbBabyAge : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Foods_BabyAge_BabyAgeId",
                table: "Foods");

            migrationBuilder.DropIndex(
                name: "IX_Foods_BabyAgeId",
                table: "Foods");

            migrationBuilder.DropColumn(
                name: "BabyAgeId",
                table: "Foods");

            migrationBuilder.RenameColumn(
                name: "Id_AgeGroup",
                table: "Foods",
                newName: "Id_BabyAge");

            migrationBuilder.CreateIndex(
                name: "IX_Foods_Id_BabyAge",
                table: "Foods",
                column: "Id_BabyAge");

            migrationBuilder.AddForeignKey(
                name: "FK_Foods_BabyAge",
                table: "Foods",
                column: "Id_BabyAge",
                principalTable: "BabyAge",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Foods_BabyAge",
                table: "Foods");

            migrationBuilder.DropIndex(
                name: "IX_Foods_Id_BabyAge",
                table: "Foods");

            migrationBuilder.RenameColumn(
                name: "Id_BabyAge",
                table: "Foods",
                newName: "Id_AgeGroup");

            migrationBuilder.AddColumn<int>(
                name: "BabyAgeId",
                table: "Foods",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Foods_BabyAgeId",
                table: "Foods",
                column: "BabyAgeId");

            migrationBuilder.AddForeignKey(
                name: "FK_Foods_BabyAge_BabyAgeId",
                table: "Foods",
                column: "BabyAgeId",
                principalTable: "BabyAge",
                principalColumn: "Id");
        }
    }
}

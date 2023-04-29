using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecommendFood.Migrations
{
    /// <inheritdoc />
    public partial class ChangeTypeValueOfMakingProcessInTbFoods1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "MakingProcess",
                table: "Foods",
                type: "Nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Text");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "MakingProcess",
                table: "Foods",
                type: "Text",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Nvarchar(max)");
        }
    }
}

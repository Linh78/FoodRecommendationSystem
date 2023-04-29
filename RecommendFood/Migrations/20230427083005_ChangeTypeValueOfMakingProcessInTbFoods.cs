using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecommendFood.Migrations
{
    /// <inheritdoc />
    public partial class ChangeTypeValueOfMakingProcessInTbFoods : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "MakingProcess",
                table: "Foods",
                type: "Text",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "MakingProcess",
                table: "Foods",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Text");
        }
    }
}

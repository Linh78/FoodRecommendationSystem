using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecommendFood.Migrations
{
    /// <inheritdoc />
    public partial class changeTbBabyAge : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<float>(
                name: "WeightF",
                table: "BabyAge",
                type: "real",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<float>(
                name: "WeightG",
                table: "BabyAge",
                type: "real",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<float>(
                name: "WeightP",
                table: "BabyAge",
                type: "real",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.CreateTable(
                name: "FoodDetail",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Recipe = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    MakingProcess = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Quantity = table.Column<double>(type: "float", nullable: false),
                    Unit = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Category = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    BabyAge = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Thumbnail = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Protein = table.Column<float>(type: "real", nullable: false),
                    Fat = table.Column<float>(type: "real", nullable: false),
                    Glucin = table.Column<float>(type: "real", nullable: false),
                    Energy = table.Column<float>(type: "real", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FoodDetail", x => x.Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "FoodDetail");

            migrationBuilder.DropColumn(
                name: "WeightF",
                table: "BabyAge");

            migrationBuilder.DropColumn(
                name: "WeightG",
                table: "BabyAge");

            migrationBuilder.DropColumn(
                name: "WeightP",
                table: "BabyAge");
        }
    }
}

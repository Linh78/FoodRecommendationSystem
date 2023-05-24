using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace RecommendFood.Migrations
{
    /// <inheritdoc />
    public partial class UpdateTbComment : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Comment_news",
                table: "Comments");

            migrationBuilder.RenameColumn(
                name: "Id_New",
                table: "Comments",
                newName: "Id_Food");

            migrationBuilder.RenameIndex(
                name: "IX_Comments_Id_New",
                table: "Comments",
                newName: "IX_Comments_Id_Food");

            migrationBuilder.AddForeignKey(
                name: "FK_Comment_Foods",
                table: "Comments",
                column: "Id_Food",
                principalTable: "Foods",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Comment_Foods",
                table: "Comments");

            migrationBuilder.RenameColumn(
                name: "Id_Food",
                table: "Comments",
                newName: "Id_New");

            migrationBuilder.RenameIndex(
                name: "IX_Comments_Id_Food",
                table: "Comments",
                newName: "IX_Comments_Id_New");

            migrationBuilder.AddForeignKey(
                name: "FK_Comment_news",
                table: "Comments",
                column: "Id_New",
                principalTable: "News",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}

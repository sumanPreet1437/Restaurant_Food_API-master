using Microsoft.EntityFrameworkCore.Migrations;
using System.IO;

namespace Restaurant_Food_API.Migrations
{
    public partial class food : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Food_Items",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Food_Item_Name = table.Column<string>(nullable: true),
                    Food_Type = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    Price = table.Column<decimal>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Food_Items", x => x.Id);
                });
            var sqlFile = Path.Combine(".\\DatabaseScripts", @"DataQueries.sql");
            migrationBuilder.Sql(File.ReadAllText(sqlFile));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Food_Items");
        }
    }
}

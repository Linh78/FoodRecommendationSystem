using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.ComponentModel.DataAnnotations.Schema;

namespace RecommendFood.Models.Dto
{
    public class FoodDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string MakingProcess { get; set; }
        public double Quantity { get; set; }
        public string Unit { get; set; }
        public string Category { get; set; }
        public string BabyAge { get; set; }
        public string Thumbnail { get; set; }
    }
}

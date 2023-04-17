using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RecommendFood.Models.Entity
{
    [Table("Foods")]
    public class Foods
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Ingredient { get; set; }
        public string MakingProcess { get; set; }
        public double Quantity { get; set; }
        public string Unit { get; set; }
        public int Id_Category { get; set; }
        public int Id_AgeGroup { get; set; }
        public Foods() { }
    }
}

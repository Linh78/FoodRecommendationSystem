using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RecommendFood.Models.Entity
{
    [Table("Ingredient")]
    public class Ingredient
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Img { get; set; }
        public ICollection<Food_Ingredients> Food_Ingredients { get; set; }
    }
}

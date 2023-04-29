using System.ComponentModel.DataAnnotations.Schema;

namespace RecommendFood.Models.Entity
{
    [Table("Food_Ingredients")]
    public class Food_Ingredients
    {
        public int Id_Food { get; set; }
        public int Id_Ingredient { get; set; }
        public float Quantity { get; set; }
        public string Unit { get; set; }
        [ForeignKey("Id_Food")]
        public virtual Foods Food { get; set; }
        [ForeignKey("Id_Ingredient")]
        public virtual Ingredient Ingredient { get; set; }
    }
}

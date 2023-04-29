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
        //public string Ingredient { get; set; }
        [Column("MakingProcess", TypeName ="Nvarchar(max)")]
        public string MakingProcess { get; set; }
        public double Quantity { get; set; }
        public string Unit { get; set; }
        public int Id_Category { get; set; }
        public int Id_BabyAge { get; set; }
        public string Thumbnail { get; set; }
        public float Protein { get; set; }
        public float Fat { get; set; }
        public float Glucin { get; set; }
        public ICollection<Food_Ingredients> Food_Ingredients { get; set; }
        public virtual Categories Categorie { get; set; }
        public virtual BabyAge BabyAge { get; set; }
        public Foods() { }
    }
}

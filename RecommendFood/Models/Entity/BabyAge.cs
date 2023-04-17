using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RecommendFood.Models.Entity
{
    [Table("BabyAge")]
    public class BabyAge
    {
        [Key]
        public int Id { get; set; }
        public string AgeGroup { get; set; }
        public int FromAge { get; set; }
        public int ToAge { get; set; }
        public int AmountOfMainMeal { get; set; }
        public int AmountOfSnackMeal { get; set; }
        public virtual ICollection<Foods> Foods { get; set; }

    }
}

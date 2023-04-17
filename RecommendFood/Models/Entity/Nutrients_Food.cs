using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace RecommendFood.Models.Entity
{
    [Table("Nutrients_Food")]
    public class Nutrients_Food
    {
        [Key]
        public int Id { get; set; }
        public int Id_Food { get; set; }
        public float Protein { get; set; }
        public float Fat { get; set; }
        public float Glucin { get; set; }
    }
}

using FileHelpers;

namespace RecommendFood.Models.Dto
{
    [DelimitedRecord(",")]
    [IgnoreEmptyLines()]
    [IgnoreFirst()]
    public class FoodsTrain
    {
        public int Id { get; set; }
        public float Protein { get; set; }
        public float Fat { get; set; }
        public float Glucin { get; set; }
    }
}

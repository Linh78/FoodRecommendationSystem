using Microsoft.AspNetCore.Mvc;
using RecommendFood.Models.Dto;
using RecommendFood.Models.Entity;

namespace RecommendFood.Controllers
{
    public class FoodController : Controller
    {
        FoodDBContext db = new FoodDBContext();
        public IActionResult Index()
        {
            List<FoodDto> listFood = new List<FoodDto>();
            listFood = (from foods in db.Foods
                        select new FoodDto
                        {
                            Id= foods.Id,
                            Name= foods.Name,
                            MakingProcess= foods.MakingProcess,
                            Thumbnail= foods.Thumbnail,
                            Quantity= foods.Quantity,
                            Unit = foods.Unit,
                            Category = (from f in db.Foods
                                        join c in db.Categories
                                        on f.Id_Category equals c.Id
                                        select c.Name).ToString(),
                            BabyAge = (from f in db.Foods
                                       join b in db.BabyAges
                                       on f.Id_BabyAge equals b.Id
                                       select b.AgeGroup).ToString()
                        }).ToList();
            return View();
        }
    }
}

using Microsoft.AspNetCore.Mvc;
using RecommendFood.Models.Dto;
using RecommendFood.Models.Entity;
using RecommendFood.RecommendSystem;

namespace RecommendFood.Controllers
{
    public class RecommendController : Controller
    {
        FoodDBContext db = new FoodDBContext();
        public IActionResult Index()
        {
            return View();
        }
        public ActionResult Recommend()
        {
            Recommend recommend = new Recommend();
            
            List<FoodDto> listFood = new List<FoodDto>();
            listFood = (from foods in db.Foods
                        select new FoodDto
                        {
                            Id = foods.Id,
                            Name = foods.Name,
                            MakingProcess = foods.MakingProcess,
                            Thumbnail = foods.Thumbnail,
                            Quantity = foods.Quantity,
                            Unit = foods.Unit,
                            Category = foods.Categorie.Name,
                            BabyAge = foods.BabyAge.AgeGroup,
                            Energy = foods.Glucin * 4 + foods.Fat * 9 + foods.Protein

                        }).ToList();
            return View(listFood);
        }
        
    }
}

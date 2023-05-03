using Microsoft.AspNetCore.Mvc;
using NuGet.Packaging.Signing;
using RecommendFood.Models.Dto;
using RecommendFood.Models.Entity;

namespace RecommendFood.Controllers
{
    public class FoodController : Controller
    {
        FoodDBContext db = new FoodDBContext();
        public IActionResult Index()
        {
            return View();
        }

        public ActionResult Loc(int? Id)
        {
            if (Id == null)
            {
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
                                //Category = (from f in db.Foods
                                //            join c in db.Categories
                                //            on f.Id_Category equals c.Id
                                //            select c.Name).FirstOrDefault(),
                                //BabyAge = (from f in db.Foods
                                //           join b in db.BabyAges
                                //           on f.Id_BabyAge equals b.Id
                                //           select b.AgeGroup).FirstOrDefault(),
                                Energy = foods.Glucin * 4 + foods.Fat * 9 + foods.Protein

                            }).ToList();
                return View(listFood);
            }
            else
            {
                var filter = (from foods in db.Foods
                              where foods.Categorie.Id == Id
                              select new FoodDto
                              {
                                  Id = foods.Id,
                                  Name = foods.Name,
                                  MakingProcess = foods.MakingProcess,
                                  Thumbnail = foods.Thumbnail,
                                  Quantity = foods.Quantity,
                                  Unit = foods.Unit,
                                  Category = foods.Categorie.Name,
                                  //Category = foods.Categorie.Name (from f in db.Foods
                                  //            join c in db.Categories
                                  //            on f.Id_Category equals c.Id
                                  //            select c.Name).FirstOrDefault(),
                                  BabyAge = foods.BabyAge.AgeGroup,
                                  //BabyAge = (from f in db.Foods
                                  //           join b in db.BabyAges
                                  //           on f.Id_BabyAge equals b.Id
                                  //           select b.AgeGroup).FirstOrDefault(),
                                  Energy = foods.Glucin * 4 + foods.Fat * 9 + foods.Protein

                              }).ToList();
                return View(filter);
            }
        }
        public ActionResult Detail(int? id)
        {
            FoodDetail foodSelected = new FoodDetail();
            if (id != null)
            {
                foodSelected = (from Foods in db.Foods
                                where Foods.Id == id
                                select new FoodDetail
                                {
                                    Id = Foods.Id,
                                    Name = Foods.Name,
                                    Recipe = Foods.Recipe,
                                    MakingProcess = Foods.MakingProcess,
                                    Quantity = Foods.Quantity,
                                    Unit = Foods.Unit,
                                    Category = Foods.Categorie.Name,
                                    BabyAge = Foods.BabyAge.AgeGroup,
                                    Thumbnail = Foods.Thumbnail,
                                    Protein = Foods.Protein,
                                    Fat = Foods.Fat,
                                    Glucin = Foods.Glucin,
                                    Energy = Foods.Glucin * 4 + Foods.Fat * 9 + Foods.Protein
                                }).FirstOrDefault();
                var listRecipe = foodSelected.Recipe.Split(",");

            }
            return View(foodSelected);
        }
    }
}

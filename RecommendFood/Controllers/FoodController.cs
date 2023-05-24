using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NuGet.Packaging.Signing;
using RecommendFood.Models.Dto;
using RecommendFood.Models.Entity;

namespace RecommendFood.Controllers
{
    public class FoodController : Controller
    {
        FoodDBContext db = new FoodDBContext();
        //private readonly UserManager<User> _userManager;
        //public FoodController(UserManager<User> userManager)
        //{
        //    _userManager = userManager;
        //}
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
                                Energy = foods.Glucin * 4 + foods.Fat * 9 + foods.Protein*4

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
                                  BabyAge = foods.BabyAge.AgeGroup,
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
        //[HttpPost]
        //public IActionResult AddComment(int foodItemId, string content, int rating)
        //{
        //    var userId = _userManager.GetUserId(User); // Get the current user's ID
        //    var comment = new Comment
        //    {
        //        CommentMsg = content,
        //        Rate = rating,
        //        Id_Food = foodItemId,
        //        Id_User = userId,
        //        CreatAt = DateTime.Now
        //    };

        //    db.Comments.Add(comment);
        //    db.SaveChanges();

        //    return RedirectToAction("Detail", new { id = foodItemId });
        //}
    }
}

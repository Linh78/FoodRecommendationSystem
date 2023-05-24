using FileHelpers;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using RecommendFood.Models.Dto;
using RecommendFood.Models.Entity;
using RecommendFood.RecommendSystem;
using System.Linq;

namespace RecommendFood.Controllers
{
    public class RecommendController : Controller
    {
        FoodDBContext db = new FoodDBContext();
        public IActionResult Index()
        {
            BabyAge babyAge = new BabyAge();
            ViewBag.AgeGroup = new SelectList(db.BabyAges.ToList(), "Id", "AgeGroup"); 
            return View(babyAge);
        }
        [HttpPost]
        public ActionResult Recommend()
        {
            ViewBag.Name = Request.Form["Name"];
            int category = 4;
            //BabyAge ageGroup = new BabyAge();
            var rs = new RecommendSystem.RecommendSystem();
            Recommend recommend = new Recommend();
            int ageGroup = Convert.ToInt16(Request.Form["AgeGroup"]);
            BabyAge babyAge = db.BabyAges.Where(x => x.Id == ageGroup).FirstOrDefault();
            recommend.weights = string.Concat(babyAge.WeightP, ",", babyAge.WeightF, ",", babyAge.WeightG);
            recommend.inputFile = @"C:\Users\Linh\Desktop\RecommendFood\RecommendFood\RecommendSystem\Data\input.csv";
            
            //ghi file input.csv
            FileHelperEngine engine = new FileHelperEngine(typeof(FoodsTrain));
            List<FoodsTrain> foodss = (from food in db.Foods
                            where food.Id_BabyAge == ageGroup && food.Id_Category==category
                            select new FoodsTrain
                            {
                                Id= food.Id,
                                Protein = food.Protein,
                                Fat = food.Fat,
                                Glucin = food.Glucin
                            }).ToList();
            engine.HeaderText = "IdFood,Protein,Fat,Glucin";
            engine.WriteFile(recommend.inputFile, foodss);

            recommend.outputFile = @"C:\Users\Linh\Desktop\RecommendFood\RecommendFood\RecommendSystem\Data\output.csv";
            rs.TOPSIS_ExecProcess(recommend);
            //đọc file
            FileHelperEngine engineResult = new FileHelperEngine(typeof(FoodsResult));
            FoodsResult[] result = (FoodsResult[])engineResult.ReadFile(recommend.outputFile);
            result = result.OrderByDescending(x => x.Rank).ToArray();
            List<FoodDto> listFood = new List<FoodDto>();
            for(int i = result.Length-1; i >=0; i--)
            {
                listFood.Add((FoodDto)(from foods in db.Foods
                            where foods.Id == result[i].Id
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
                            }).FirstOrDefault());
            }
            //đã hiển thị được danh sách gợi ý
            //ngày mai: cho hiển thị theo Categories + thêm dữ liệu
            return View(listFood);
        }
        
    }
}

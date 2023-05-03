using Microsoft.AspNetCore.Mvc;
using RecommendFood.Models.Dto;
using RecommendFood.Models.Entity;


namespace RecommendFood.Controllers
{
    public class RecommendController : Controller
    {
        FoodDBContext db = new FoodDBContext();
        public IActionResult Index()
        {
            return View();
        }
        
    }
}

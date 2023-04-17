using Microsoft.AspNetCore.Mvc;

namespace RecommendFood.Controllers
{
    public class SearchFoodController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}

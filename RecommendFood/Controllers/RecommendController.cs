using Microsoft.AspNetCore.Mvc;

namespace RecommendFood.Controllers
{
    public class RecommendController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}

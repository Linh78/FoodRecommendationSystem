using Microsoft.AspNetCore.Mvc;
using RecommendFood.Models.Entity;

namespace RecommendFood.Controllers
{
    public class IntroduceController : Controller
    {
        FoodDBContext dBContext = new FoodDBContext();
        //GET: News
        public IActionResult Index()
        {
            List<News> news = new List<News>();
            news = dBContext.News.ToList();
            return View(news);
        }
    }
}

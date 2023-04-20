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
            List<News> newsRandom = new List<News>();
            newsRandom = dBContext.News.OrderBy(x => Guid.NewGuid()).Take(4).ToList();
            ViewBag.newsRandom = newsRandom;

            List<News> newsRandom1 = new List<News>();
            newsRandom1 = dBContext.News.OrderBy(x => Guid.NewGuid()).Take(4).ToList();
            ViewBag.newsRandom1 = newsRandom1;

            return View(news);
        }
        
        //GET: News/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var news = dBContext.News.FirstOrDefault(x => x.Id == id);
            var listnews = dBContext.News.ToList();
            ViewBag.listnews = listnews;
            return View(news);
        }

        //GET: News
        public IActionResult TipsTrick()
        {
            List<News> news = new List<News>();
            news = dBContext.News.ToList();
            return View(news);
        }
    }
}

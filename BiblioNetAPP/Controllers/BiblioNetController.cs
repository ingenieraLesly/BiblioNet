using BiblioNetAPP.Models;
using Microsoft.AspNetCore.Mvc;

namespace BiblioNetAPP.Controllers
{
    public class BiblioNetController : Controller
    {
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Create(BiblioNet biblioNet)
        {
            if (!ModelState.IsValid)
            {
                return View(biblioNet);
            }
            return View();
        }
    }
}

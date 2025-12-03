using System.Web.Mvc;

namespace _11_12lab.Controllers
{
    public class MapsController : Controller
    {
        // GET: Maps/ViewMaps - карты городов Беларуси
        public ActionResult ViewMaps()
        {
            return View();
        }

        // GET: Maps/ViewAddress - просмотр конкретного адреса
        public ActionResult ViewAddress(string address)
        {
            if (string.IsNullOrEmpty(address))
            {
                ViewBag.Error = "Адрес не указан";
            }
            else
            {
                ViewBag.Address = address;
            }
            return View();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;

namespace WebApplication2.Controllers
{
    public class indexController : Controller
    {
        exec ex = new exec();
        // GET: index
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult getproduct(string maloai)
        {
            return Json(ex.getsp(maloai), JsonRequestBehavior.AllowGet);
        }
        public JsonResult getlsp()
        {
            return Json(ex.getlsp(), JsonRequestBehavior.AllowGet);
        }
        public ActionResult ctsp()
        {
            return View();
        }
        public JsonResult getct(string masanpham)
        {
            return Json(ex.getct(masanpham), JsonRequestBehavior.AllowGet);
        }
        public ActionResult sachbyloai()
        {
            return View();
        }
    }
}
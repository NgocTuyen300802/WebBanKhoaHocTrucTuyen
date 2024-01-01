using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Server_WebBanKhoaHoc.Models;
namespace Server_WebBanKhoaHoc.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ThongKeController : ControllerBase
    {
        public readonly DB_QLKHOAHOCContext db;

        public ThongKeController(DB_QLKHOAHOCContext db)
        {
            this.db = db;
        }

        //[HttpGet]
        //[Route("thong-ke-doanh-thu")]
        //public IActionResult thongKeDoanhThu(string maGv, string ngayThang)
        //{
        //    // thong ke tong tien ban ra
        //    var dsKhGiangVien = db.KhoaHocs.Where(t => t.MaGv == maGv).ToList();

        //    float TongTienHoaDonNam = 0;

        //    var Hd = db.Hoadons.Where(t => t.NgayThanhToan)


        //}
    }
}

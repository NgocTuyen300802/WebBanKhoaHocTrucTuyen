
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
    public class GiangVienController : ControllerBase
    {

        public readonly DB_QLKHOAHOCContext db;
        public GiangVienController(DB_QLKHOAHOCContext db)
        {
            this.db = db;
        }

        [HttpPost]
        [Route("tao-giang-vien")]
        public IActionResult taoGiangVien(string MaGv, string MaNd, string Hinh, string anhCmndMacTruoc, string anhCmndMacSau, GiangVien giangVien)
        {

            GiangVien newGiangVien = new GiangVien();
            newGiangVien.MaGv = MaGv;
            newGiangVien.MaNd = MaNd;
            newGiangVien.TenGv = giangVien.TenGv;
            newGiangVien.GioiThieu = giangVien.GioiThieu;
            newGiangVien.Hinh = Hinh;
            newGiangVien.NgaySinh = giangVien.NgaySinh;
            newGiangVien.Phai = giangVien.Phai;
            newGiangVien.Sdt = giangVien.Sdt;
            newGiangVien.Email = giangVien.Email;
            newGiangVien.LinkInfor = "";
            newGiangVien.CmndMacSau = anhCmndMacSau;
            newGiangVien.CmndMacTruoc = anhCmndMacTruoc;
            db.GiangViens.Add(newGiangVien);
            int check = db.SaveChanges();
            if (check > 0)
            {
                return Ok(new { status = "Succes", message ="Đăng ký tài khoản thành công"});
            }
            return Ok(new { status = "Error", message = "Đăng ký tài khoản thành công" });
        }
    }
}

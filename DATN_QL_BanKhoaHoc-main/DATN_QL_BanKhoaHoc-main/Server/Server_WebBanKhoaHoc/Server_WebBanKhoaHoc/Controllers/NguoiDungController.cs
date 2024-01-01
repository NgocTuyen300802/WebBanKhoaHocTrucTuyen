using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Server_WebBanKhoaHoc.Models;
using Server_WebBanKhoaHoc.ClassSupport;
namespace Server_WebBanKhoaHoc.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NguoiDungController : ControllerBase
    {

        public readonly DB_QLKHOAHOCContext db;
        public NguoiDungController (DB_QLKHOAHOCContext db)
        {
            this.db = db;
        }


        [HttpGet]
        [Route("lay-thong-tin-nguoi-dung")]
        public IActionResult


















        // tao tai khoan hoc vien
        [HttpPost]
        [Route("tao-tai-khoan-hoc-vien-bang-email")]
        public IActionResult taoTaiKhoanHocVienEmail(NguoiDung nguoiDung)
        {
            
            // kiem tra xem co ten nguoi dung chua
            var check = db.NguoiDungs.Any(t => t.TenDn == nguoiDung.TenDn);
            if (check == false)
            {
                NguoiDung newND = new NguoiDung();
                newND.MaNd = TaoMaTuDong.radomMaTuDong("HV");
                while (MaDaTonTai(newND.MaNd))
                {
                    // Nếu mã đã tồn tại, tạo mới mã
                    newND.MaNd = TaoMaTuDong.radomMaTuDong("HV");
                }
                newND.TenDn = nguoiDung.TenDn;
                newND.MatKhau = nguoiDung.MatKhau;
                newND.MaVt = "VTQ936";
                db.NguoiDungs.Add(newND);
                var checkAdd = db.SaveChanges();
                if(checkAdd > 0)
                {
                    return Ok(new { message = "Succes" });
                }
            }
            return Ok(new { message = "Error" });
        }


        // tao tai khoan hoc vien
        [HttpPost]
        [Route("tao-tai-khoan-hoc-vien-bang-gg")]
        public IActionResult taoTaiKhoanHocVienGG(string email, string tenHV)
        {

            var check = db.NguoiDungs.Any(t => t.TenDn == email);
            if (check == false)
            {
                NguoiDung newND = new NguoiDung();
                newND.MaNd = TaoMaTuDong.radomMaTuDong("ND");
                while (MaDaTonTai(newND.MaNd))
                {
                    // Nếu mã đã tồn tại, tạo mới mã
                    newND.MaNd = TaoMaTuDong.radomMaTuDong("ND");
                }
                newND.TenDn = email;
                newND.MaVt = "VTQ936";
                db.NguoiDungs.Add(newND);
                var checkAdd = db.SaveChanges();
                if (checkAdd > 0)
                {
                    themHocVien(newND.MaNd, tenHV, email);
                    return Ok(new { message = "Succes", maND = newND.MaNd, tenHV = tenHV });
                }
            }
            return Ok(new { message = "Error" });
        }

        [HttpGet]
        [Route("dang-nhap-tai-khoan-hoc-vien-bang-gg")]
        public IActionResult dangNhapBangGG(string email)
        {
            var checkDangNhap = db.NguoiDungs.Where(t => t.TenDn == email).FirstOrDefault();
            if(checkDangNhap != null)
            {
                var thongTinHV = db.HocViens.Where(t => t.MaNd == checkDangNhap.MaNd).FirstOrDefault();
                return Ok(new { message = "Succes", maHV = thongTinHV.MaHv, tenHV = thongTinHV.TenHv });
            }
            return Ok(new { message = "Error" });

        }

        private bool MaDaTonTai(string maNd)
        {
            return db.NguoiDungs.Any(t => t.MaNd == maNd);
        }
        private bool MaHVDaTonTai(string mahv)
        {
            return db.HocViens.Any(t => t.MaHv == mahv);
        }

        private void themHocVien (string maND, string tenHV, string email)
        {
            HocVien newhocVien = new HocVien();
            newhocVien.MaHv = TaoMaTuDong.radomMaTuDong("HV");
            while (MaHVDaTonTai(newhocVien.MaHv))
            {
                // Nếu mã đã tồn tại, tạo mới mã
                newhocVien.MaHv = TaoMaTuDong.radomMaTuDong("HV");
            }
            newhocVien.MaNd = maND;
            newhocVien.TenHv = tenHV;
            newhocVien.Email = email;
            db.HocViens.Add(newhocVien);
            db.SaveChanges();
        }

        [HttpPost]
        [Route("tao-tai-khoan-nguoi-dung-giang-vien")]
        public IActionResult taoTaiKhoanGiangVien(string email)
        {
            
            string maGv = TaoMaTuDong.GenerateRandomCode("GV");

            NguoiDung newNd = new NguoiDung();
            newNd.MaNd = TaoMaTuDong.GenerateRandomCode("ND");
            newNd.MaVt = "VTR249";
            newNd.TenDn = email;
            newNd.MatKhau = maGv;
            db.NguoiDungs.Add(newNd);
            db.SaveChanges();
            return Ok(new { status = "Succes", maGv = maGv, maNd = newNd.MaNd });
     
        }

        [HttpGet]
        [Route("dang-nhap-giang-vien")]
        public IActionResult dangNhapGiangVien(string email, string matKhau)
        {

           var check =  db.NguoiDungs.Where(t => t.TenDn == email && t.MatKhau == matKhau).FirstOrDefault();
            if(check != null)
            {
                return Ok(new { status = "Succes", message ="Đăng nhập thành công", maGv = 
                    db.GiangViens.Where(t=> t.MaNd == check.MaNd).Select(t=> t.MaGv).FirstOrDefault()});
            }

            return Ok(new { status = "Error", message = "Tài khoản mật khẩu không đúng" });

        }



        // dang nhap admin

        [HttpGet]
        [Route("dang-nhap-admin")]
        public IActionResult dangNhapAdmin(string tenDn, string matKhau)
        {

            var check = db.NguoiDungs.Where(t => t.TenDn == tenDn && t.MatKhau == matKhau).FirstOrDefault();
            if (check != null && check.MaVt == "VTQ485")
            {
                return Ok(new
                {
                    status = "Succes",
                    message = "Đăng nhập thành công",
                });
            }

            return Ok(new { status = "Error", message = "Tài khoản mật khẩu không đúng" });

        }







    }
}

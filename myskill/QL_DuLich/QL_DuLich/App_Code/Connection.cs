using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{

    DataClassesDataContext data = new DataClassesDataContext();
	public Connection()
	{
		//
		// TODO: Add constructor logic here
		//
        
	}
    public int ThemTTDK(ThongTinDKTour tt)
    {
        try
        {
            data.ThongTinDKTours.InsertOnSubmit(tt);
            data.SubmitChanges();
            return 10;
        }
        catch
        {
            return 11;
        }
    }
    public int ThemTTKH(KhachHang kh)
    {
        try
        {
            data.KhachHangs.InsertOnSubmit(kh);
            data.SubmitChanges();
            return 10;
        }
        catch
        {
            return 11;
        }
    }
    public bool Check_PrimarykeyNV(string pma)
    {
        NhanVien nv = data.NhanViens.Where(t => t.MaNV == pma).FirstOrDefault();
        if (nv==null)
           return true;
        else
        {
            data.NhanViens.DeleteOnSubmit(nv);
            data.SubmitChanges();
        }
         return false;
    }
    public int Login(string user, string pass)
    {
        try
        {
            var ck = from nd in data.NguoiDungs
                     join nd1 in data.NhanViens on nd.TenDN equals nd1.TenDN
                     where nd1.TenDN == user && nd.MatKhau == pass && nd.HoatDong == true
                     select new { nd1.TenDN, nd.MatKhau, nd.HoatDong };
            //NguoiDung nd = (from ND in data.NguoiDungs where ND.TenDN == user && ND.MatKhau == pass &&ND.HoatDong==true select ND).FirstOrDefault();
            if (ck != null)
                return 1;
            else
                return 2;
        }
        catch { return 3; }
    }
    public int huy_ttkh(KhachHang kh, String ma)
    {
        try{
            kh=data.KhachHangs.Where(t=>t.MaKH==ma).FirstOrDefault();
            if(kh!=null)
            {
                data.KhachHangs.DeleteOnSubmit(kh);
                data.SubmitChanges();
                return 10;
            }
            else
            { return 11; }
        }
            catch{return 0;}
    }
    public int huy_ttdk(ThongTinDKTour tt,String ma)
    {
        try
        {
            tt = data.ThongTinDKTours.Where(t => t.MaKH == ma).FirstOrDefault();
            if (tt != null)
            {
                KhachHang kh = data.KhachHangs.Where(t => t.MaKH == ma).FirstOrDefault();
                if (kh != null)
                {
                    huy_ttkh(kh, ma);
                }
                data.ThongTinDKTours.DeleteOnSubmit(tt);
                data.SubmitChanges();
                return 10;
            }
            else
            { return 11; }
        }
        catch
        {
            return 0;
        }
    }
    public int Dem(String ma)
    {
        int sl = data.ThongTinDKTours.Count(t => t.MaTour == ma);
            return sl;
    }
   
}
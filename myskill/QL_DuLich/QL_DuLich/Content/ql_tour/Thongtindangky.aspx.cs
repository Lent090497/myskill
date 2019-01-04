using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_ql_tour_Thongtindangky : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=NGUYENLE;Initial Catalog=QL_DuLich;Integrated Security=True");
    Connection cn = new Connection();
    MaKH maKH = new MaKH();
    protected void Page_Load(object sender, EventArgs e)
    {
        lb_sl_nguoi_lon.Text = Request.QueryString["slnl"];
        sl_tre_em.Text = Request.QueryString["sl_tre_em"];
        int gia =int.Parse( Request.QueryString["gia"]);
        lb_thanh_tien.Text = (int.Parse(lb_sl_nguoi_lon.Text) * gia + int.Parse(sl_tre_em.Text) * gia*0.7).ToString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ThongTinDKTour tt = new ThongTinDKTour();
      
        String ma = maKH.Tang();
        String maTour = Request.QueryString["maT"];
        int soL = cn.Dem(maTour);
        tt.MaKH = ma.ToString();
        tt.MaTour = maTour.ToString();
        tt.NgayDat = DateTime.Now;
        tt.NguoiLon = int.Parse(lb_sl_nguoi_lon.Text);
        tt.SoTreEm = int.Parse(sl_tre_em.Text);
        tt.ThanhTien = float.Parse(lb_thanh_tien.Text);

        int kq = cn.ThemTTDK(tt);
        if(kq==10)
        {
            cn.ThemTTDK(tt);
            Response.Write("<script>alert('Thành công');</script>");
            Response.Redirect("~/Content/ql_tour/Thongtinkhachhang.aspx?makh=" + ma.ToString());
        }
        else
        {
            Response.Write("<script>alert('Không thành công');</script>");
        }
    }
}
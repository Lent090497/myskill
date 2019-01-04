using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_ql_tour_Thongtinkhachhang : System.Web.UI.Page
{
    Connection cn = new Connection();
    SqlConnection conn = new SqlConnection("Data Source=NGUYENLE;Initial Catalog=QL_DuLich;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string chon = "select STT from KhachHang";
        SqlDataAdapter da = new SqlDataAdapter(chon, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int ma=0;
        if (dt.Rows.Count <= 0)
        {
            ma = 1;
        }
        else
        {
            int k;
            k = Convert.ToInt32( dt.Rows[dt.Rows.Count - 1][0]);
            ma = ma + k;
            ma++;
        }
        String maKH = Request.QueryString["makh"];
        KhachHang nv = new KhachHang();
        nv.STT = ma;
        nv.MaKH = maKH.ToString();
        nv.TenKH = txt_tennv.Text;
        nv.Email = txt_email.Text;
        nv.NgaySinh = Convert.ToDateTime(txt_ns.Text);

        if (rd_nam.Checked == true)
        {
            rd_nu.Checked = false;
            nv.GioiTinh = rd_nam.Text;

        }
        else
        {
            rd_nam.Checked = false;
            nv.GioiTinh = rd_nu.Text;

        }
        nv.SDT = txt_sdt.Text;
        nv.Diachi = txt_dc.Text;
        nv.CMND = txt_cmnd.Text;


        int kq = cn.ThemTTKH(nv);
        if (kq == 10)
        {
            cn.ThemTTKH(nv);
            Response.Write("<script>alert('Thành công');</script>");
            Response.Redirect("~/Content/ql_tour/Dattour.aspx?");
            
        }
        else
        {
            Response.Write("<script>alert('Không thành công');</script>");
        }
    }
    
}
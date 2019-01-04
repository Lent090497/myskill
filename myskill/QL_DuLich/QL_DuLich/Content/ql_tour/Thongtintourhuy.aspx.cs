using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_ql_tour_Thongtintourhuy : System.Web.UI.Page
{
    Connection cn = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ThongTinDKTour tt = new ThongTinDKTour();
        string maKH = grid_ds_huy.DataKeys[e.RowIndex].Value.ToString();
        int kq = cn.huy_ttdk(tt, maKH);
        if (kq == 11 || kq == 0)
        {
            Response.Write("<script>alert('không có dữ liệu');</script>");
        }
        else
        {
            cn.huy_ttdk(tt, maKH);
            Response.Write("<script>alert('Thành công');</script>");
            //Response.Redirect("~/Content/ql_tour/Dattour.aspx?");
        }
    }
    protected void grid_ds_huy_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
}
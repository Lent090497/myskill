using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_ql_tour_Trangchu : System.Web.UI.MasterPage
{
    Connection cn = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //cbo_ds.DataSource = cn.loadT();
        //cbo_ds.DataTextField = "TenTour";
        //cbo_ds.DataValueField = "TenTour";
    }
    protected void btn_tim_kiem_Click(object sender, ImageClickEventArgs e)
    {
        if (cbo_ds.SelectedIndex != 1)
        {
            Response.Redirect("~/Content/ql_tour/Timkiem.aspx?id=" + cbo_ds.SelectedItem.Text);
        }
        else
        {
            Response.Write("<script>alert('Không thấy dữ liệu');</script>");
        }
    }
}

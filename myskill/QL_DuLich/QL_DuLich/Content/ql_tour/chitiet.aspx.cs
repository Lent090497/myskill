using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_ql_tour_chitiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void txt_slnl_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName=="XemCT")
        {
            TextBox txt_nl = (TextBox)(e.Item.FindControl("txt_slnl"));
            TextBox txt_te = (TextBox)(e.Item.FindControl("txt_sl_tre_em"));
            Label lb_cost = (Label)(e.Item.FindControl("lb_giatour"));
            if (txt_nl.Text.Length > 0)
            {
                Response.Redirect("~/Content/ql_tour/Thongtindangky.aspx?&slnl=" + txt_nl.Text + "&sl_tre_em=" + txt_te.Text + "&gia=" + lb_cost.Text + "&maT=" + e.CommandArgument.ToString());
            }
            else
            {
                Response.Write("<script>alert('Vui lòng nhập đầy đủ thông tin');</script>");
            }
            }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_ql_tour_Danhsachtourtrongnuoc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "xemchitiet")
        {
            Response.Redirect("~/Content/ql_tour/chitiet.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}
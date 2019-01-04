using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MaKH
/// </summary>
public class MaKH
{
    SqlConnection conn = new SqlConnection("Data Source=NGUYENLE;Initial Catalog=QL_DuLich;Integrated Security=True");
    public string Tang()
    {

        string chon = "select MaKH from ThongTinDKTour";
        SqlDataAdapter da = new SqlDataAdapter(chon, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string ma = "";
        if (dt.Rows.Count <= 0)
        {
            ma = "KH001";
        }
        else
        {
            int k;
            ma = "KH";
            k = Convert.ToInt32(dt.Rows[dt.Rows.Count - 1][0].ToString().Substring(2, 3));
            k = k + 1;
            if (k < 10)
            {
                ma = ma + "00";
            }
            else if (k < 100)
            {
                ma = ma + "0";
            }
            ma = ma + k.ToString();
        }
        return ma;
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            
        }
        Connection cn = new Connection();
        protected void btnLogin_Click(object sender, EventArgs e) {
        //    if (Membership.ValidateUser(tbUserName.Text, tbPassword.Text)) {
        //        if(string.IsNullOrEmpty(Request.QueryString["ReturnUrl"])) {
        //            FormsAuthentication.SetAuthCookie(tbUserName.Text, false);
        //            Response.Redirect("~/");
        //        }
        //        else
        //            FormsAuthentication.RedirectFromLoginPage(tbUserName.Text, false);
        //    }
        //    else {
        //        tbUserName.ErrorText = "Invalid user";
        //        tbUserName.IsValid = false;
        //    }
            NguoiDung nd = new NguoiDung();
            string user = tbUserName.Text;
            string pass = tbPassword.Text;
            int kq=cn.Login(user,pass);
            if (kq == 2 || kq == 3)
            {
                tbUserName.ErrorText = "Không hợp lệ";
                tbUserName.IsValid = false;
            }
            else
            {
                 if(string.IsNullOrEmpty(Request.QueryString["ReturnUrl"])) {
                    FormsAuthentication.SetAuthCookie(tbUserName.Text, false);
                    Response.Redirect("~/Content/DanhSachTour.aspx?user="+tbUserName.Text);
                }
                else
                    FormsAuthentication.RedirectFromLoginPage(tbUserName.Text, false);
            }
        }
         
    }
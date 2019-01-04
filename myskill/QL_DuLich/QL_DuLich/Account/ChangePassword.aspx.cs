using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

    public partial class ChangePassword : System.Web.UI.Page {
        DataClassesDataContext data = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e) {
        }

        protected void btnChangePassword_Click(object sender, EventArgs e) {
            NguoiDung nd = new NguoiDung();
            MembershipUser user = Membership.GetUser(User.Identity.Name);
            if (!Membership.ValidateUser(user.UserName, tbCurrentPassword.Text))
            {
                tbCurrentPassword.ErrorText = "Old Password is not valid";
                tbCurrentPassword.IsValid = false;
            }
            else if (!user.ChangePassword(tbCurrentPassword.Text, tbPassword.Text))
            {
                tbPassword.ErrorText = "Password is not valid";
                tbPassword.IsValid = false;
            }
            else
            {
                Response.Redirect("~/");
            }

        }
    }
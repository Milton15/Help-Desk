using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"]!= null)
        {
            Label1.Text = Session["user"].ToString();
            Identidad.Text = Session["tipo"].ToString();
        }
        //else
        //{
            //Session.Abandon();
        //    Response.Redirect("http://localhost:62968/login/inicio.aspx");
        //}
        
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Session.Abandon();
        Response.Redirect("~/login/inicio.aspx");
    }
}
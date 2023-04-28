using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabAss6
{
    public partial class CurrencyConverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            try
            {
                int yuan = Convert.ToInt32(txtInput.Text.Trim());
                int dollars = yuan * 6;
                lblResult.Text = yuan + " Chinese Yuan = " + dollars + "Dollar.";
            }catch(Exception ex)
            {
                lblResult.Text = "Input Error!Please enter the number!";
            }

        }
    }
}
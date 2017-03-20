using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace opDracht4
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dtVandaag,dtTijd;
            dtVandaag = DateTime.Now.ToString("D");
            dtTijd = DateTime.Now.ToString("t");
            litVandaag.Text = dtVandaag;
            litTijd.Text = dtTijd;

            //De datum van pasen(Daysleft) en de start datum (startdate)
            DateTime daysLeft = DateTime.Parse("16/4/2017 12:00:01 AM");
            DateTime startDate = DateTime.Now;

            //Het verschil dat er komt
            TimeSpan timeLeft = daysLeft.Subtract(startDate);

            int uren = (timeLeft.Days * 24) + timeLeft.Hours;
            lblUren.Text = Convert.ToString(uren) + " uren";
            lblMinutes.Text = Convert.ToString(timeLeft.Minutes) + " minuten";
            lblSeconds.Text = Convert.ToString(timeLeft.Seconds) + " seconden";
            
            
        }

        protected void btnVervers_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Request.RawUrl);
        }
    }
}
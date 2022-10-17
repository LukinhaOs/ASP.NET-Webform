using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataBase__noção_
{
    public partial class wfViewCostumers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DetailsView1.PageIndex = (GridView1.PageIndex * GridView1.PageSize) + GridView1.SelectedIndex;
        }
    }
}
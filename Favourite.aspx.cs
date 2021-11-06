using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace Final_year_Project
{
    public partial class Favourite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            string query = "Select* from Vendor2 where";
            if (IsPostBack)
            {
                if (DropDownList3.SelectedIndex == 0)
                {
                    if (DropDownList2.SelectedIndex == 0)
                    {
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += "Entertainers cost<1000 and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += "  cost>=1000 and cost<5000 and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 1)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Mumbai' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Mumbai' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Mumbai' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Mumbai' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Mumbai' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 2)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Bangalore' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Bangalore' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Bangalore' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Bangalore' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Bangalore' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 3)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Chennai' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Chennai' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Chennai' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Chennai' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Chennai' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 4)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Kolkata' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Kolkata' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Kolkata' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Kolkata' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Kolkata' and";
                        }
                    }
                }
                if (DropDownList3.SelectedIndex == 1)
                {
                    if (DropDownList2.SelectedIndex == 0)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += "  cost>=1000 and cost<5000 and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and category='Photographer' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 1)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Mumbai' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Mumbai' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Mumbai' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Mumbai' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Mumbai' and category='Photographer' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 2)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Bangalore' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Bangalore' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Bangalore' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Bangalore' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Bangalore' and category='Photographer' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 3)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Chennai' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Chennai' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Chennai' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Chennai' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Chennai' and category='Photographer' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 4)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Kolkata' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Kolkata' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Kolkata' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Kolkata' and category='Photographer' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Kolkata' and category='Photographer' and";
                        }
                    }
                }
                if (DropDownList3.SelectedIndex == 2)
                {
                    if (DropDownList2.SelectedIndex == 0)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += "  cost>=1000 and cost<5000 and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and category='Venue' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 1)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Mumbai' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Mumbai' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Mumbai' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Mumbai' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Mumbai' and category='Venue' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 2)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Bangalore' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Bangalore' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Bangalore' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Bangalore' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Bangalore' and category='Venue' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 3)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Chennai' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Chennai' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Chennai' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Chennai' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Chennai' and category='Venue' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 4)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Kolkata' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Kolkata' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Kolkata' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Kolkata' and category='Venue' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Kolkata' and category='Venue' and";
                        }
                    }
                }
                if (DropDownList3.SelectedIndex == 3)
                {
                    if (DropDownList2.SelectedIndex == 0)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += "  cost>=1000 and cost<5000 and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and category='Food' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 1)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Mumbai' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Mumbai' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Mumbai' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Mumbai' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Mumbai' and category='Food' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 2)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Bangalore' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Bangalore' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Bangalore' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Bangalore' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Bangalore' and category='Food' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 3)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Chennai' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Chennai' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Chennai' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Chennai' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Chennai' and category='Food' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 4)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Kolkata' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Kolkata' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Kolkata' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Kolkata' and category='Food' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Kolkata' and category='Food' and";
                        }
                    }
                }
                if (DropDownList3.SelectedIndex == 4)
                {
                    if (DropDownList2.SelectedIndex == 0)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += "  cost>=1000 and cost<5000 and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and category='Music' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 1)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Mumbai' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Mumbai' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Mumbai' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Mumbai' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Mumbai' and category='Music' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 2)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Bangalore' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Bangalore' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Bangalore' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Bangalore' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Bangalore' and category='Music' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 3)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Chennai' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Chennai' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Chennai' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Chennai' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Chennai' and category='Music' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 4)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Kolkata' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Kolkata' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Kolkata' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Kolkata' and category='Music' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Kolkata' and category='Music' and";
                        }
                    }
                }
                if (DropDownList3.SelectedIndex == 5)
                {
                    if (DropDownList2.SelectedIndex == 0)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += "  cost>=1000 and cost<5000 and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and category='Decorators' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 1)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Mumbai' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Mumbai' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Mumbai' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Mumbai' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Mumbai' and category='Decorators' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 2)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Bangalore' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Bangalore' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Bangalore' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Bangalore' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Bangalore' and category='Decorators' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 3)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Chennai' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Chennai' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Chennai' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Chennai' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Chennai' and category='Decorators' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 4)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Kolkata' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Kolkata' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Kolkata' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Kolkata' and category='Decorators' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Kolkata' and category='Decorators' and";
                        }
                    }
                }
                if (DropDownList3.SelectedIndex == 6)
                {
                    if (DropDownList2.SelectedIndex == 0)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += "  cost>=1000 and cost<5000 and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and category='Entertainers' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 1)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Mumbai' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Mumbai' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Mumbai' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Mumbai' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Mumbai' and category='Entertainers' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 2)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Bangalore' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Bangalore' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Bangalore' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Bangalore' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Bangalore' and category='Entertainers' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 3)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Chennai' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Chennai' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Chennai' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Chennai' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Chennai' and category='Entertainers' and";
                        }
                    }
                    if (DropDownList2.SelectedIndex == 4)
                    {
                        if (DropDownList1.SelectedIndex == 0)
                        {
                            query += " city='Kolkata' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 1)
                        {
                            query += " cost<1000 and city='Kolkata' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 2)
                        {
                            query += " cost>=1000 and cost<5000 and city='Kolkata' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 3)
                        {
                            query += " cost>=5000 and cost<10000 and city='Kolkata' and category='Entertainers' and";
                        }
                        if (DropDownList1.SelectedIndex == 4)
                        {
                            query += " cost>=10000 and city='Kolkata' and category='Entertainers' and";
                        }
                    }
                }
            }
            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {
                if (cookie["type"] == "Vendor")
                {
                    ProfileLink.NavigateUrl = "VendorProfileEdit.aspx";
                }
                else
                {
                    ProfileLink.NavigateUrl = "Profile.aspx";
                }
                Display(query);
            }
            else
            {
                Response.Write("<script language=javascript>alert('You are not signed in'); window.location.href='Signup.aspx'</script>");
            }
            
        }
        protected void Display(string query)
        {

            string constr = ConfigurationManager.ConnectionStrings["EventManagementConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                HttpCookie cookie = Request.Cookies["UserDetails"];

                string no = "";
                if (cookie["type"] == "Vendor")
                {
                    SqlCommand cmda = new SqlCommand("select VendId from Favourite where primid='" + cookie["id"] + "'", con);
                    con.Open();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmda))
                    {
                        DataTable dta = new DataTable();
                        sda.Fill(dta);
                        no = "" + dta.Rows[0]["VendId"];
                        for (int i = 1; i < dta.Rows.Count; i++)
                        {
                            no += "," + dta.Rows[i]["VendId"];
                        }
                    }
                }
                else
                {
                    SqlCommand cmda = new SqlCommand("select VendId from Favourite where custId='" + cookie["id"] + "'", con);
                    con.Open();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmda))
                    {
                        DataTable dta = new DataTable();
                        sda.Fill(dta);
                        no = "" + dta.Rows[0]["VendId"];
                        for (int i = 1; i < dta.Rows.Count; i++)
                        {
                            no += "," + dta.Rows[i]["VendId"];
                        }
                    }
                }


                SqlCommand cmd = new SqlCommand(query + " id in (" + no + ")", con);
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    dt.Columns.Add("ProfilePhoto", typeof(string));
                    dt.Columns.Add("PPExtension", typeof(string));
                    dt.Columns.Add("DisplayPhoto", typeof(string));
                    dt.Columns.Add("DPExtension", typeof(string));
                    if (dt.Rows.Count == 0)
                    {
                        Label1.Text = "No Result Found";

                        Repeater1.DataSource = null;
                        Repeater1.DataSourceID = null;
                        Repeater1.DataBind();

                    }
                    else
                    {
                        Label1.Text = "";
                        foreach (DataRow row in dt.Rows)
                        {
                            //need to set value to NewColumn column
                            SqlCommand cmd1 = new SqlCommand("Select image,extension from VendorImage where id = '" + row["id"] + "' and type ='dp'", con);
                            using (SqlDataAdapter sda1 = new SqlDataAdapter(cmd1))
                            {
                                DataTable dt1 = new DataTable();
                                sda1.Fill(dt1);
                                if (dt1.Rows.Count > 0)
                                {
                                    byte[] bytes = (byte[])dt1.Rows[0]["image"];
                                    string strBase64 = Convert.ToBase64String(bytes);
                                    row["ProfilePhoto"] = strBase64;
                                    row["PPExtension"] = dt1.Rows[0]["extension"];
                                }
                            }
                            SqlCommand cmd2 = new SqlCommand("Select image,extension from VendorImage where id = '" + row["id"] + "' and type ='other'", con);
                            using (SqlDataAdapter sda2 = new SqlDataAdapter(cmd2))
                            {
                                DataTable dt2 = new DataTable();
                                sda2.Fill(dt2);
                                if (dt2.Rows.Count > 0)
                                {
                                    byte[] bytes = (byte[])dt2.Rows[0]["image"];
                                    string strBase64 = Convert.ToBase64String(bytes);
                                    row["DisplayPhoto"] = strBase64;
                                    row["DPExtension"] = dt2.Rows[0]["extension"];
                                }
                            }
                            Repeater1.DataSource = dt;
                            Repeater1.DataBind();
                        }
                    }
                }

            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if ((Request.Cookies["UserDetails"] != null))
            {
                Response.Cookies["UserDetails"].Expires = DateTime.Now.AddDays(-30);

            }
            Response.Redirect("Signup.aspx");
        }

    }
}
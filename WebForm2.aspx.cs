using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Aryan Gupta\source\repos\WebApplication3\App_Data\Database1.mdf;Integrated Security=True");

        public void Populate(DropDownList ddl, string ProcedureName, string parameterkey, string parametervalue, string DataField)
        {
            using (SqlDataAdapter da = new SqlDataAdapter())
            {
                DataSet ds = new DataSet();
                da.SelectCommand = new SqlCommand(ProcedureName, con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                if (parameterkey != "")
                    da.SelectCommand.Parameters.AddWithValue(parameterkey, parametervalue);
                da.Fill(ds);
                ddl.DataSource = ds;
                ddl.DataTextField = DataField;
                ddl.DataBind();
                ddl.Items.Insert(0, "---Select---");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Populate(DropDownList_country, "GetCountries", "", "", "Country_name");
        }

        protected void DropDownList_country_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList_country.SelectedIndex != 0)
            {
                DropDownList_state.Items.Clear();
                DropDownList_city.Items.Clear();
                Populate(DropDownList_state, "GetStates", "@CountryName", DropDownList_country.SelectedValue, "State_name");
            }
            else
                Response.Write("<script>alert('Please select a Country');</script>");
        }

        protected void DropDownList_state_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList_state.SelectedIndex != 0)
            {
                DropDownList_city.Items.Clear();
                Populate(DropDownList_city, "GetCities", "@StateName", DropDownList_state.SelectedValue, "City_name");
            }
            else
                Response.Write("<script>alert('Please select a State');</script>");
        }

        protected void DropDownList_city_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList_city.SelectedIndex != 0 && DropDownList_state.SelectedIndex != 0)
                Label1.Text = "Country : " + DropDownList_country.SelectedValue + " | State : " + DropDownList_state.SelectedValue + " | City : " + DropDownList_city.SelectedValue;
            else
                Response.Write("<script>alert('Please select a City');</script>");
        }
    }
}
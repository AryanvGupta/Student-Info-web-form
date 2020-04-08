using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindCountryList();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Aryan Gupta\source\repos\WebApplication3\App_Data\Database1.mdf;Integrated Security=True";

            SqlConnection con = new SqlConnection(connectionString);

            using (con)
            {
                SqlCommand cmd = new SqlCommand("entry", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Clear();

                IEnumerable<string> check = (from item in CheckBoxList1.Items.Cast<ListItem>()
                                             where item.Selected
                                             select item.Text);

                cmd.Parameters.AddWithValue("@name", TextBox_name.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox_dob.Text);
                cmd.Parameters.AddWithValue("@email", TextBox_email.Text);
                cmd.Parameters.AddWithValue("@country", DropDownList_country.Text);
                cmd.Parameters.AddWithValue("@state", DropDownList_state.Text);
                cmd.Parameters.AddWithValue("@city", DropDownList_city.Text);
                cmd.Parameters.AddWithValue("@address", TextBox_address.Text);
                cmd.Parameters.AddWithValue("@gender", RadioButtonList1.Text);
                cmd.Parameters.AddWithValue("@hobbies", string.Join(",", check));
                cmd.Parameters.AddWithValue("@password", TextBox_password.Text);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("The info is stored sucessfully. Thank U...!");
                }
                catch
                {
                    Response.Write("Something went wrong. Please try again...!");
                }
                

            }

        }

        public void BindCountryList()
        {
            List<string> country_list = new List<string>();
            country_list.Add("---select---");
            country_list.Add("India");
            country_list.Add("USA");
            country_list.Add("UK");

            DropDownList_country.DataSource = country_list;
            DropDownList_country.DataBind();
        }

        protected void DropDownList_country_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["Country"] = DropDownList_country.SelectedItem.ToString();
            List<string> state_list = new List<string>();

            if (ViewState["Country"].ToString() == "India")
            {
                DropDownList_state.Items.Clear();
                state_list.Add("---select---");
                state_list.Add("Maharashtra");
                state_list.Add("Gujarat");
                state_list.Add("Rajasthan");
                DropDownList_state.DataSource = state_list;
                DropDownList_state.DataBind();
            }
            else if (ViewState["Country"].ToString() == "USA")
            {
                DropDownList_state.Items.Clear();
                state_list.Add("---select---");
                state_list.Add("California");
                state_list.Add("Texas");
                state_list.Add("Florida");
                DropDownList_state.DataSource = state_list;
                DropDownList_state.DataBind();
            }
            else if (ViewState["Country"].ToString() == "UK")
            {
                DropDownList_state.Items.Clear();
                state_list.Add("---select---");
                state_list.Add("England");
                state_list.Add("Scotland");
                state_list.Add("Wales");
                DropDownList_state.DataSource = state_list;
                DropDownList_state.DataBind();
            }
        }

       protected void DropownList_state_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["state"] = DropDownList_state.SelectedItem.ToString();
            List<string> city_list = new List<string>();

            if (  ViewState["state"].ToString() == "Gujarat")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("Surat");
                DropDownList_city.Items.Add("Vadodara");
                DropDownList_city.Items.Add("Rajkot");
            }
            else if (  ViewState["state"].ToString() == "Maharashtra")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("Pune");
                DropDownList_city.Items.Add("Mumbai");
                DropDownList_city.Items.Add("Nagpur");
            }
            else if (  ViewState["state"].ToString() == "Rajasthan")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("Ajmer");
                DropDownList_city.Items.Add("Jaipur");
                DropDownList_city.Items.Add("Jodhpur");
            }
            else if (  ViewState["state"].ToString() == "Texas")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("Huston");
                DropDownList_city.Items.Add("Dallas");
                DropDownList_city.Items.Add("El Paso");
            }
            else if (  ViewState["state"].ToString() == "California")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("Los Angeles");
                DropDownList_city.Items.Add("San Diego");
                DropDownList_city.Items.Add("San Jose");
            }
            else if (  ViewState["state"].ToString() == "Florida")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("Miami");
                DropDownList_city.Items.Add("Orlando");
                DropDownList_city.Items.Add("Tampa");
            }
            else if (  ViewState["state"].ToString() == "England")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("London");
                DropDownList_city.Items.Add("Manchester");
                DropDownList_city.Items.Add("Bristol");
            }
            else if (  ViewState["state"].ToString() == "Soctland")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("Glasgow");
                DropDownList_city.Items.Add("Dundee");
                DropDownList_city.Items.Add("Stirling");
            }
            else if (  ViewState["state"].ToString() == "Wales")
            {
                DropDownList_city.Items.Clear();
                city_list.Add("---select---");
                DropDownList_city.Items.Add("Cardiff");
                DropDownList_city.Items.Add("Swansea");
                DropDownList_city.Items.Add("Newport");
            }
            else
            {
                Response.Write("<script>alert('Apun ki duniya me inte ej eilake hai');/<script>");
            }
        }       
    }
}
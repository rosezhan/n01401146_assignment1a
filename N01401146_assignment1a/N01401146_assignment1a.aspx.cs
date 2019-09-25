using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01401146_assignment1a
{
    public partial class N01401146_assignment1a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                {
                    if (Page.IsValid) ;
                    {
                        string Incident_Fname = incident_first_name.Text();
                        string Incident_Lname = incident_last_name.Text();
                        string Incident_Day = incident_date.Text();
                        string Incident_Involvement = incident_person.SelectedValue();
                        string Incident_Type = incident_type.SelectedValue();
                        string Incident_Description = incident_description.Text();
                        string Incident_Phone_Number = incident_contact_number.Text();
                        string Incident_Confirmation_Initial = incident_initials.Text();

                        incident_summary.InnerHtml = "Thank you for completing the form. Please review the details below:" + "<br>";
                        incident_summary.InnerHtml += "First Name" + Incident_Fname + "<br>";
                        incident_summary.InnerHtml += "Last Name" + Incident_Lname + "<br>";
                        incident_summary.InnerHtml += "Incident Date" + Incident_Day + "<br>";
                        incident_summary.InnerHtml += "Did this happen to you?" + Incident_Involvement + "<br>";
                        incident_summary.InnerHtml += "Type of Incident" + Incident_Type + "<br>";
                        incident_summary.InnerHtml += "Incident Description" + Incident_Description + "<br>";
                        incident_summary.InnerHtml += "Contact Number" + Incident_Phone_Number + "<br>";
                        incident_summary.InnerHtml += "Your initials" + Incident_Confirmation_Initial + "<br>";

                        if (Incident_Type = "fall")
                        {
                            incident_summary.InnerHtml += "This incident is now PENDING INVESTIGATION.";
                        }
                        if (Incident_Type = "equipment_malfunction")
                        {
                            incident_summary.InnerHtml += "This incident REQUIRES URGENT ATTENTION.";
                        }
                        if (Incident_Type = "illness")
                        {
                            incident_summary.InnerHtml += "This incident is now RESOLVED.";
                        }
                    }

                }
            }
        }
    }
}
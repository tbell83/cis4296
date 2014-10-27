using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using Tools;

namespace JobFair{
    public partial class studentRegistration : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void registerStudent(string FName, string LName, string email, string TUID, string lunch, string position, string graduation){
            string creation = DateTime.Now.ToShortTimeString();
            string lastUpdate = creation;
            string sql = "insert into JF_Students (FirstName, LastName, email, TUID, Lunch, Positions, GraduationDate, RegistrationTimestamp, LastUpdated) values ('" + FName + "', '" + LName + "', '" + email + "', '" + TUID + "', '" + lunch + "', '" + position + "', '" + graduation + "', '" + creation + "', '" + lastUpdate + "')";
            DBAccess.DBUpdate(sql);
        }

        protected void btnSubmit_Click(object sender, EventArgs e) {
            string fname = txtFirstName.Text;
            string lname = txtLastName.Text;
            string email = txtEMail.Text;
            string tuid = txtTUID.Text;
            string lunch;
            if(chkLunch.Checked){
                lunch="yes";
            }else{
                lunch="no";
            }
            string position = "";

            foreach(ListItem item in cblPosition.Items){
                if(item.Selected){
                    position += item.Text + ";";
                }
            }

            string graduationDate = ddlGradutation.SelectedValue;
            registerStudent(fname, lname, email, tuid, lunch, position, graduationDate);
            register.Visible=false;
            output.Visible=true;
            lblOutput.Text="Registration Successful";
        }

        protected void clearFields(){
            txtEMail.Text="";
            txtFirstName.Text="";
            txtLastName.Text="";
            txtTUID.Text="";
            chkLunch.Checked=false;
            foreach(ListItem item in cblPosition.Items){ item.Selected=false; }
        }

        protected void btnBack_Click(object sender, EventArgs e) {
            clearFields();
            output.Visible=false;
            registrationComplete.Visible=false;
            register.Visible=true;
        }
    }
}
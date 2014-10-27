using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Tools;

namespace JobFair{
    public partial class viewStudents : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if(!IsPostBack){
                string sql = "select * from JF_Students";
                DataSet dataset = DBAccess.DBCall(sql);
                gvStudents.DataSource=dataset;
                gvStudents.DataBind();
            }
        }
    }
}
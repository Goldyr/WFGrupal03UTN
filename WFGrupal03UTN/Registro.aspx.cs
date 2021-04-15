using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WFGrupal03UTN
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_GuardarLocalidad_Click(object sender, EventArgs e)
        {
            bool flag = false;
            foreach(ListItem aux in ddl_localidades.Items) // Se crea una varible tipo item de lista recorriendo la ddl
            {
                if (aux.Value == txt_Localidad.Text) // y se compara el valor por el texto en la txt
                {
                    flag = true;
                }
            }
            if (!flag) { ddl_localidades.Items.Add(txt_Localidad.Text); }
        }

        protected void btn_Inicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}
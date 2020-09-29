using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel.Design;

namespace TP_4_PROGRAMACION_3
{
    public partial class Ejercicio_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (IsPostBack == false)
            {
                CrearGrilla("Select Sucursal.Id_Sucursal, Sucursal.NombreSucursal, Sucursal.DescripcionSucursal as Descripcion, Provincia.DescripcionProvincia as Provincia, Sucursal.DireccionSucursal as Direccion  From Sucursal inner join Provincia on Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia");
            }

        }
      
        public void CrearGrilla(String ConsultaUsuario)
        {
            Conexion con = new Conexion();
            String consulta = ConsultaUsuario;
            SqlConnection cnsucursal = new SqlConnection(con.Llamarruta());
            SqlCommand comando = new SqlCommand(consulta, cnsucursal);
            cnsucursal.Open();
            SqlDataReader dr = comando.ExecuteReader();
            gvGrillaSucursales.DataSource = dr;
            gvGrillaSucursales.DataBind();
            cnsucursal.Close();

            if (gvGrillaSucursales.Rows.Count == 0)
            {
                lblAlerta.Text = "Esta id: "+txtIdSucursal.Text+" no tiene ningun dato";
            }
            else
            {
                lblAlerta.Text = "";
            }
            

        }

        protected void btnMostrart_Click(object sender, EventArgs e)
        {
            CrearGrilla("Select Sucursal.Id_Sucursal, Sucursal.NombreSucursal, Sucursal.DescripcionSucursal as Descripcion, Provincia.DescripcionProvincia as Provincia, Sucursal.DireccionSucursal as Direccion  From Sucursal inner join Provincia on Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia");
            LimpiarTXT();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            CrearGrilla("Select Sucursal.Id_Sucursal, Sucursal.NombreSucursal, Sucursal.DescripcionSucursal as Descripcion, Provincia.DescripcionProvincia as Provincia, Sucursal.DireccionSucursal as Direccion From Sucursal inner join Provincia on Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia where Id_Sucursal = " + txtIdSucursal.Text);
            LimpiarTXT();
        }

        public void LimpiarTXT()
        {
            txtIdSucursal.Text = "";
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TP_4_PROGRAMACION_3
{
    public partial class Ejercicio_1 : System.Web.UI.Page
    {

        Conexion conec = new Conexion();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            

            if (IsPostBack==false)
            {             
                conec.Cargarddl(ddlProvincia);
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            String consulta = "insert into Sucursal(NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal) values ('" + txtNombre.Text+ "','" + txtDescripcion.Text+ "','" + ddlProvincia.SelectedValue+ "','" + txtdireccion.Text+ "')";

            Conexion con = new Conexion();

            int filas = con.EjTransaccion(consulta);
            if (filas == 0)
            {
                lblAlerta.Text = "ERROR NO SE A PODIDO AGREGAR A LA BASE DE DATOS";
            }
            else
            {
                lblAlerta.Text = "LA SUCURSAL SE HA AGREGADO CON EXITO";
            }

            LimpiarTXT();

        }


        public void LimpiarTXT()
        {
            txtDescripcion.Text = "";
            txtNombre.Text = "";
            txtdireccion.Text = "";
            
        }

    }
}
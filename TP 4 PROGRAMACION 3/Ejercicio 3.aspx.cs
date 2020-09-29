using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_4_PROGRAMACION_3
{
    public partial class Ejercicio_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        private void EliminarSucursal()
        {
            String consulta = "delete from Sucursal where Id_Sucursal = "+txtIdSucursal.Text;

            Conexion con = new Conexion();

            int filas = con.EjTransaccion(consulta);
            if (filas == 0)
            {              
                lblAlerta.Text = "ERROR NO SE A PODIDO ELIMINAR DE LA BASE DE DATOS";
            }
            else
            {
                lblAlerta.Text = "LA SUCURSAL SE HA ELIMINADO CON EXITO";
            }

            LimpiarTXT();
        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            EliminarSucursal();          
        }

        public void LimpiarTXT()
        {
            txtIdSucursal.Text = "";
        }

     
    }
}
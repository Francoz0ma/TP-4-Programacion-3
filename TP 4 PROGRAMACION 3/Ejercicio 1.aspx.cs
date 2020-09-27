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
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (IsPostBack==false)
            {
                Cargarddl();
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


        private void Cargarddl()
        {
            Conexion con = new Conexion();

            String consulta = "Select * from Provincia";

            DataSet ds = new DataSet();
            SqlConnection cn = new SqlConnection(con.Llamarruta());
            cn.Open();
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, cn);
            adaptador.Fill(ds, "Provincia");
            ddlProvincia.DataSource = ds.Tables["Provincia"];
            ddlProvincia.DataTextField = "DescripcionProvincia";
            ddlProvincia.DataValueField = "Id_Provincia";
            ddlProvincia.DataBind();
            cn.Close();
        }

        public void LimpiarTXT()
        {
            txtDescripcion.Text = "";
            txtNombre.Text = "";
            txtdireccion.Text = "";
            
        }

        protected void lbEliminarSucursal_Click(object sender, EventArgs e)
        {
            Server.Transfer("Ejercicio 3.aspx");
        }

        protected void lbListadodeSucursales_Click(object sender, EventArgs e)
        {
            Server.Transfer("Ejercicio 2.aspx");
        }

        protected void lbAgregarSucursal_Click(object sender, EventArgs e)
        {
            Server.Transfer("Ejercicio 1.aspx");
        }
    }
}
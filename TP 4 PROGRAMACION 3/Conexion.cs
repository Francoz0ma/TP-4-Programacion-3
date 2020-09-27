using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace TP_4_PROGRAMACION_3
{

    

    public class Conexion
    {

      private String ruta = "Data Source=DESKTOP-F9A9FA7\\SQLEXPRESS;Initial Catalog=BDSucursales;Integrated Security=True";

        public int EjTransaccion(string consulta) //Insertar, eliminar o modificar
        {
            SqlConnection conexion = new SqlConnection(ruta);
            conexion.Open();

            SqlCommand comando = new SqlCommand(consulta, conexion);

            int filasAfectadas = comando.ExecuteNonQuery();


            return filasAfectadas;
        }

        public String Llamarruta()
        {
            return ruta;
        }


    }


}
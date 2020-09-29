<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio 2.aspx.cs" Inherits="TP_4_PROGRAMACION_3.Ejercicio_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 353px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 258px;
        }
        .auto-style6 {
            width: 323px;
        }
        .auto-style7 {
            width: 279px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="hpAgregar" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Ejercicio 1.aspx">Agregar Sucursal</asp:HyperLink>
                </td>
                <td class="auto-style6">
                    <asp:HyperLink ID="hlListado" runat="server" ForeColor="Blue" NavigateUrl="~/Ejercicio 2.aspx">Listado de sucursales</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="hlEliminar" runat="server" ForeColor="Blue" NavigateUrl="~/Ejercicio 3.aspx">Eliminar sucursal</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <br />
                    <asp:Label ID="lblEliminarSucursales" runat="server" Font-Bold="True" Font-Size="Larger" Text="Listado de Sucursales"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">Busqueda ingrese ID sucursal:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtIdSucursal" runat="server" CssClass="auto-style2" Width="266px" ValidationGroup="1"></asp:TextBox>
                    &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="Error debe ingresar una id de sucursal si la quiere filtrar individualmente" ValidationGroup="1">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="Debe ingresar un numero de ID de sucursal" Operator="GreaterThan" Type="Integer" ValidationGroup="1" ValueToCompare="0">*</asp:CompareValidator>
                    </td>
                    <td>
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" Width="55px" OnClick="btnFiltrar_Click" ValidationGroup="1" />
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrart" runat="server" Text="Mostrar Todos" OnClick="btnMostrart_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:GridView ID="gvGrillaSucursales" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="lblAlerta" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Red"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="1" />
            <br />
        </div>
    </form>
</body>
</html>

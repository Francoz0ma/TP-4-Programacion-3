<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio 3.aspx.cs" Inherits="TP_4_PROGRAMACION_3.Ejercicio_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            width: 139px;
        }
        .auto-style4 {
            width: 353px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:LinkButton ID="lbAgregar" runat="server" OnClick="lbAgregar_Click">Agregar sucursal</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lbListado" runat="server" OnClick="lbListado_Click">Listado de sucursales</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lbEliminar" runat="server" OnClick="lbEliminar_Click">Eliminar sucursal</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="lblEliminarSucursales" runat="server" Font-Bold="True" Font-Size="Larger" Text="Eliminar Sucursales"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Ingrese ID sucursal:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtIdSucursal" runat="server" CssClass="auto-style2" Width="334px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" ValidationGroup="1" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="lblAlerta" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:CompareValidator ID="cvNumeros" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="CompareValidator" Operator="GreaterThan" Type="Integer" ValueToCompare="0" ForeColor="Red" ValidationGroup="1">Solo se deben ingresar numeros</asp:CompareValidator>
        <br />
        <asp:RequiredFieldValidator ID="rfvtxtSucursal" runat="server" ControlToValidate="txtIdSucursal" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="1">Debe ingresar un numero de id</asp:RequiredFieldValidator>
    </form>
</body>
</html>

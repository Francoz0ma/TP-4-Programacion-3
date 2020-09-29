<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio 1.aspx.cs" Inherits="TP_4_PROGRAMACION_3.Ejercicio_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style13 {
            width: 251px;
        }
        .auto-style14 {
            width: 518px;
        }
        .auto-style17 {
            width: 21px;
        }
        .auto-style18 {
            width: 27px;
        }
        .auto-style19 {
            width: 226px;
        }
        .auto-style20 {
            width: 272px;
        }
        .auto-style21 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style19">
                    <asp:HyperLink ID="hpAgregar" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/Ejercicio 1.aspx">Agregar Sucursal</asp:HyperLink>
                </td>
                <td class="auto-style20">
                    <asp:HyperLink ID="hlListado" runat="server" ForeColor="Blue" NavigateUrl="~/Ejercicio 2.aspx">Listado de sucursales</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="hlEliminar" runat="server" ForeColor="Blue" NavigateUrl="~/Ejercicio 3.aspx">Eliminar sucursal</asp:HyperLink>
                </td>
            </tr>
        </table>
        <p>
            <asp:Label ID="lblGrupo" runat="server" Font-Bold="True" Font-Size="Larger" Text="GRUPO N° 8 "></asp:Label>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lblAgregarSucursal" runat="server" Font-Bold="True" Font-Size="Larger" Text="Agregar sucursal"></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">Nombre sucursal:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtNombre" runat="server" Width="350px" ValidationGroup="1"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Error debe ingresar el nombre  de una sucursal" ValidationGroup="1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">
                    <br />
                    Descripcion:<br />
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="auto-style21" Height="48px" Width="350px" ValidationGroup="1"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Error debe ingresar una descripcion" ValidationGroup="1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">Provincia:</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="ddlProvincia" runat="server" Width="350px" ValidationGroup="1">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">Direccion:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtdireccion" runat="server" Width="350px" ValidationGroup="1"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtdireccion" ErrorMessage="Error debe ingresar una direccion" ValidationGroup="1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" ValidationGroup="1" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblAlerta" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="1" />
    </form>
</body>
</html>

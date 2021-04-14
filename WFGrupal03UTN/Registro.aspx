<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="/Registro.aspx.cs" Inherits="WFGrupal03UTN.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form runat="server">
        <h2>
            Localidades
        </h2>
            <div>
                <p>Nombre de localidad:</p>
                <asp:TextBox ID="txt_Localidad" runat="server" Width="15%"></asp:TextBox>
                <asp:Button ID="btn_GuardarLocalidad" runat="server" Text="Guardar localidad" />
            </div>
        <h2>
            Usuarios
        </h2>
            <div>
                <p>Nombre usuario:</p>
                <asp:TextBox ID="txt_Usuario" runat="server"></asp:TextBox>

                <p>Contrasena:</p>
                <asp:TextBox ID="txt_Contra" runat="server"></asp:TextBox>

                <p>Repetir contrasena:</p>
                <asp:TextBox ID="txt_ContraRepetida" runat="server"></asp:TextBox>

                <p>Correo electronico:</p>
                <asp:TextBox ID="txt_Correo" runat="server"></asp:TextBox>

                <p>CP:</p>
                <asp:TextBox ID="txt_CP" runat="server"></asp:TextBox>

                <p>Localidades:</p>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                <asp:Button ID="btn_GuardarUsuario" runat="server" Text="Guardar Usuario" />
                <asp:Button ID="btn_Inicio" runat="server" Text="Ir a Inicio.aspx" />
            </div>
        </form>
    </body>
</html>

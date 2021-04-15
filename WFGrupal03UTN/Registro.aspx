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
                <p>Nombre de localidad:
                <asp:TextBox ID="txt_Localidad" runat="server" Width="16%" ValidationGroup="Grupo1"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txt_Localidad" ValidationGroup="Grupo1">Ingrese una localidad</asp:RequiredFieldValidator>
                </p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_GuardarLocalidad" runat="server" Text="Guardar localidad" ValidationGroup="Grupo1" Width="131px" OnClick="btn_GuardarLocalidad_Click" />
            </div>
        <h2>
            Usuarios
        </h2>
            <div>
                <p>Nombre usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_Usuario" runat="server" Width="137px"></asp:TextBox>

                </p>

                <p>Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Contra" runat="server" Width="134px" TextMode="Password"></asp:TextBox>

                	<asp:RequiredFieldValidator ID="rfv_contra" runat="server" ControlToValidate="txt_Contra">Ingrese una contraseña</asp:RequiredFieldValidator>

                </p>

                <p>Repetir contraseña:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_ContraRepetida" runat="server" Width="134px" TextMode="Password"></asp:TextBox>

                	<asp:CompareValidator ID="cv_contra" runat="server" ControlToCompare="txt_Contra" ControlToValidate="txt_ContraRepetida">Las contraseñas no coinciden</asp:CompareValidator>

                </p>

                <p>Correo electronico:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_Correo" runat="server" Width="134px"></asp:TextBox>

                	<asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_Correo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email invalido</asp:RegularExpressionValidator>
					<asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_Correo">Ingrese un email </asp:RequiredFieldValidator>

                </p>

                <p>CP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_CP" runat="server" Width="136px"></asp:TextBox>

                </p>

                <p>Localidades:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="ddl_localidades" runat="server" Height="16px" Width="123px"></asp:DropDownList>

                </p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="btn_GuardarUsuario" runat="server" Text="Guardar Usuario" />
                <br />
                <br />
                <asp:Button ID="btn_Inicio" runat="server" Text="Ir a Inicio.aspx" OnClick="btn_Inicio_Click" />
                <br />
                <br />
            </div>
        </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="/Registro.aspx.cs" Inherits="WFGrupal03UTN.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="./Registro.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <div class="centrado">
            <h2>Localidades</h2>
            <div class="input-div">
                <p>Nombre de localidad: </p>
                <asp:TextBox ID="txt_Localidad" runat="server" Width="137px" ValidationGroup="Grupo1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_localidad" runat="server" ControlToValidate="txt_Localidad" ValidationGroup="Grupo1" ForeColor="Red">Ingrese una localidad</asp:RequiredFieldValidator>                
            </div>
            <div class="centrar-boton">
                <asp:Button ID="Button1" runat="server" Text="Guardar localidad" ValidationGroup="Grupo1" Width="149px" OnClick="btn_GuardarLocalidad_Click" UseSubmitBehavior="False" />
            </div>
            <h2>Usuarios</h2>
            <!-- USUARIOS -->
            <div class="input-div">
                <p>Nombre de usuario: </p>
                <asp:TextBox ID="txt_Usuario" runat="server" Width="137px"></asp:TextBox>
   
                <asp:RequiredFieldValidator ID="rfv_Usuario" runat="server" ControlToValidate="txt_Usuario" ForeColor="Red">Insertar nombre de usuario</asp:RequiredFieldValidator>
   
            </div>
            <!-- CONTRASEÑA -->
            <div class="input-div">
                 <p>Contraseña: </p>
                <asp:TextBox ID="txt_Contra" runat="server" Width="134px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_contra" runat="server" ControlToValidate="txt_Contra" ForeColor="Red">Ingrese una contraseña</asp:RequiredFieldValidator>         
            </div>
            <!-- REPETIR CONTRASEÑA -->
            <div class="input-div">
                 <p>Repetir contraseña: </p>
                 <asp:TextBox ID="txt_ContraRepetida" runat="server" Width="137px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cv_contra" runat="server" ControlToCompare="txt_Contra" ControlToValidate="txt_ContraRepetida" ForeColor="Red">Las contraseñas no coinciden</asp:CompareValidator>
                 <asp:RequiredFieldValidator ID="rfv_ContraRepetida" runat="server" ControlToValidate="txt_ContraRepetida" ForeColor="Red">Ingresar la contraseña nuevamente</asp:RequiredFieldValidator>
            </div>
                 <!-- EMAIL -->
            <div class="input-div">
                 <p>Correo electronico: </p>
                <asp:TextBox ID="txt_Correo" runat="server" Width="134px"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="rev_email" runat="server" ControlToValidate="txt_Correo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red">Email invalido</asp:RegularExpressionValidator>
					<asp:RequiredFieldValidator ID="rfv_email" runat="server" ControlToValidate="txt_Correo" ForeColor="Red">Ingrese un email </asp:RequiredFieldValidator>
                                           
            </div>
             <!-- CODIGO POSTAL -->
             <div class="input-div">
                 <p>CP: </p>
                  <asp:TextBox ID="txt_CP" runat="server" Width="136px" MaxLength="4"></asp:TextBox>
                 <asp:RangeValidator ID="rv_Cp" runat="server" ControlToValidate="txt_CP" MaximumValue="9999" MinimumValue="1000" Type="Integer" ForeColor="Red">Ingresar CP de 4 digitos</asp:RangeValidator>
                 <asp:RequiredFieldValidator ID="rfv_CP" runat="server" ControlToValidate="txt_CP" ForeColor="Red">Ingresar un codigo postal</asp:RequiredFieldValidator>
             </div>
             <div class="input-div">
             <p>Localidades: </p> 
            <asp:DropDownList ID="ddl_localidades" runat="server" Height="16px" Width="123px"></asp:DropDownList>
                        
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl_localidades" ForeColor="Red">Seleccionar localidad o cargar una desde guardar localidad</asp:RequiredFieldValidator>
                        
            </div>
            
        <div class="centrar-boton">
            <asp:Button ID="Button2" runat="server" Text="Guardar Usuario" OnClick="Button2_Click" />
            <asp:Button ID="btn_Inicio" runat="server" Text="Ir a Inicio.aspx" OnClick="btn_Inicio_Click" ValidationGroup="Group0" />
        </div>

        <div>

            <asp:Label ID="lbl_Bienvenida" runat="server"></asp:Label>

        </div>
             </div>
        </form>
    </body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegJugador.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegJugador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

	<h3>Crear Jugador:</h3>

	<div id="divJugador">
		<div class="form-group">
			<asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
			<asp:TextBox ID="txtNombre" runat="server" class="form-control"/>
		</div>
		<asp:RequiredFieldValidator ID="valReqTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
		<br/>
		<div class="form-group">
			<asp:Label ID="lblApellido" runat="server" Text="Apellido:"/>
			<asp:TextBox ID="txtApellido" runat="server" class="form-control"/>
		</div>
		<asp:RequiredFieldValidator ID="valReqTxtApellido" runat="server" ErrorMessage="El apellido es Obligatorio" ControlToValidate="txtApellido" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
		<br/>
		<div class="form-group">
			<asp:Label ID="lblEdad" runat="server" Text="Edad:"/>
			<asp:TextBox ID="txtEdad" runat="server" class="form-control"/>
		</div>
		<asp:RequiredFieldValidator ID="valReqTxtEdad" runat="server" ErrorMessage="La edad es obligatoria" ControlToValidate="txtEdad" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
		<%--[AR]Lo obligamos a que la edad sea tipo entero--%>
		<asp:CompareValidator ID="valIntTxtEdad" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtEdad" ErrorMessage="La edad debe ser un número entero" ValidationGroup="ValidacionOblig" />
		<br/>
		<div class="form-group">
			<asp:Label ID="lblEquipo" runat="server" Text="Equipo:"/>
			<asp:DropDownList ID="ddlEquipos" runat="server">
				<asp:ListItem Text="Seleccione Equipo" Value="0"/>
				<asp:ListItem Text="Equipo 1" Value="Equipo 1"/>
				<asp:ListItem Text="Equipo 2" Value="Equipo 2"/>
			</asp:DropDownList>
		</div>
		<asp:RequiredFieldValidator InitialValue="0" ID="reqValDdlEquipos" Display="Static" ControlToValidate="ddlEquipos" runat="server" ErrorMessage="Debe elegir un equipo" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig"></asp:RequiredFieldValidator>
		<br/>
		<br/>
	
        <asp:Button ID="btnCrear" runat="server" Text="Crear" onclick="btnCrear_Click" OnClientClick="prueba();"/>

	</div>


    <script>

        function prueba() {

            var nombre = document.getElementById('<%= txtNombre.ClientID %>').value;
            var apellido = document.getElementById('<%= txtApellido.ClientID %>').value;
            var edad = document.getElementById('<%= txtEdad.ClientID %>').value;
            var equipo = document.getElementById('<%= ddlEquipos.ClientID %>').selectedIndex;

            

            if (nombre == null || nombre.length == 0 || /^\s+$/.test(nombre)) {

                alert("Debe ingresar un nombre")
                return false;

            } else if (apellido == null || apellido.length == 0 || /^\s+$/.test(apellido)) {

                alert("Debe ingresar apellido")
                return false;

            } else if (edad == null || edad.length == 0 || /^\s+$/.test(edad)) {

                alert("Debe ingresar edad")
                return false;

            } else if (!/^\d*$/.test(edad)) {

                alert("Edad debe ser un número entero")
                return false;

            } else if (equipo == 0) {

                alert("Debe seleccionar equipo")
                return false;

            } 

            
            
            else {

                alert("Se creará el jugador:" + nombre + " " + apellido);
                return true;
            }


        }


    
    </script>




</asp:Content>

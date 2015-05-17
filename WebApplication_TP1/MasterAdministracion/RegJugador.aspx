<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegJugador.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegJugador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

	<div id="divJugador">

		<ol class="breadcrumb">
			<li><a href="#">Inicio</a></li>
			<li><a href="#">Administración</a></li>
			<li class="active">Crear Jugador</li>
		</ol>
		<h3>Crear Jugador:</h3>
		<div class="container-fluid fill">
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
				</div>
				<div class="col-md-4">
					<asp:TextBox ID="txtNombre" runat="server" class="form-control"/>
				</div>
				<div class="col-md-5">
					<asp:RequiredFieldValidator ID="valReqTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
				</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<asp:Label ID="lblApellido" runat="server" Text="Apellido:"/>
					</div>
					<div class="col-md-4">
						<asp:TextBox ID="txtApellido" runat="server" class="form-control"/>
					</div>
					<div class="col-md-5">
						<asp:RequiredFieldValidator ID="valReqTxtApellido" runat="server" ErrorMessage="El apellido es Obligatorio" ControlToValidate="txtApellido" Display="Static"  Enabled="true" ValidationGroup="ValidacionOblig" EnableClientScript="True" CssClass="label label-danger"></asp:RequiredFieldValidator>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<asp:Label ID="lblEdad" runat="server" Text="Edad:"/>
					</div>
					<div class="col-md-4">
						<asp:TextBox ID="txtEdad" runat="server" class="form-control"/>
					</div>
					<div class="col-md-5">
						<asp:RequiredFieldValidator ID="valReqTxtEdad" runat="server" ErrorMessage="La edad es Obligatoria" ControlToValidate="txtEdad" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger">
						</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="valIntTxtEdad" runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtEdad" ErrorMessage="La edad debe ser un número entero" ValidationGroup="ValidacionOblig" EnableClientScript="True" CssClass="label label-danger"/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<asp:Label ID="lblEquipo" runat="server" Text="Equipo:"/>
					</div>
					<div class="col-md-4">
						<asp:DropDownList ID="ddlEquipos" runat="server" class="form-control">
							<asp:ListItem Text="Seleccione Equipo" Value="0"/>
							<asp:ListItem Text="Equipo 1" Value="Equipo 1"/>
							<asp:ListItem Text="Equipo 2" Value="Equipo 2"/>
						</asp:DropDownList>
					</div>
					<div class="col-md-4">
						<asp:RequiredFieldValidator InitialValue="0" ID="reqValDdlEquipos" Display="Static" ControlToValidate="ddlEquipos" runat="server" ErrorMessage="Debe elegir un equipo" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
					</div>
				</div>
				<br/>
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<asp:Button ID="btnCrear" runat="server" Text="Crear" onclick="btnCrear_Click" class="btn btn-default"/>
					</div>
				</div>
		</div>
	</div>
</asp:Content>

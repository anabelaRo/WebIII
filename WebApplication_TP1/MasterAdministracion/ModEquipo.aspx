<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="ModEquipo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.ModEquipo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">
	<div id="divEquipo">
		<ol class="breadcrumb">
			<li>Inicio</li>
			<li>Administración</li>
			<li>Equipos</li>
			<li class="active">Modificar Equipo</li>
		</ol>
		<h3>Modificar Equipo:</h3>
		<div class="container-fluid fill">
			<div runat="server" id="modificar1">
				<div class="row">
					<h4>Seleccione el equipo que desea modificar y presione 'Siguiente'</h4>
				</div>
				<div class="row">
					<div class="col-md-1">
						<asp:Label ID="Label1" runat="server" Text="Equipo:"/>
					</div>
					<div class="col-md-2">
						<div class="col-md-3">
							<asp:DropDownList ID="ddlEquipos" runat="server" class="form-control">
							</asp:DropDownList>
							<asp:Button ID="btnSig" runat="server" Text="Siguiente" onclick="btnSig_Click" class="btn btn-default"/>
						</div>
					</div>
				</div>
			</div>
			<br />
			<div runat="server" id="modificar2">
				<div class="row">
					<div class="col-md-3">
						<asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
					</div>
					<div class="col-md-4">
						<asp:TextBox ID="txtNombre" runat="server" class="form-control"/>
					</div>
					<div class="col-md-5">
						<asp:RequiredFieldValidator ID="reqValTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" CssClass="label label-danger"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ValidationExpression="^.{1,250}$" ID="longTxtNombre" runat="server" ErrorMessage="El nombre no puede superar los 250 caracteres." ControlToValidate="txtNombre"></asp:RegularExpressionValidator>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<asp:Label ID="lblTorneo" runat="server" Text="Torneo:"/>
					</div>
					<div class="col-md-4">
						<asp:DropDownList ID="ddlTorneos" runat="server" class="form-control">
	<%--						<asp:ListItem Text="Seleccione Torneo" Value=""/>
							<asp:ListItem Text="Torneo 1" Value="Torneo 1"/>
							<asp:ListItem Text="Torneo 2" Value="Torneo 2"/>--%>
						</asp:DropDownList>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<asp:Label ID="lblMonto" runat="server" Text="Monto abonado:"/>
					</div>
					<div class="col-md-4">
						<asp:TextBox ID="txtMonto" runat="server" class="form-control"/>
					</div>
					<div class="col-md-5">
						<asp:RequiredFieldValidator ID="reqValtxtMonto" runat="server" ErrorMessage="El monto es Obligatorio" ControlToValidate="txtMonto" Display="Static" EnableClientScript="true" Enabled="true" CssClass="label label-danger"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="ValNumTxtMonto" ControlToValidate="txtMonto" 
						runat="server" ErrorMessage="El monto debe ser numérico" Display="Dynamic" ValidationExpression="(?!^0*$)(?!^0*\.0*$)^\d{1,18}(\.\d{1,2})?$" EnableClientScript="True" CssClass="label label-danger"></asp:RegularExpressionValidator>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-4 col-md-offset-4">
						<asp:Button ID="btnModificar" runat="server" Text="Modificar" onclick="btnModificar_Click" class="btn btn-default"/>
						<br /><br />
						<asp:Label ID="lblEquModificado" runat="server" Text=""></asp:Label> 
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

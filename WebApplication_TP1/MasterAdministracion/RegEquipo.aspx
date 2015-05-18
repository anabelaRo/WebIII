<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegEquipo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegEquipo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

	<div id="divEquipo">
		<ol class="breadcrumb">
			<li>Inicio</li>
			<li>Administración</li>
			<li class="active">Crear Equipo</li>
		</ol>
		<h3>Crear Equipo:</h3>
		<div class="container-fluid fill">
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
				</div>
				<div class="col-md-4">
					<asp:TextBox ID="txtNombre" runat="server" class="form-control"/>
				</div>
				<div class="col-md-5">
					<asp:RequiredFieldValidator ID="reqValTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblTorneo" runat="server" Text="Torneo:"/>
				</div>
				<div class="col-md-4">
					<asp:DropDownList ID="ddlTorneos" runat="server" class="form-control">
						<asp:ListItem Text="Seleccione Torneo" Value=""/>
						<asp:ListItem Text="Torneo 1" Value="Torneo 1"/>
						<asp:ListItem Text="Torneo 2" Value="Torneo 2"/>
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
					<asp:RequiredFieldValidator ID="reqValtxtMonto" runat="server" ErrorMessage="El monto es Obligatorio" ControlToValidate="txtMonto" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="ValNumTxtMonto" ControlToValidate="txtMonto" 
					runat="server" ErrorMessage="El monto debe ser numérico" Display="Dynamic" ValidationExpression="(?!^0*$)(?!^0*\.0*$)^\d{1,18}(\.\d{1,2})?$" ValidationGroup="ValidacionOblig" EnableClientScript="True" CssClass="label label-danger"></asp:RegularExpressionValidator>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<asp:Button ID="btnCrear" runat="server" Text="Crear" onclick="btnCrear_Click" class="btn btn-default"/>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

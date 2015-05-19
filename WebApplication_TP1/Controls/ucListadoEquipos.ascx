<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucListadoEquipos.ascx.cs" Inherits="WebApplication_TP1.Controls.ucListadoEquipos" %>

<div id="divListEquipos">
	<ol class="breadcrumb">
		<li>Inicio</li>
		<li>Resumen de Equipos</li>
		<li class="active">Listado de Equipos</li>
	</ol>
	<h3>Listado de Equipos:</h3>
    <div class="row">
		<div class="col-sm-8">
		</div>
		<div class="col-sm-4">
			<asp:Label ID="lblTorneosActivos" runat="server" Text="Mostrar sólo torneos activos "/>
			<asp:CheckBox ID="chkTorneosActivos" runat="server" />
		</div>
	</div>
	<br />
	<div class="row">
		<div class="col-sm-5">Equipo</div>
		<div class="col-sm-4">Torneo en el que participa</div>
		<div class="col-sm-3">Estado del torneo</div>
	</div>
	<br />
	<div class="row">
		<div class="col-sm-5">Equipo 1</div>
		<div class="col-sm-4">Torneo 3</div>
		<div class="col-sm-3">Activo</div>
	</div>
	<div class="row">
		<div class="col-sm-5">Equipo 2</div>
		<div class="col-sm-4">Torneo 2</div>
		<div class="col-sm-3">Activo</div>
	</div>
	<div class="row">
		<div class="col-sm-5">Equipo 3</div>
		<div class="col-sm-4">Torneo 2</div>
		<div class="col-sm-3">Activo</div>
	</div>
	<div class="row">
		<div class="col-sm-5">Equipo 4</div>
		<div class="col-sm-4">Torneo 1</div>
		<div class="col-sm-3">Inactivo</div>
	</div>
	<div class="row">
		<div class="col-sm-5">Equipo 5</div>
		<div class="col-sm-4">Torneo 3</div>
		<div class="col-sm-3">Activo</div>
	</div>
</div>
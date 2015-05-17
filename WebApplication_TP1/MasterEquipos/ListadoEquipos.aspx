<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEquipos/Equipos.master" AutoEventWireup="true" CodeBehind="ListadoEquipos.aspx.cs" Inherits="WebApplication_TP1.MasterEquipos.ListadoEquipos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentEquiposCenterMed" runat="server">

	<div id="divListEquipos">
		<ol class="breadcrumb">
			<li><a href="#">Inicio</a></li>
			<li><a href="#">Resumen de Equipos</a></li>
			<li class="active">Listado de Equipos</li>
		</ol>
		<h3>Listado de Equipos:</h3>
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
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="EliEquipo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.EliEquipo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">
	<div id="divEquipo">
		<ol class="breadcrumb">
			<li>Inicio</li>
			<li>Administración</li>
			<li>Equipos</li>
			<li class="active">Eliminación de Equipo</li>
		</ol>
		<h3>Eliminar Equipo:</h3>
		<div class="container-fluid fill">
			<div class="row">
				<h4>Seleccione el equipo que desea eliminar</h4>
			</div>
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblEquipo" runat="server" Text="Equipo:"/>
				</div>
				<div class="col-md-4">
					<div class="col-md-4">
						<asp:DropDownList ID="ddlEquipos" runat="server" class="form-control">
						</asp:DropDownList>
					</div>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<asp:Button ID="btnBajaEquipo" runat="server" Text="Eliminar" onclick="btnBajaEquipo_Click" class="btn btn-default" OnClientClick="return confirm('¿Esta seguro que desea eliminar este equipo? Todos sus jugadores serán eliminados también');return false;"/>
				</div>
				<br /><br /><br />
				<asp:Label ID="lblEquEliminado" runat="server" Text=""></asp:Label>
			</div>
		</div>
	</div>
</asp:Content>

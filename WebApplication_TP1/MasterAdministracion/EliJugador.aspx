<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="EliJugador.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.EliJugador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">
	<div id="divJugador">
		<ol class="breadcrumb">
			<li>Inicio</li>
			<li>Administración</li>
			<li>Jugadores</li>
			<li class="active">Eliminación de Jugador</li>
		</ol>
		<h3>Eliminar Jugador:</h3>
		<div class="container-fluid fill">
			<div class="row">
				<h4>Seleccione el jugador que desea eliminar</h4>
			</div>
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblJugador" runat="server" Text="Jugador:"/>
				</div>
				<div class="col-md-4">
					<div class="col-md-4">
						<asp:DropDownList ID="ddlJugadores" runat="server" class="form-control">
						</asp:DropDownList>
					</div>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<asp:Button ID="btnBajaJugador" runat="server" Text="Eliminar" onclick="btnBajaJugador_Click" class="btn btn-default" OnClientClick="return confirm('¿Esta seguro que desea eliminar este jugador?');return false;"/>
				</div>
					<br /><br /><br />
					<asp:Label ID="lblJugEliminado" runat="server" Text=""></asp:Label>
			</div>
		</div>
	</div>
</asp:Content>

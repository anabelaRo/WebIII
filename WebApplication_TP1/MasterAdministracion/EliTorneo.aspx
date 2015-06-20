<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="EliTorneo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.ModTorneo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

<div id="divTorneo">
		<ol class="breadcrumb">
			<li>Inicio</li>
			<li>Administración</li>
            <li>Torneos</li>
			<li class="active">Eliminación de Torneo</li>
		</ol>
		<h3>Eliminar Torneo:</h3>
		<div class="container-fluid fill">
			<div class="row">
				
					<h4>Seleccione el torneo que desea eliminar</h4>
			    
			
			</div>
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblTorneo" runat="server" Text="Torneo:"/>
				</div>
				<div class="col-md-4">
					
                    <div class="col-md-4">
					<asp:DropDownList ID="ddlTorneos" runat="server" class="form-control">

					</asp:DropDownList>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<asp:Button ID="btnCrear" runat="server" Text="Eliminar" onclick="btnCrear_Click"  class="btn btn-default"
                    OnClientClick="return confirm('¿Esta seguro que desea eliminar este torneo?');return false;"/>
                    </div> <br />	
                    <br />	<br /><asp:Label ID="lblTorEliminado" runat="server" Text=""></asp:Label>
				
			</div>
		</div>
	</div>

</asp:Content>

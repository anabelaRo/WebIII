<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegTorneo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegTorneo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

	<div id="divTorneo">
		<ol class="breadcrumb">
			<li><a href="#">Inicio</a></li>
			<li><a href="#">Administración</a></li>
			<li class="active">Crear Torneo</li>
		</ol>
		<h3>Crear Torneo:</h3>
		<div class="container-fluid fill">
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
				</div>
				<div class="col-md-4">
					<asp:TextBox ID="txtNombre" runat="server" class="form-control"/>
				</div>
				<div class="col-md-5">
					<asp:RequiredFieldValidator ID="reqValTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" EnableClientScript="True" ControlToValidate="txtNombre" Display="Static" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="Label1" runat="server" Text="Estado:"/>
				</div>
				<div class="col-md-4">
					<asp:RadioButtonList ID="radBtnLstEstado" runat="server">
						<asp:ListItem Selected="True"> Activo</asp:ListItem>
						<asp:ListItem> Inactivo</asp:ListItem>
					</asp:RadioButtonList>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<asp:Button ID="btnCrear" runat="server" Text="Crear" onclick="btnCrear_Click"  class="btn btn-default"/>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

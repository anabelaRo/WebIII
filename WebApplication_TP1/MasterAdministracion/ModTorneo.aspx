<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="ModTorneo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.ModTorneo1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">
	<div id="divTorneo">
		<ol class="breadcrumb">
			<li>Inicio</li>
			<li>Administración</li>
			<li>Torneos</li>
			<li class="active">Modificación de Torneo</li>
		</ol>
		<h3>Modificar Torneo:</h3>
		<div class="container-fluid fill">

			<div runat="server" id="modificar1">
				<div class="row">
					<h4>Seleccione el torneo que desea modificar y presione 'Siguiente'</h4>
				</div>
				<div class="row">
					<div class="col-md-1">
						<asp:Label ID="lblTorneo" runat="server" Text="Torneo:"/>
					</div>
					<div class="col-md-2">
						<div class="col-md-3">
							<asp:DropDownList ID="ddlTorneos" runat="server" class="form-control">
							</asp:DropDownList>
							<asp:Button ID="btnSig" runat="server" Text="Siguiente" onclick="btnSig_Click"  class="btn btn-default"/>
						</div>
					</div>
				</div>
			</div>
			<br />
			<div runat="server" id="modificar2">
				<div class="row">
					<div class="col-md-1">
						<asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
					</div>
					<div class="col-md-2">
						<asp:TextBox ID="txtNombre" runat="server" class="form-control"/>
					</div>
					<div class="col-md-3">
						<asp:RequiredFieldValidator ID="reqValTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" EnableClientScript="True" ControlToValidate="txtNombre" Display="Static" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1">
						<asp:Label ID="Label1" runat="server" Text="Estado:"/>
					</div>
					<div class="col-md-2">
						<asp:RadioButtonList ID="radBtnLstEstado" runat="server">
							<asp:ListItem Text ="Activo" Value= "True" Selected="True"> Activo</asp:ListItem>
							<asp:ListItem Text ="Activo" Value= "False" > Inactivo</asp:ListItem>
							<%--Agrego los values para insertar en la bbdd--%>
						</asp:RadioButtonList>
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col-md-4 col-md-offset-4"><br />
						<asp:Button ID="Button1" runat="server" Text="Modificar" onclick="btnModificar_Click" class="btn btn-default"/>
						<br />	<br />
						<asp:Label ID="lblTorModificado" runat="server" Text=""></asp:Label>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

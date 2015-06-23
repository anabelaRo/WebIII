<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegTorneo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegTorneo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

	<div id="divTorneo">
		<ol class="breadcrumb">
			<li>Inicio</li>
			<li>Administración</li>
            <li>Torneos</li>
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
					<asp:RegularExpressionValidator ValidationExpression="^.{1,250}$" ID="longTxtNombre" runat="server" ErrorMessage="El nombre no puede superar los 250 caracteres." ControlToValidate="txtNombre"></asp:RegularExpressionValidator>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="Label1" runat="server" Text="Estado:"/>
				</div>
				<div class="col-md-4">
					<asp:RadioButtonList ID="radBtnLstEstado" runat="server">
						<asp:ListItem Text ="Activo" Value= "True" Selected="True"> Activo</asp:ListItem>
						<asp:ListItem Text ="Activo" Value= "False" > Inactivo</asp:ListItem>
                        <%--Agrego los values para insertar en la bbdd--%>
					</asp:RadioButtonList>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<asp:Button ID="btnCrear" runat="server" Text="Crear" onclick="btnCrear_Click"  class="btn btn-default"/>
                    <br />	<br /><asp:Label ID="lblTorCreado" runat="server" Text=""></asp:Label>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

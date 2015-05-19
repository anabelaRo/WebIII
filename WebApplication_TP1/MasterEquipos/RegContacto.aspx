<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEquipos/Equipos.master" AutoEventWireup="true" CodeBehind="RegContacto.aspx.cs" Inherits="WebApplication_TP1.MasterEquipos.RegContacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentEquiposCenterMed" runat="server">
	<div id="divContacto">
	    <ol class="breadcrumb">
			<li>Inicio</li>
			<li>Resumen de Equipos</li>
			<li class="active">Contacto</li>
		</ol>
		<h3>Contacto:</h3>
		<div class="container-fluid fill">
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblNombre" runat="server" Text="Nombre completo:" for="txtNombre"/>
				</div>
				<div class="col-md-4">
					<asp:TextBox ID="txtNombre" runat="server" class="form-control"/>
				</div>
				<div class="col-md-5">
					<asp:RequiredFieldValidator ID="valReqTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblMail" runat="server" Text="E-mail:" for="txtMail"/>
				</div>
				<div class="col-md-4">
					<asp:TextBox ID="txtMail" runat="server" class="form-control"/>
				</div>
				<div class="col-md-5">
					<asp:RequiredFieldValidator ID="valReqTtxtMail" runat="server" ErrorMessage="El mail es Obligatorio" ControlToValidate="txtMail" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator id="valRegExpTtxtMail" runat ="server" ErrorMessage="Ingrese un email correcto" ControlToValidate="txtMail" ValidationExpression="\S+@\S+\.\S+\w+" EnableClientScript="true" CssClass="label label-danger"></asp:RegularExpressionValidator>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<asp:Label ID="lblComentario" runat="server" Text="Comentario:" for="txtAreaComentario"/>
				</div>
				<div class="col-md-4">
					<asp:TextBox id="txtAreaComentario" TextMode="multiline" Columns="20" Rows="3" runat="server"/>
				</div>
				<div class="col-md-5">
					<asp:RequiredFieldValidator ID="valReqAreaComentario" runat="server" ErrorMessage="El comentario es Obligatorio" ControlToValidate="txtAreaComentario" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" CssClass="label label-danger"></asp:RequiredFieldValidator>
				</div>
			</div>
			<br />
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<asp:Button ID="btnCrear" runat="server" Text="Enviar mensaje" onclick="btnRegistrar_Click" class="btn btn-default"/>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEquipos/Equipos.master" AutoEventWireup="true" CodeBehind="RegContacto.aspx.cs" Inherits="WebApplication_TP1.MasterEquipos.RegContacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentEquiposCenterMed" runat="server">

	<div id="divContacto">

		<ol class="breadcrumb">
			<li><a href="#">Inicio</a></li>
			<li><a href="#">Resumen de Equipos</a></li>
			<li class="active">Contacto</li>
		</ol>

		<h3>Contacto:</h3>

		<div class="form-group">
			<asp:Label ID="lblNombre" runat="server" Text="Nombre completo:" for="txtNombre"/>
			<asp:TextBox ID="txtNombre" runat="server" class="form-control"/>
		</div>
		<%-- [AR] Nombre obligatorio --%>       
		<asp:RequiredFieldValidator ID="valReqTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>

		<br />

		<div class="form-group">
			<asp:Label ID="lblMail" runat="server" Text="E-mail:" for="txtMail"/>
			<asp:TextBox ID="txtMail" runat="server" class="form-control"/>
		</div>
		<%-- [AR] Mail obligatorio Y con formato de mail--%>       
		<asp:RequiredFieldValidator ID="valReqTtxtMail" runat="server" ErrorMessage="El mail es Obligatorio" ControlToValidate="txtMail" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
		<asp:RegularExpressionValidator id="valRegExpTtxtMail" runat ="server" ErrorMessage="Ingrese un email correcto" ControlToValidate="txtMail" ValidationExpression="\S+@\S+\.\S+\w+" EnableClientScript="true"></asp:RegularExpressionValidator>

		<br/>

		<div class="form-group">
			<asp:Label ID="lblComentario" runat="server" Text="Comentario:" for="txtAreaComentario"/>
			<asp:TextBox id="txtAreaComentario" TextMode="multiline" Columns="20" Rows="3" runat="server"/>
		</div>
		<%-- [AR] comentario obligatorio --%>   
		<asp:RequiredFieldValidator ID="valReqAreaComentario" runat="server" ErrorMessage="El comentario es Obligatorio" ControlToValidate="txtAreaComentario" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>  
		<br /><br />
        <asp:Button ID="Button1" runat="server" Text="Enviar mensaje" onclick="btnRegistrar_Click" class="btn btn-default"/>
	</div>
</asp:Content>

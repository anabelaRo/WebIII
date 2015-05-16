<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegTorneo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegTorneo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

	<div id="divTorneo">
		<ol class="breadcrumb">
			<li><a href="#">Inicio</a></li>
			<li><a href="#">Administración</a></li>
			<li class="active">Crear Torneo</li>
		</ol>
		<h3>Crear Torneo:</h3>

		<asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
		<asp:TextBox ID="txtNombre" runat="server" class="btn btn-default"/>
		<%--[AR] Nombre obligatorio--%>
		<asp:RequiredFieldValidator ID="reqValTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" EnableClientScript="True" ControlToValidate="txtNombre" Display="Static" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
		<br/>
		<div class="checkbox">
			<asp:Label ID="Label1" runat="server" Text="Activo:"/>
			<asp:CheckBox ID="chkEstado" runat="server"/>
		</div>
		<br/>
		<br/>
        <asp:Button ID="Button1" runat="server" Text="Crear" onclick="btnCrear_Click"  class="btn btn-default"/>
	</div>

</asp:Content>

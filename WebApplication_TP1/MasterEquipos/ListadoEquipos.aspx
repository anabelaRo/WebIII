<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEquipos/Equipos.master" AutoEventWireup="true" CodeBehind="ListadoEquipos.aspx.cs" Inherits="WebApplication_TP1.MasterEquipos.ListadoEquipos" %>
<%@ Register src="~/Controls/ucListadoEquipos.ascx" tagname="ucListadoEquipos" tagprefix="ucL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentEquiposCenterMed" runat="server">
	<ucL:ucListadoEquipos ID="abcdooter" runat="server" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegTorneo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegTorneo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

    <h3>Crear Torneo:</h3>

    <div id="divTorneo">
            
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
        <asp:TextBox ID="txtNombre" runat="server"/>
                
        <br/>
                
        <asp:Label ID="lblEstado" runat="server" Text="Activo:"/>
        <asp:CheckBox ID="chkEstado" runat="server"/>
            
        <br/>
        <br/>
      
        <asp:Button ID="btnCrear" runat="server" Text="Crear"/>

    </div>

</asp:Content>

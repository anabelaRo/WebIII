<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegEquipo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegEquipo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">
    
    <h3>Crear Equipo:</h3>
        
    <div id="divEquipo">
        
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
        <asp:TextBox ID="txtNombre" runat="server"/>
                
        <br/>

        <asp:Label ID="lblTorneo" runat="server" Text="Torneo:"/>
        <asp:TextBox ID="txtTorneo" runat="server"/>
                
        <br/>

        <asp:Label ID="lblMonto" runat="server" Text="Monto abonado:"/>
        <asp:TextBox ID="txtMonto" runat="server"/>
                
        <br/>
        <br/>

        <asp:Button ID="btnCrear" runat="server" Text="Crear"/>

    </div>

</asp:Content>

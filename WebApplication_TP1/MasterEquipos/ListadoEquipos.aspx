<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEquipos/Equipos.master" AutoEventWireup="true" CodeBehind="ListadoEquipos.aspx.cs" Inherits="WebApplication_TP1.MasterEquipos.ListadoEquipos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentEquiposCenterMed" runat="server">
    
    <h3>Listado de Equipos:</h3>
        
    <div id="divListEquipos"> 
        
        <asp:Label ID="lblEquipos" runat="server" Text="Equipos Registrados"/>
            <asp:BulletedList ID="listEquipos" runat="server">
            <asp:ListItem>Equipo 1</asp:ListItem>  
            <asp:ListItem>Equipo 2</asp:ListItem>  
            <asp:ListItem>Equipo 3</asp:ListItem>  
        </asp:BulletedList>

        <asp:Label ID="lblTorneos" runat="server" Text="Torneo en que participa"></asp:Label>
        <asp:BulletedList ID="listTorneos" runat="server">
            <asp:ListItem>Torneo 1</asp:ListItem>  
            <asp:ListItem>Torneo 2</asp:ListItem>  
            <asp:ListItem>Torneo 3</asp:ListItem>  
        </asp:BulletedList>

        <asp:Label ID="lblEstados" runat="server" Text="Estado de torneo"/>
        <asp:CheckBox ID="chkEstados" runat="server"/>

        <asp:BulletedList ID="listEstados" runat="server">
            <asp:ListItem>Activo</asp:ListItem>  
            <asp:ListItem>Inactivo</asp:ListItem>  
            <asp:ListItem>Activo</asp:ListItem>  
        </asp:BulletedList>

    </div> 

</asp:Content>

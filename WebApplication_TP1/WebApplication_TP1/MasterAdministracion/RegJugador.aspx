<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegJugador.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegJugador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">
    
    <h3>Crear Jugador:</h3>
        
    <div id="divJugador">
    
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
        <asp:TextBox ID="txtNombre" runat="server"/>
                
        <br/>

        <asp:Label ID="lblApellido" runat="server" Text="Apellido:"/>
        <asp:TextBox ID="txtApellido" runat="server"/>
                
        <br/>

        <asp:Label ID="lblEdad" runat="server" Text="Edad:"/>
        <asp:TextBox ID="txtEdad" runat="server"/>
                
        <br/>

        <asp:Label ID="lblEquipo" runat="server" Text="Equipo:"/>
        <asp:DropDownList ID="ddlEquipos" runat="server">
            <asp:ListItem Text="Seleccione Equipo" Value="0"/>
            <asp:ListItem Text="Equipo 1" Value="Equipo 1"/>
            <asp:ListItem Text="Equipo 2" Value="Equipo 2"/>
        </asp:DropDownList>
                
        <br/>
        <br/>
                
        <asp:Button ID="btnCrear" runat="server" Text="Crear" />

    </div>

</asp:Content>

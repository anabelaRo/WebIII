<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEquipos/Equipos.master" AutoEventWireup="true" CodeBehind="RegContacto.aspx.cs" Inherits="WebApplication_TP1.MasterEquipos.RegContacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentEquiposCenterMed" runat="server">
    
    <h3>Registrar Contacto:</h3>
        
    <div id="divContacto">
        
        <asp:Label ID="lblNombre" runat="server" Text="Nombre completo:"/>
        <asp:TextBox ID="txtNombre" runat="server"/>
                
        <br/>

        <asp:Label ID="lblMail" runat="server" Text="E-mail:"/>
        <asp:TextBox ID="txtMail" runat="server"/>
                
        <br/>

        <asp:Label ID="lblComentario" runat="server" Text="Comentario:"/>
        <asp:TextBox id="txtAreaComentario" TextMode="multiline" Columns="20" Rows="3" runat="server"/>

        <br/>
        <br/>

        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar"/>
            
    </div>

</asp:Content>

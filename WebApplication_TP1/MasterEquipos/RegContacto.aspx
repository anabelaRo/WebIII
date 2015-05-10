<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEquipos/Equipos.master" AutoEventWireup="true" CodeBehind="RegContacto.aspx.cs" Inherits="WebApplication_TP1.MasterEquipos.RegContacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentEquiposCenterMed" runat="server">
    
    <h3>Contacto:</h3>
        
    <div id="divContacto">
        
        <asp:Label ID="lblNombre" runat="server" Text="Nombre completo:"/>
        <asp:TextBox ID="txtNombre" runat="server"/>
       <%-- [AR] Nombre obligatorio --%>       
       <asp:RequiredFieldValidator ID="valReqTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
 
        <br/>

        <asp:Label ID="lblMail" runat="server" Text="E-mail:"/>
        <asp:TextBox ID="txtMail" runat="server"/>
        <%-- [AR] Mail obligatorio Y con formato de mail--%>       
        <asp:RequiredFieldValidator ID="valReqTtxtMail" runat="server" ErrorMessage="El mail es Obligatorio" ControlToValidate="txtMail" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator id="valRegExpTtxtMail" runat ="server" ErrorMessage="Ingrese un email correcto" ControlToValidate="txtMail" ValidationExpression="\S+@\S+\.\S+\w+" ></asp:RegularExpressionValidator>

        <br/>

        <asp:Label ID="lblComentario" runat="server" Text="Comentario:"/>
        <asp:TextBox id="txtAreaComentario" TextMode="multiline" Columns="20" Rows="3" runat="server"/>
        <%-- [AR] comentario obligatorio --%>   
        <asp:RequiredFieldValidator ID="valReqAreaComentario" runat="server" ErrorMessage="El comentario es Obligatorio" ControlToValidate="txtAreaComentario" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>  
        <br/>
        <br/>

         <asp:Button ID="btnRegistrar" runat="server" Text="Crear" onclick="btnRegistrar_Click" OnClientClick="valCamposRegContacto();"/>
   
    </div>

</asp:Content>

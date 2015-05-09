<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegEquipo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegEquipo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">
    
    <h3>Crear Equipo:</h3>
        
    <div id="divEquipo">
        
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
        <asp:TextBox ID="txtNombre" runat="server"/>
        <asp:RequiredFieldValidator ID="reqValTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
         
                
        <br/>
       <%-- [AR] El torneo tiene que se combo--%>
        <asp:Label ID="lblTorneo" runat="server" Text="Torneo:"/>
        <asp:DropDownList ID="ddlTorneos" runat="server">
            <asp:ListItem Text="Seleccione Torneo" Value="0"/>
            <asp:ListItem Text="Torneo 1" Value="Torneo 1"/>
            <asp:ListItem Text="Torneo 2" Value="Torneo 2"/>
        </asp:DropDownList>

  <%-- [AR] Es opcional el torneo
   <asp:RequiredFieldValidator InitialValue="0" ID="reqValDdlTorneos" Display="Static" ControlToValidate="ddlTorneos" runat="server" ErrorMessage="Debe eligir un torneo" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig">
    </asp:RequiredFieldValidator>--%>

        <br/>

        <asp:Label ID="lblMonto" runat="server" Text="Monto abonado:"/>
        <asp:TextBox ID="txtMonto" runat="server"/>
        <asp:RequiredFieldValidator ID="reqValtxtMonto" runat="server" ErrorMessage="El monto es Obligatorio" ControlToValidate="txtMonto" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="ValNumTxtMonto" ControlToValidate="txtMonto" 
        runat="server" ErrorMessage="El monto debe ser numérico" Display="Dynamic" ValidationExpression="(?!^0*$)(?!^0*\.0*$)^\d{1,18}(\.\d{1,2})?$" ValidationGroup="ValidacionOblig"></asp:RegularExpressionValidator>           
        <br/>
        <br/>

        <asp:Button ID="btnCrear" runat="server" Text="Crear" onclick="btnCrear_Click"/>

    </div>

</asp:Content>

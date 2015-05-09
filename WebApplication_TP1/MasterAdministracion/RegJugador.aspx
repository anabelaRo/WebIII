<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegJugador.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegJugador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">
    
    <h3>Crear Jugador:</h3>
        
    <div id="divJugador">
    
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
        <asp:TextBox ID="txtNombre" runat="server"/>
        <asp:RequiredFieldValidator ID="valReqTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
                 
        <br/>

        <asp:Label ID="lblApellido" runat="server" Text="Apellido:"/>
        <asp:TextBox ID="txtApellido" runat="server"/>
        <asp:RequiredFieldValidator ID="valReqTxtApellido" runat="server" ErrorMessage="El apellido es Obligatorio" ControlToValidate="txtApellido" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
                 
        <br/>

        <asp:Label ID="lblEdad" runat="server" Text="Edad:"/>
        <asp:TextBox ID="txtEdad" runat="server"/>
        <asp:RequiredFieldValidator ID="valReqTxtEdad" runat="server" ErrorMessage="La edad es obligatoria" ControlToValidate="txtEdad" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
        [<%--AR]Lo obligamos a que la edad sea tipo entero--%>
        <asp:CompareValidator ID="valIntTxtEdad" runat="server" Operator="DataTypeCheck" Type="Integer" 
        ControlToValidate="txtEdad" ErrorMessage="La edad debe ser un número entero" ValidationGroup="ValidacionOblig" />         
        <br/>

        <asp:Label ID="lblEquipo" runat="server" Text="Equipo:"/>
        <asp:DropDownList ID="ddlEquipos" runat="server">
            <asp:ListItem Text="Seleccione Equipo" Value="0"/>
            <asp:ListItem Text="Equipo 1" Value="Equipo 1"/>
            <asp:ListItem Text="Equipo 2" Value="Equipo 2"/>
        </asp:DropDownList>

      <asp:RequiredFieldValidator InitialValue="0" ID="reqValDdlEquipos" Display="Static" ControlToValidate="ddlEquipos" runat="server" ErrorMessage="Debe elegir un equipo" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig">
    </asp:RequiredFieldValidator>
             <br/>
        <br/>
                
        <asp:Button ID="btnCrear" runat="server" Text="Crear" 
            onclick="btnCrear_Click" />

    </div>

</asp:Content>

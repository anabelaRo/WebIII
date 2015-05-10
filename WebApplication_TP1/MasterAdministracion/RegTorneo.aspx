<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdministracion/Administracion.master" AutoEventWireup="true" CodeBehind="RegTorneo.aspx.cs" Inherits="WebApplication_TP1.MasterAdministracion.RegTorneo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentAdministracionCenterMed" runat="server">

	<h3>Crear Torneo:</h3>

	<div id="divTorneo">
		<asp:Label ID="lblNombre" runat="server" Text="Nombre:"/>
		<asp:TextBox ID="txtNombre" runat="server"/>
		<%--[AR] Nombre obligatorio--%>
		<asp:RequiredFieldValidator ID="reqValTxtNombre" runat="server" ErrorMessage="El nombre es Obligatorio" ControlToValidate="txtNombre" Display="Static" EnableClientScript="true" Enabled="true" ValidationGroup="ValidacionOblig" ></asp:RequiredFieldValidator>
		<br/>
		<div class="checkbox">
			<asp:Label ID="Label1" runat="server" Text="Activo:"/>        
			<asp:CheckBox ID="chkEstado" runat="server"/>
       <%-- [AR] VERIFICAR SI NO VA MEJOR CON DDL
        <asp:Label ID="lblEstado" runat="server" Text="Estado:"/>
        <asp:DropDownList ID="ddlEstado" runat="server" >
            <asp:ListItem Text="Activo" Value="1"/>
            <asp:ListItem Text="Inactivo" Value="0"/>
        </asp:DropDownList>--%>
		</div>
		<br/>
		<br/>
		<asp:Button ID="btnCrear" runat="server" Text="Crear" onclick="btnCrear_Click" OnClientClick="prueba();"/>
      
	</div>

    <script>

        function prueba() {

            var txtName = '<%= txtNombre.ClientID %>'
            alert("lala");
            alert(txtName);

            var textbox = document.getElementById('<%= txtNombre.ClientID %>').value;




            if (textbox == null || textbox.length == 0 || /^\s+$/.test(textbox)) {

                alert("Debe ingresar un nombre")
                return false;

            } else {

                alert("Se creará el torneo:" + textbox);
                return true;
            }


        }


    
    </script>
</asp:Content>

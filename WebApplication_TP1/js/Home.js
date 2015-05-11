function valCamposRegEquipo() 
{
    var vNombre = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_txtNombre');
    var vMonto = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_txtMonto');

    var mensaje;

    if (validaCampoNombre(vNombre) == false) 
    {
        return false;
    }
    else if (validaVacio(vMonto.value) == false) 
    {
        mensaje = "Campo obligatorio";

        mostrarError(vMonto, mensaje);

        return false;
    }
    else if (isNaN(vMonto.value)) 
    {
        mensaje = "Campo numerico";

        mostrarError(vMonto, mensaje);

        return false;
    }
}

function mostrarError(campo, mensaje) 
{
    campo.value = mensaje; //campo.placeholder = mensaje; --> No funciona en Ie 9, que raro, no? HDP!!!!!!!!!!
    campo.style.backgroundColor = '#FC9C9C';
    campo.focus();
}


function valCamposRegJugador() {
    var vNombre = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_txtNombre');
    var vApellido = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_txtApellido');

    var vEdad = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_txtEdad');
    var vEquipo = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_ddlEquipos');

    if (validaCampoNombre(vNombre) == false) {

        return false;
    }

    else if (validaVacio(vApellido.value) == false) {
        alert("Debe completar el campo (Apellido)");

        vApellido.focus();

        return false;
    }
    else if (validaVacio(vEdad.value) == false) {
        alert("Debe completar el campo (Edad)");

        vEdad.focus();

        return false;
    }

    else if (!/^\d*$/.test(vEdad.value)) {

        alert("El campo (Edad) debe ser entero");

        vEdad.focus();

        return false;
    }

    else if ((vEquipo.selectedIndex) == 0) 
   {

        alert("Debe seleccionar un equipo");

       vEquipo.focus();

       return false;
   }

}

function valCamposRegTorneo() {
    var vNombre = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_txtNombre');

    if (validaCampoNombre(vNombre) == false) {
      
    
        return false;
    }
}


function valCamposRegContacto() {

    var vNombre = document.getElementById('ContentHomeCenterMed_ContentEquiposCenterMed_txtNombre');
    var vMail = document.getElementById('ContentHomeCenterMed_ContentEquiposCenterMed_txtMail');
    var vComentario = document.getElementById('ContentHomeCenterMed_ContentEquiposCenterMed_txtAreaComentario');
    var emailReg = /^([\da-z_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
    if (validaCampoNombre(vNombre) == false) {

        return false;
    }
    else if (validaVacio(vMail.value) == false) {
        alert("Debe completar el campo (Mail)");

        vMail.focus();

        return false;
    }
    else if( !emailReg.test(vMail.value) ) {
      
        alert("El mail ingresado es incorrecto");

        vMail.focus();

        return false;
    }
    else if (validaVacio(vComentario.value) == false) {
        alert("Debe ingresar un comentario");

        vComentario.focus();

        return false;
    }
}

function validaVacio(campo) {
    for (i = 0; i < campo.length; i++) {
        if (campo.charAt(i) != " ") {
            return true
        }
    }

    return false
}

//[AR]como todos los form tienen Nombre, se crea función genérica
function validaCampoNombre(vNombre) {

    if (vNombre.value == null || vNombre.value.length == 0 || /^\s+$/.test(vNombre.value)) //Valida que no sea null, 0 o espacios en blanco
    { 

        /*alert("Debe completar el campo (Nombre)");

        vNombre.focus();*/

        var mensaje = "Campo obligatorio";

        mostrarError(vNombre, mensaje);

        return false;
    } 
    else 
    {
        return true
    }
}



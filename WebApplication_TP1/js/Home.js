function valCamposRegEquipo() 
{
    var vNombre = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_txtNombre');
    var vTorneo = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_ddlTorneos');
    var vMonto = document.getElementById('ContentHomeCenterMed_ContentAdministracionCenterMed_txtMonto');

    if (validaVacio(vNombre.value) == false) 
    {
        alert("Debe completar el campo (Nombre)");

        vNombre.focus();

        return false;
    }
    else if (validaVacio(vTorneo.value) == false) 
    {
        alert("Debe Seleccionar un Torneo");

        vTorneo.focus();

        return false;
    }
    else if (validaVacio(vMonto.value) == false) 
    {
        alert("Debe completar el campo (Monto)");

        vMonto.focus();

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
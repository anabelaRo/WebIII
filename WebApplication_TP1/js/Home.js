$(document).ready(function () {
    var data = "{" +
                    "'incluirDeTorneosInactivos':'false'" +
                "}";

    enviarDatosEquipos(data);
});

function recuperarEquipos(act) {

    var data = "{" +
                    "'incluirDeTorneosInactivos':'" + act.checked + "'" +
                "}";

    enviarDatosEquipos(data);
}

function enviarDatosEquipos(data) {
    $.support.cors = true;

    $.ajax({
        type: "POST",                                       //Tipo de llamada
        url: "/WebServices/servicio.asmx/ObtenerEquipos",   //Dirección del WebMethod, o sea, Página.aspx/Método
        data: data,                                         //Parámetros para pasarle al método 
        async: true,                                        //Por defecto es true
        contentType: "application/json; charset=utf-8",     //Tipo de contenido
        dataType: "json",                                   //Tipo de datos
        success: function (response) {                      //Función a la cual llamar cuando se pudo llamar satisfactoriamente al método
            if (response.d.length > 0) {                    //Este chequeo es para compatibilidad con versiones anteriores a 3.5 del framework
                mostarEquipos(response.d);                  //donde un servicio retornaba sin el .d
            }
         },
        error: function (xhr, status, error) {              //Cualquier error del lado servidor sale por este evento
            debugger;
            alert(xhr.responseText);
        }
    });
}

function mostarEquipos(equipos) {
    var cuerpo_Div = "";
    var desActivo = "";

    $.each(equipos, function (index, obj) {

        if (obj.Activo)
            desActivo = "Activo";
        else
            desActivo = "Inactivo";

        cuerpo_Div = cuerpo_Div + "<div class='row'>" +
                                        "<div class='col-sm-5'>" + obj.NombreEquipo + "</div>" +
                                        "<div class='col-sm-4'>" + obj.NombreTorneo + "</div>" +
                                        "<div class='col-sm-3'>" + desActivo + "</div>" +
                                  "</div>";
    });

    document.getElementById("list_Equipos").innerHTML = cuerpo_Div;  
}
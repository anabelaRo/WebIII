function recuperarEquipos() {
    /*var data = "{" +
                    "'idProvincia':'" + $('#ddlProvincia').val() + "'" +
                "}";
    consultarLocalidadesDeUnaProvincia(data);*/

    //Falta recuperar el valor el Check:
    //alert($('#ContentHomeCenterMed_ContentEquiposCenterMed_abcdooter_chkTorneosActivos'));

    var data = "{" +
                    "'incluirDeTorneosInactivos:true'" +
                "}";

    enviarDatosEquipos(data);
}

function enviarDatosEquipos(data) {
    $.support.cors = true;

    $.ajax({
        type: "POST",
        url: "/WebServices/servicio.asmx/ObtenerEquipos",
        data: data,
        async: true, //por defecto es true
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            //Este chequeo es para compatibilidad con versiones anteriores a 3.5 del framework
            //donde un servicio retornaba sin el .d
            //vaciarLocalidades();

            if (response.d.length > 0) {
                mostarEquipos(response.d);
            }
        },
        error: function (xhr, status, error) {//cualquier error del lado servidor sale por este evento
            debugger;
            alert(xhr.responseText);
        }
    });

}

/*function vaciarLocalidades() {
    $('#ddlLocalidad').find('option').remove().end();
}*/

function mostarEquipos(localidades) {

    $.each(localidades, function (index, obj) {
        $('#ContentHomeCenterMed_ContentEquiposCenterMed_abcdooter_ddlLocalidad').append(
                        $('<option></option>').val(obj.Id).html(obj.Nombre)
                    );
    });
}
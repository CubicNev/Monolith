$(document).ready(inicio);




function inicio() {

    $("#login").validate({
        rules: {
            usuario: {
                required: true
            },
            contrasenia: {
                required: true
            }
        },
        messages: {
            usuario: {
                required: "Llene el campo"
            },
            contrasenia: {
                required: "Llene el campo"
            }
        }
    });
}
;



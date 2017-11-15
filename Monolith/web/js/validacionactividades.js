$(document).ready(inicio);

function inicio() {
    $.validator.addMethod("letras", function (value, element) {
        return this.optional(element) || /^[a-z]+$/i.test(value);
    }, "Ponga letras solamente");

    $("#actividadform").validate({
        rules: {
            Titulo: {
                required: true
            },
           FormaEntrega: {
                required: true
            },
            FechaEntrega: {
                required: true
            },
            Descripcion: {
                required: true
            }
        },
        messages: {
            Titulo: {
                required: "Llene el campo"
            },
            FormaEntrega: {
                required: "Llene el campo"
            },
            FechaEntrega: {
                required: "Llene el campo"
            },
           Descripcion: {
                required: "Llene el campo"
            }
        }
    });
}
;

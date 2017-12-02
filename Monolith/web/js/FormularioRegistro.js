
$(document).ready(inicio);




function inicio() {
    $.validator.addMethod("letras", function (value, element) {
        return this.optional(element) || /^[a-z]+$/i.test(value);
    }, "Ponga letras solamente");

    $("#registro").validate({
        rules: {
            nombre: {
                required: true
            },
            institucion: {
                required: true
            },
            estudios: {
                required: true
            },
            edad: {
                required: true,
                digits: true
            },
            pais: {
                required: true,
                letras:true
            },
            direccion: {
                required: true
            },
            correo: {
                required: true,
                email: true
            },
            contra: {
                required: true,
                maxlength:8
            }
        },
        messages: {
            nombre: {
                required: "Llene el campo"
            },
            institucion: {
                required: "Llene el campo"
            },
            estudios: {
                required: "Llene el campo"
            },
            edad: {
                required: "Llene el campo",
                digits: "Ponga un numero valido"
            },
            pais: {
                required: "Llene el campo"
            },
            direccion: {
                required: "Llene el campo"
            },
            correo: {
                required: "Llene el campo",
                email: "De un correo valido"
            },
            contra: {
                required: "Llene el campo",
                maxlength:"Contraseña de 8 caracteres"
            }
        }
    });
}
;











       
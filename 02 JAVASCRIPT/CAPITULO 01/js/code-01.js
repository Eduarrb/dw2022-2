/* ⚡⚡ TIPOS DE DATOS ⚡⚡ */
/* 
    STRINGS => CADEDA DE TEXTO O DE CARACTERES
    NUMBERS => 
    BOOLEANS => TRUE O FALSE
    OBJETOS => ARRAYS, "OBJECTS", STRINGS
*/

/* 💥💥 STRINGS 💥💥 */
// palabras reservdas para declarar variables o constantes
// var, let o const
// var nombre = 'Juan';
// var nombre = "Juan";
let nombre = 'Juan';
let apellido = 'Smith';

// 💥💥 CONCATENAR
// console.log(nombre, apellido);
// console.log(nombre + apellido);
// console.log(nombre + ' ' + apellido);
let fullname = nombre + ' ' + apellido;
console.log(fullname);

// 💥💥 PROPIEDADES => (ESTO SOLO PASA EN LOS OBJETOS);
console.log(fullname.length);
console.log('hola'.length);

/*
function prueba(){
    var x = 'hola';
    if(true){
        // AMBITO DE LOS BLOQUES => SCOPES
        var x = 'hola a todos';
        console.log(x);
    }
    console.log(x);
}
prueba();

function prueba2(){
    let y = 'bienvenido(a)';
    if(true){
        let y = 'bienvenidos todos';
        console.log(y);
    }
    console.log(y);
}
prueba2();
*/

// 💥💥 INDICES
// EMPIEZA DESDE CERO Y ESTO ESTA RELACIONADO A LOS ARRAYS
console.log(nombre[0]);
console.log(apellido[4]);
let nombre2 = "esteeslnombremaslargodelmundo";
console.log(nombre2[nombre2.length - 1]);

// JSmith@continental.edu.pe
let correo = '@continental.edu.pe';
let correoJuan = nombre[0] + apellido + correo;
console.log(correoJuan);

// 💥💥 METODOS
console.log(correoJuan.toLowerCase());
console.log(correoJuan.toUpperCase());
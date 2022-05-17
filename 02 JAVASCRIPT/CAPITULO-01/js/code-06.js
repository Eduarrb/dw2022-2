/* ⚡⚡ FUNCIONES - FUNCTIONS ⚡⚡ */

// saludar();

var bloque = document.querySelector('.bloque1');
// FUNCIONES DE EXPRESION
function saludar(){
    // PROCESOS DE EJECUCION AL SER LLAMADOS
    console.log('hola a todos');
    bloque.innerHTML = 'hola a todos';
}
saludar();

const fechaNacimiento = 1990;

function obtenerEdad(anioNacimiento){
    // pienselo como una burbuja de ejecucion
    // scope o ambito de bloques o ejecuciones
    let edad = 2022 - anioNacimiento;
    console.log(edad);
}

obtenerEdad(fechaNacimiento);

function suma(a, b){
    let res = a + b;
    // console.log(res);
    // console.log('palabra');
    return ['a', 'b', 23, 100];
}
suma(2, 6);
// flotando el return
// let respuesta = suma(2,6.2);
// console.log(respuesta);

console.log(`el resultado es ${suma(2,3)}`);
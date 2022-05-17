const nombre = 'Jaimito';

// ⚡⚡ FUNCION DE EXPRESION
function saludar(persona){
    return `Bienvenido ${persona}`;
}

let saludo = saludar(nombre);
console.log(saludo);

/* ⚡⚡ ARROW FUNCTIONS ⚡⚡ */

const saludar2 = (persona) => {
    return `Bienvenido querido(a) ${persona}`;
}
let saludo2 = saludar2('Georgina');
console.log(saludo2);

console.log('***************************');

// 💥💥 CUANDO SOLO TENGAN UN PARAMETRO
// multiX2(78);

// const multiX2 = num => {
//     let res = num * 2;
//     console.log(res);
// }
// multiX2(9); 

// 💥💥 TENER PRESENTE QUE DIRECTAMENTE SE EJECUTA EL RETURN
const multiX2 = num => num * 2;
let res2 = multiX2(45); // 90
console.log(res2);


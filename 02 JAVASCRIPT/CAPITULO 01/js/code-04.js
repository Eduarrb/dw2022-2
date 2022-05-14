/* 💥💥 ARRAYS 💥💥 */
// CONJUNTO DE ELEMENTOS
// LISTAS
// SON UN TIPO DE OBJETO
const numeros = [12, 23432, 34543, 1, 234323242, 324324];
console.log(numeros);
const matriz = [[1,2],[23,5],[56,34]];
const arrayMixto = [1, 'Jaimito', {edad: 23}, true, 20.56];

// ⚡⚡ INDICES
console.log(numeros[1]);
console.log(numeros[5]);
console.log(numeros[numeros.length - 1]);
console.log('*******************************');

console.log(`el array numeros tiene ${numeros.length} elementos`);
console.log(matriz[2]);
console.log(arrayMixto[2]);
console.log('*******************************');
// ⚡⚡ FOOR LOOPS
const personajes = ['joshi', 'mario', 'luigui', 'ryo', 'ken', 'guile', 'chun-li', 'blanka'];
//          8           8 < 8           2                 
for(let contador = 0; contador < personajes.length; contador++){
    // ejecucion del codigo
    console.log(personajes[contador]);
}
console.log('******************************');

let plantilla = ''; // joshi

// for(let c = 0; c < personajes.length; c++){
//     // plantilla = plantilla + personajes[c];
//     // plantilla += personajes[c];
//     plantilla += `<h3>${personajes[c]}</h3>`;
// }

// console.log(plantilla);

const bloque1 = document.querySelector('.bloque1');
// console.log(bloque1);
// bloque1.innerHTML = plantilla;

// ⚡⚡ FOREACH
personajes.forEach(function(el, indice){
    // console.log(el);
    console.log(indice);
    plantilla += `<p>${indice + 1}. ${el}</p>`;
});

console.log(plantilla);
bloque1.innerHTML = plantilla;

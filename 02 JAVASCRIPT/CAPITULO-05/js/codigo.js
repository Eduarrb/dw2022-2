// 1 ⚡⚡ CONCEPTOS
// ⚡⚡ EJECUCIONES ASINCRONAS Y SINCRONAS ⚡⚡

let num = 10;
console.log(num);
let num2 = 32424;
console.log(num + num2);
function suma(num1, num2){
    console.log(num1 + num2);
}

suma(3,8);

// ⚡⚡ EJECUCIONES ASINCRONAS
setInterval(() => {
    console.log('esta es una ejecucion asincrona');
}, 1000);

console.log('esta tambien es una ejecucion sincrona');

// ⚡⚡ JSON -> JAVASCRIPT OBJECT NOTATION

// fetch("data/personas.json").then(respuesta => console.log(respuesta));
fetch("https://api.discogs.com/database/search?q=Nirvana&token=SSyKMrSbhlFUPtNIuLgFampouFVxFkNQiPbTtuVe").then(respuesta => console.log(respuesta.json()));
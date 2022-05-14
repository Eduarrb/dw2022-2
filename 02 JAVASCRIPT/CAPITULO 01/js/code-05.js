/* ⚡⚡ CONDICIONALES Y BOOLEANOS ⚡⚡ */
// TRUE
// FALSE

// 💡💡 OPERADORES DE COMPARCION
// IGUALDAD SIMPLE -> ==
// 12 == '12' -> true -> hoisting
// IGUALDAD ESTRICTA -> ===
// 12 === '12' -> false comparar dos tipos de datos iguales
// <, <=, >, >=, !=, !==
let condicion = false;

if (condicion) {
  // debe ser verdadero para que se ejecute
  console.log("la condicion fue verdadera");
} else {
  // se ejecuta si la condicion es falsa
  console.log("la condicion fue falsa");
}

console.log("****************************");
let num = 23;

if (num == "23") {
  console.log("son iguales");
} else {
  console.log("son diferentes");
}

console.log("*****************");

if (num > 2) {
  console.log(`el número ${num} es mayor que 2`);
}

// ⚡⚡ WHILE
let nombres = ["ken", "ryo", "blanca", "chun-li"];
let plantilla = "";
let i = 0;
while (i < nombres.length) {
  console.log(nombres[i]);
  // 💥💥😭😭 hasta esta linea de codigo hubieramos iniciado un bucle infinito
  plantilla += `<p>${nombres[i]}</p>`;
  i++;
}
const bloquesito = document.querySelector('#bloquesito');
bloquesito.innerHTML = plantilla;
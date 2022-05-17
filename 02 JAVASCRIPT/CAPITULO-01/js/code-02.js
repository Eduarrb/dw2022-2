/* 💥💥 NUMBERS 💥💥 */
// let num = 10;
// console.log(num);
// let num1 = '10';
// console.log(num1);

/* HOISTING */

const pi = 3.1416;
let radio = 11.5;
console.log(pi, radio);

// 💥💥 OPERACIONES MATEMATICAS
let areaCirculo = pi * radio ** 2;
console.log(areaCirculo);
let suma = 10 + Number('30');
let suma2 = 10 + parseInt('50');
let suma3 = 10 + +'60';
console.log(suma);
console.log(suma2);
console.log(suma3);

// 💥💥 RESIDUO
let num4 = 10;
console.log(num4 % 2); // 0
console.log(num4 % 3); // 1
console.log(num4 % 4); // 2

num4 = num4 + 1;
console.log(num4); // 11
num4++; // => num4 + 1
console.log(num4) // 12

num4 = num4 + 10;
console.log(num4); // 22
num4 += 10; // num4 = num4 + 10
console.log(num4); // 32
num4 **= 2; // 
console.log(num4);

// 💥💥 METODOS
let num5 = 10.58538445;
console.log(num5);
console.log(num5.toFixed(2));

// ⚡⚡ MATH
// redondeando
let rep1 = Math.floor(num5);
console.log(rep1);
let rep2 = Math.ceil(num5);
console.log(rep2);
let rep3 = Math.round(num5);
console.log(rep3);

let aleatorio = Math.random(); // 0 a 0.999999... lo mas cercano a 1
console.log(aleatorio);
let ale2 = Math.floor(Math.random() * 10) + 1;
console.log(ale2);
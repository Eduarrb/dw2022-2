/* 💥💥 TEMPLATE STRINGS 💥💥 */
const nombre = 'Jaimito';
const apellido = 'Perez';
let edad = 33;

// Hola soy Jaimito Perez y tengo 33 años
const personaData = 'Hola, soy ' + nombre + ' ' + apellido + ' y tengo ' + edad + ' años';
console.log(personaData);
const perData = `Hola, soy ${nombre} ${apellido} y tengo ${edad} años`;
console.log(perData);

let html = `
    <h1>Hola, soy ${nombre}</h1>
    <h2>Tengo ${edad} años de edad</h2>
`;

console.log(html);
const bloque1 = document.querySelector('#bloquesito');
console.log(bloque1);
bloque1.innerHTML = html;
/* ⚡⚡ OBJECTS ⚡⚡ */

const libro = {
    // caracteristicas y propiedades
    // key - value pair
    titulo: '100 años de soledad',
    fechaPubli: 1979,
    genero: 'Drama',
    precio: 100.99,
    paginas: 765,
    editorial: 'Navarrete',
    autor: 'Gabriel Garcia Marquez',
    revison: ['Fulano 1', 'Fulano 2'],
    stock: true
}

// console.log(libro);
console.log(libro.titulo);
console.log(libro.revison[1]);
console.log(libro.stock);

libro.personajes = ['Amaranta', 'Arcadio'];
libro.caracteristicas = {
    color: 'blanco',
    tipoPapel: 'bond'
}
libro.fechaPubli = 1983;
console.log(libro);

console.log('*****************************');

// ⚡⚡ METODOS -> son funciones dentro de un objeto.
const usuario = {
    nombre: 'Ryo',
    correo: 'ryo@capcom.com',
    cel: '968656325147',
    edad: 31,
    saludar: function(){
        console.log(`Bienvenido a la pagina ${usuario.nombre}`);
    },
    obtenerEdad: function(fechaNac){
        return 2022 - fechaNac;
    },
    suma: () => {
        console.log('sumaste algo');
    }
}

console.log(usuario);
// document.querySelector()
usuario.saludar();
let edad = usuario.obtenerEdad(1990);
console.log(edad);
usuario.suma();

console.log('**********************************');

const personaje = {
    nombre: 'Joshi',
    correo: 'joshi@nintendo.com',
    skills: ['saltar', 'comer tortugas', 'sacar lengua', 'correr', 'escupir fuego'],
    imprimirNombre: function(){
        // console.log(personaje.nombre);
        console.log(this.nombre) // this hace referencia al objeto personaje
    },
    saltar: function(){
        console.log(`${this.nombre} puede saltar 20 mt`);
    },
    saludar: () => {
        /*
         */
        console.log(`${this.nombre} te dice hola`); // 💥💥 "no funciona" this en arrow functions
    },
    imprimirSkills: function(){
        // imprimir todas las habilidades en un bloque de html
        let html = '';
        this.skills.forEach(function(el){
            // console.log(el);
            html += `<p>${el}</p>`
        });
        console.log(html);
        document.querySelector('.bloque1').innerHTML = html;
    }
    
}

let variable = 1; // variable global

console.log(this); // this hace referencia al objeto donde se le este ejecutando - objeto global. // hace referencia al objeto window
personaje.imprimirNombre();
personaje.saltar();
personaje.saludar();
personaje.imprimirSkills();
// console.log("funcionaaaaaaaaaaaaaaaaaaa");
// var, let, const

// let num = 12;
// const usuario1 = 'eduardo';
// usuario1 = 'jose'; // 💥💥💥 no se puede volver asignar un valor a una constante

//int num1 = 1233242;
// string nombre = str('Eduardo');

// ⚡⚡ DOM ⚡⚡ 
// DOCUMENT OBJECT MODEL
// id, class, nombre etiqueta
const nav = document.querySelector('.header__nav');
// console.log(nav);
window.addEventListener('scroll', function(){
    // console.log('hiciste scroll');
    // console.log(window.scrollY)
    if(window.scrollY > 0){
        // console.log('es mayor a cero');
        nav.classList.add('active');
    } else {
        // console.log('es igual a 0');
        nav.classList.remove('active');
    }
});
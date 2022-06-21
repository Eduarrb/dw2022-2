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
const navPort = document.querySelector('.headerPort__nav');
// console.log(nav);

// 🔥🔥 FUNCIONALIDAD DEL MENU CON SCROLL 🔥🔥
window.addEventListener('scroll', function(){
    // console.log('hiciste scroll');
    // console.log(window.scrollY)
    if(window.scrollY > 0){
        // console.log('es mayor a cero');
        nav.classList.add('active');
        navPort.classList.add('active');
    } else {
        // console.log('es igual a 0');
        nav.classList.remove('active');
        navPort.classList.remove('active');
    }
});

// 🔥🔥 FUNCIONALIDAD DE CLICK PARA MOSTRAR EL MENU EN RESPONSIVE 🔥🔥
const btnMenu = document.querySelector('.header__nav__contenedor--btn');
const btnMenuPort = document.querySelector('.headerPort__nav__contenedor--btn');
const menu = document.querySelector('.header__nav__contenedor__menu');
const menuPort = document.querySelector('.headerPort__nav__contenedor__menu');

btnMenu.addEventListener('click', function(){
    // console.log('hiciste click');
    menu.classList.toggle('showMenu');
})

btnMenuPort.addEventListener('click', function(){
    // console.log('hiciste click');
    menuPort.classList.toggle('showMenu');
})

// console.log("funcionaaaaaaaaaaaaaaaaaaa");
// var, let, const

// let num = 12;
// const usuario1 = 'eduardo';
// usuario1 = 'jose'; // ๐ฅ๐ฅ๐ฅ no se puede volver asignar un valor a una constante

//int num1 = 1233242;
// string nombre = str('Eduardo');

// โกโก DOM โกโก 
// DOCUMENT OBJECT MODEL
// id, class, nombre etiqueta
const nav = document.querySelector('.header__nav');
// console.log(nav);

// ๐ฅ๐ฅ FUNCIONALIDAD DEL MENU CON SCROLL ๐ฅ๐ฅ
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

// ๐ฅ๐ฅ FUNCIONALIDAD DE CLICK PARA MOSTRAR EL MENU EN RESPONSIVE ๐ฅ๐ฅ
const btnMenu = document.querySelector('.header__nav__contenedor--btn');
const menu = document.querySelector('.header__nav__contenedor__menu');

btnMenu.addEventListener('click', function(){
    // console.log('hiciste click');
    menu.classList.toggle('showMenu');
})

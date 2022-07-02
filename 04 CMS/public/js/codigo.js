let nav = '';
if(document.querySelector('.header__nav')){
    nav = document.querySelector('.header__nav');
} else {
    nav = document.querySelector('.headerPort__nav');
}

// 🔥🔥 FUNCIONALIDAD DEL MENU CON SCROLL 🔥🔥
window.addEventListener('scroll', function(){
    if(window.scrollY > 0){
        nav.classList.add('active');
    } else {
        nav.classList.remove('active');
    }
});

// 🔥🔥 FUNCIONALIDAD DE CLICK PARA MOSTRAR EL MENU EN RESPONSIVE 🔥🔥
if(document.querySelector('.header__nav__contenedor--btn')){
    const btnMenu = document.querySelector('.header__nav__contenedor--btn');
    const menu = document.querySelector('.header__nav__contenedor__menu');
    btnMenu.addEventListener('click', function(){
        menu.classList.toggle('showMenu');
    })

}
if(document.querySelector('.headerPort__nav__contenedor--btn')){
    const btnMenuPort = document.querySelector('.headerPort__nav__contenedor--btn');
    const menuPort = document.querySelector('.headerPort__nav__contenedor__menu');
    
    
    btnMenuPort.addEventListener('click', function(){
        menuPort.classList.toggle('showMenu');
    })
}

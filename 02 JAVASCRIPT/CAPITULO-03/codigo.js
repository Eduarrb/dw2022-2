const btn = document.querySelector('button');
const popupCaja = document.querySelector('.popup-caja');
const btnClose = document.querySelector('.popup-close');


btn.addEventListener('click', function(){
    // console.log('funciona');
    popupCaja.classList.add('mostrarCaja');
});

btnClose.addEventListener('click', () => {
    popupCaja.classList.remove('mostrarCaja');
});

window.addEventListener('keyup', e => {
    console.log(e);
    if(e.key === 'Escape'){
        popupCaja.classList.remove('mostrarCaja');
    }
});

popupCaja.addEventListener('click', function(e){
    // console.log(e)
    if(e.target.classList.contains('popup-caja')){
        popupCaja.classList.remove('mostrarCaja');
    }
});
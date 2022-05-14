const tareaInput = document.querySelector('.tarea');
const btn = document.querySelector('button');
const alerta = document.querySelector('.alerta');
const ul = document.querySelector('ul');

btn.addEventListener('click', () => {
    // console.log('hiciste click');
    // console.log(tareaInput.value);
    if(tareaInput.value === ''){
        alerta.textContent = 'Debes ingresar una tarea 💥💥💥';
    } else {
        // console.log('tu tarea fue ingresada');
        ul.insertAdjacentHTML('beforeend', tareaInput.value);
    }
});
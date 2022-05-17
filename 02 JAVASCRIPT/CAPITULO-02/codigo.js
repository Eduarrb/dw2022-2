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
        alerta.innerHTML = '';
        let li = `<li>${tareaInput.value}</li>`;
        ul.insertAdjacentHTML('beforeend', li);
        tareaInput.value = '';
    }
});

// const listaTareas = document.querySelectorAll('li');
// console.log(listaTareas);
// for(let i = 0; i < listaTareas.length; i++){
//     console.log(listaTareas[i]);
// }

// listaTareas.forEach(el => {
//     // console.log(el);
//     el.addEventListener('click', () => {
//         // console.log('hiciste click en el la tarea');
//         el.remove();
//     });
// });

ul.addEventListener('click', evento => {
    // console.log('hiciste click');
    // console.log(evento)
    if(evento.target.tagName === 'LI'){
        console.log('hiciste click en una tarea');
        evento.target.remove();
    } else {
        console.log('hiciste click en el UL');
    }
})
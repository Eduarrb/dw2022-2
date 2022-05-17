const form = document.querySelector('.quiz-form');

const respCorrectas = ['A', 'A', 'A', 'A'];

const resultado = document.querySelector('.result');

form.addEventListener('submit', e => {
    e.preventDefault();
    // console.log(form.q1.value);
    // console.log(form.q2.value);
    // console.log(form.q3.value);
    // console.log(form.q4.value);

    const respUsuario = [form.q1.value, form.q2.value, form.q3.value, form.q4.value];

    // console.log(respUsuario);
    let puntaje = 0;
    respUsuario.forEach(function(valor, indice){
        // console.log(indice, valor);
        if(valor === respCorrectas[indice]){
            console.log(`La respuesta de la pregunta ${indice + 1} es correcta`);
            // puntaje = puntaje + 25;
            puntaje += 25;

        } else {
            console.log(`La respuesta de la pregunta ${indice + 1} es incorrecta 💥💥`);
        }
    });
    // console.log(puntaje);
    resultado.classList.remove('d-none');
    resultado.querySelector('span').textContent = `${puntaje}%`;
});
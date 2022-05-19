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
    // resultado.querySelector('span').textContent = `${puntaje}%`;

    let posicionEjeY = scrollY; // 315
    // console.log(posicionEjeY);
    // setInterval(function(){
    //     console.log('se repite cada segundo');
    // }, 5000);
    let animacionTop = setInterval(() => {
        console.log('funciona');
        if(posicionEjeY <= 0){
            console.log('ya es menor o igual a 0 en el eje Y');
            clearInterval(animacionTop);
        } else {
            scrollTo(0, posicionEjeY);
            posicionEjeY -= 10;
        }
    }, 1);

    let sumapuntajeTotal = 0;
    let velocidad = 20;

    let timer = setInterval(function(){
        resultado.querySelector('span').textContent = `${sumapuntajeTotal}%`;
        if(sumapuntajeTotal === puntaje){ // 75
            clearInterval(timer);
        } else {
            sumapuntajeTotal++;
        }
    }, velocidad);
});
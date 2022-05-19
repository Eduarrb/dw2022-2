const btn = document.querySelector('.btn');
const artista = document.querySelector('.search');
const discoBloque = document.querySelector('.section__right__contenido__resultado__discografia');


const renderDisco = function(disco){
    const plantilla = `
        <div class="section__right__contenido__resultado__discografia__item">
            <h3 class="section__right__contenido__resultado__discografia__item--titulo">${disco.title}</h3>
            <div class="section__right__contenido__resultado__discografia__item__left">
                <img src="${disco.cover_image}" alt="">
                <div class="section__right__contenido__resultado__discografia__item__left__info">
                    <p>Año: <span>${disco.year}</span></p>
                    <p>País: <span>${disco.country}</span></p>
                </div>
            </div>
        </div>
    `;
    discoBloque.insertAdjacentHTML('beforeend', plantilla);
}

const obtenerJson = async function(artista){
    try {
        // await => esperar
        const data = await fetch(`https://api.discogs.com/database/search?q=${artista}&type=master&artist=${artista}&format=album&token=SSyKMrSbhlFUPtNIuLgFampouFVxFkNQiPbTtuVe`);
        // console.log(data);
        const resultado = await data.json();
        console.log(resultado.results);
        discoBloque.innerHTML = '';
        // let plantilla = '';
        resultado.results.forEach(el => {
            // console.log(el.country);
            // plantilla += `
            //     <div class="section__right__contenido__resultado__discografia__item">
            //         <h3 class="section__right__contenido__resultado__discografia__item--titulo">${el.title}</h3>
            //         <div class="section__right__contenido__resultado__discografia__item__left">
            //             <img src="${el.cover_image}" alt="">
            //             <div class="section__right__contenido__resultado__discografia__item__left__info">
            //                 <p>Año: <span>${el.year}</span></p>
            //                 <p>País: <span>${el.country}</span></p>
            //             </div>
            //         </div>
            //     </div>
            // `;
            renderDisco(el);
            // artista.value = '';
            
        });
        // console.log(plantilla);
        // discoBloque.innerHTML = plantilla;
    } catch (error) {
        console.log(error);
    }
}

btn.addEventListener('click', function(){
    // console.log('funciona');
    // console.log(artista.value);
    obtenerJson(artista.value);
    artista.value = '';
});


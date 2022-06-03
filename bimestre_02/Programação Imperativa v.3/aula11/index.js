// 1. Começamos a partir de nossa variedade de filmes, que tínhamos o seguinte:

let filmes = [
    'star wars',
    'totoro',
    'rocky',
    'pulp fiction',
    'la vida es bella',
];
let filmesAnimacoes = [
    'Toy Story',
    'Procurando Nemo',
    'Kung-fu Panda',
    'Wally',
    'Fortnite',
];

function convertirAMayusculas(array) {
    for (let i = 0; i < array.length; i++) {
        array[i] = array[i].toUpperCase();
    }
    return array;
}

let filmesMaiuscula = convertirAMayusculas(filmes);

// 2 - Agora precisamos modificar afunçãode passagemde elemento() que nos permite adicionar o conteúdo de nossa matriz de filme animado à matriz de filme original.

function pasajeDeElementos(array1, array2) {
    let tamanhoArray = array2.length;
    for (let i = 0; i < tamanhoArray; i++) {
        array1.push(array2.pop().toUpperCase());
    }
    return array1;
}

// 3 - Para este ponto se você decidiu trabalhar em um arquivo diferente em lugar para modificar o anterior, lembre-se que tivemos um infiltrado dentro de nossos filmes de animação que tivemos que tirar e salvar em outra variável antes de fazer a passagem de elementos de um array para outro!

let todosFilmes = pasajeDeElementos(
    convertirAMayusculas(filmes),
    filmesAnimacoes
);

function remover(array, erase) {
    for (let i = 0; i < array.length; i++) {
        if (array[i] == erase) {
            array.splice(i, 1);
        }
    }
    return array;
}

console.log(remover(todosFilmes, 'FORTNITE'));

// 4 - Finalmente, devemos modificar nossa função comparadora para os filmes como temos feito até agora.

const asiaScores = [8, 10, 6, 9, 10, 6, 6, 8, 4];
const euroScores = [8, 10, 6, 8, 10, 6, 7, 9, 5];

function compararCalificaciones(asia, europa) {
    let comparacionesAsiaEuropa = [];
    for (let i = 0; i < asia.length; i++) {
        comparacionesAsiaEuropa[i] = asia[i] === europa[i];
    }

    return comparacionesAsiaEuropa;
}

console.log(compararCalificaciones(asiaScores, euroScores));

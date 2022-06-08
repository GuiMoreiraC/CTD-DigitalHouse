const ParticipanteA = [5, 8, 4, 9, 5];
const ParticipanteB = [8, 7, 8, 6, 8];
const ParticipanteC = [7, 5, 10, 8, 3];

function pontuacaoMedia(array) {
    let soma = 0;
    for (let i = 0; i < array.length; i++) {
        soma += array[i];
    }
    return soma / array.length;
}

function pontuacaoMaior(array) {
    let maiorPontuacao = 0;
    for (let i = 0; i < array.length; i++) {
        if (maiorPontuacao < array[i]) {
            maiorPontuacao = array[i];
        }
    }
    return maiorPontuacao;
}

/*
function competicao01(array1, array2, array3) {
    let maiorMedia = 0;
    let maiorEtip = 0;
    let parMaiorMedia = '';
    let parEtip = '';

    if (maiorMedia < pontuacaoMedia(array1)) {
        maiorMedia = pontuacaoMedia(array1);
        parMaiorMedia = 'Participante A';
    }
    if (maiorMedia < pontuacaoMedia(array2)) {
        maiorMedia = pontuacaoMedia(array2);
        parMaiorMedia = 'Participante B';
    }
    if (maiorMedia < pontuacaoMedia(array3)) {
        maiorMedia = pontuacaoMedia(array3);
        parMaiorMedia = 'Participante C';
    }

    if (maiorEtip < pontuacaoMaior(array1)) {
        maiorEtip = pontuacaoMaior(array1);
        parEtip = 'Participante A';
    }
    if (maiorEtip < pontuacaoMaior(array2)) {
        maiorEtip = pontuacaoMaior(array2);
        parEtip = 'Participante B';
    }
    if (maiorEtip < pontuacaoMaior(array3)) {
        maiorEtip = pontuacaoMaior(array3);
        parEtip = 'Participante C';
    }

    console.log(`
    Parabéns Participantes!!!

    Melhor média: O ${parMaiorMedia} com a pontuação : ${maiorMedia}
    Maior e-tip: O ${parEtip} com a pontuação : ${maiorEtip}
    `);
}
*/

// Nova solução usando array.

function competicao02(array1, array2, array3) {
    let parArray = [array1, array2, array3];
    let participante = ['Participante A', 'Participante B', 'Participante C'];

    let maiorMedia = 0;
    let maiorEtip = 0;

    let parMaiorMedia = '';
    let parEtip = '';

    for (let i = 0; i < parArray.length; i++) {
        if (maiorMedia < pontuacaoMedia(parArray[i])) {
            maiorMedia = pontuacaoMedia(parArray[i]);
            parMaiorMedia = participante[i];
        }
        if (maiorEtip < pontuacaoMaior(parArray[i])) {
            maiorEtip = pontuacaoMaior(parArray[i]);
            parEtip = participante[i];
        }
    }

    return `
    Parabéns Participantes!!!

    Melhor média: O ${parMaiorMedia} com a pontuação : ${maiorMedia}
    Maior e-tip: O ${parEtip} com a pontuação : ${maiorEtip}
    `;
}

// console.log(competicao01(ParticipanteA, ParticipanteB, ParticipanteC));
console.log(competicao02(ParticipanteA, ParticipanteB, ParticipanteC));

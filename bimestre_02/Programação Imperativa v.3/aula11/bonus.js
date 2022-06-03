const ParticipanteA = [5, 8, 4, 9, 5];
const ParticipanteB = [8, 7, 8, 6, 8];
const ParticipanteC = [7, 5, 10, 8, 3];

function pontuacaoMedia(array) {
    let soma = 0;
    for (let i = 0; i < array.length; i++) {
        soma = soma + array[i];
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

function competicao(array1, array2, array3) {
    let maiorMedia = 0;
    let maiorEtip = 0;
    let ParticipanteMM = '';
    let ParticipanteME = '';

    if (maiorMedia < pontuacaoMedia(array1)) {
        maiorMedia = pontuacaoMedia(array1);
        ParticipanteMM = 'Participante A';
    }
    if (maiorMedia < pontuacaoMedia(array2)) {
        maiorMedia = pontuacaoMedia(array2);
        ParticipanteMM = 'Participante B';
    }
    if (maiorMedia < pontuacaoMedia(array3)) {
        maiorMedia = pontuacaoMedia(array3);
        ParticipanteMM = 'Participante C';
    }

    if (maiorEtip < pontuacaoMaior(array1)) {
        maiorEtip = pontuacaoMaior(array1);
        ParticipanteME = 'Participante A';
    }
    if (maiorEtip < pontuacaoMaior(array2)) {
        maiorEtip = pontuacaoMaior(array2);
        ParticipanteME = 'Participante B';
    }
    if (maiorEtip < pontuacaoMaior(array3)) {
        maiorEtip = pontuacaoMaior(array3);
        ParticipanteME = 'Participante C';
    }

    console.log(`
    Parabéns Participantes!!!
    Vencedores por modalidades:

    Melhor média: O ${ParticipanteMM} com a pontuação de : ${maiorMedia}
    Maior e-tip: O ${ParticipanteME} com a pontuação de : ${maiorEtip}
    `);
}

console.log(competicao(ParticipanteA, ParticipanteB, ParticipanteC));

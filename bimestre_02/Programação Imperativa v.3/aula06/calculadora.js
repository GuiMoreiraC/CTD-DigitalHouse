function adicionar(num1, num2) {
    return num1 + num2;
}

function subtracao(num1, num2) {
    return num1 - num2;
}

function multiplicacao(num1, num2) {
    return num1 * num2;
}

function divisao(num1, num2) {
    return num1 / num2;
}

function quadradoDoNumero(num) {
    return num ** 2;
}

function mediaDeTresNumeros(num1, num2, num3) {
    return divisao(num1 + num2 + num3, 3);
}

function calculoPorcentagem(num1, num2) {
    return multiplicacao(num1, divisao(num2, 100));
}

function geradorDePorcentagem(num1, num2) {
    return (100 * num1) / num2;
}

//Testando de Operações

console.log('----------- Teste de Operações / Calculadora -----------');

console.log('Teste - Adicção = ', adicionar(2, 2));
console.log('Teste - Subitação = ', subtracao(2, 2));
console.log('Teste - Multiplicação = ', multiplicacao(2, 2));
console.log('Teste - Divisão = ', divisao(2, 2));
console.log('Teste - Quadrado = ', quadradoDoNumero(3));
console.log('Teste - Média de três numeros = ', mediaDeTresNumeros(7, 5, 4));
console.log('Teste - Porcentagem = ', calculoPorcentagem(20, 200));
console.log('Teste - Porcentagem = ', geradorDePorcentagem(2, 200));

/*
Divisão por zero // Não faça isso!!!
console.log('Teste - Divisão = ',divisao(2, 0));
*/

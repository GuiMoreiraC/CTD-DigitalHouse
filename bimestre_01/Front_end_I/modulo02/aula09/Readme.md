# Aula 09 - Revisão e Prática III - Mesa de Trabalho

## Objetivo

Hoje, vamos adequar corretamente o CSS de uma listagem de vídeos que está sendo utilizado de maneira desorganizada como Inline e Interno.
O principal objetivo será organizar o CSS de maneira mais eficiente.
Primeiramente, teremos que criar um arquivo CSS para servir como CSS Externo para a nossa página.

### Instruções

1. Faça o download [desse documento index.html](https://drive.google.com/file/d/1dF_fp4TwoSCF0Ctf0jOI8DmLC-SD9jgT/view 'desse documento index.html') em sua máquina.
2. Abra a página utilizando o navegador de sua preferência para visualizar sua exibição, que deve ser semelhante à seguinte:
   ![Página de referência](img/revisao.png)
3. Analise o código HTML, identificando as tags utilizadas, assim como seus atributos, como **class** e más práticas como CSS Interno e Inline.
4. Crie uma pasta css e dentro dela crie um arquivo style.css
5. Modifique o documento index.html adicionando a tag `<link>` para vincular corretamente a folha de estilos externa que você acabou de criar.
6. Em seu arquivo style.css adicione o CSS Interno que está no arquivo HTML dentro da tag `<style>`, vamos separar todo o CSS do nosso arquivo HTML.
7. Após transferir o conteúdo para a nova folha de estilos que você acabou de criar, a tag `<style>` não terá nenhum conteúdo, então podemos excluí-la.
8. Agora com que transferimos o CSS Interno para uma folha de estilos externas podemos nos concentrar em eliminar o CSS Inline.
9. Observe os elementos: toda tag que possui um CSS Inline também possui uma classe, ou seja, para removermos o CSS Inline precisamos apenas copiar a estilização que está feita na tag, procurar a classe que o elemento possui em nossa folha de estilos e colar a antiga estilização Inline em sua classe.
    1. Copiar a estilização feita via CSS Inline.
    2. Procurar a classe que está atribuída a nossa tag em nossa folha de estilos
    3. Colar o conteúdo da estilização feita via CSS Inline dentro da estilização da classe que encontramos em nossa folha de estilos.
    4. Voltar ao nosso elemento que tem o CSS Inline e apagar a propriedade style de sua tag, já que agora o responsável pela estilização desse elemento não é mais o CSS Inline mas sim a classe.

É importante lembrar que esse processo será feito em todos os elementos que possuem CSS Inline, porém, não serão todas as vezes em que você terá que colar o conteúdo do CSS Inline dentro da classe em sua folha de estilos.
Se você já retirou o CSS Inline de uma tag que possuía uma classe chamada, por exemplo **video-title** e colou a estilização do CSS Inline dentro da classe **video-title** em sua folha de estilos então você não terá que repetir esse processo, já que todos os elementos com a classe **video-title** terão a mesma estilização, logo, quando você se deparar com um elemento que tenha a classe **video-title** será necessário apenas retirar o CSS Inline juntamente com a propriedade style já que a estilização foi movida para a classe e está sendo aplicada a todos elementos que estão utilizando-a.
Isso não ocorrerá somente na classe **video-title**, ela foi apenas um exemplo.

### Conclusão

Parabéns! Você acaba de concluir uma limpeza em nossa página HTML, é ideal que na maioria das vezes o CSS sempre seja utilizado de maneira Externa para manter um padrão mais organizado em nosso projeto, onde cada arquivo é responsável somente por uma coisa, no caso do HTML marcar o nosso conteúdo e do CSS de deixar o nosso conteúdo mais agradável.

[Documento original](https://docs.google.com/document/d/1k3M32K-7q9IIdy58UQ2tPhdFk5Oeml2Q1TPfLZGp2Aw/ 'Documento original')

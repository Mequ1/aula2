import 'dart:io';
import 'dart:math';

//void main() {
//  List<int> numerosUsuario = [];
//  List<int> numerosSorteados = [];

// inserir 6 números sem repetições
//  for (int i = 0; i < 6; i++) {
//    int numero;
//    do {
//      stdout.write("Digite o ${i + 1}º número (entre 1 e 60): ");
//      try {
//        numero = int.parse(stdin.readLineSync() ?? '');
//      } catch (e) {
//        print("Erro ao ler o número. Tente novamente.");
//        continue;
//      }
//
//      if (numero < 1 || numero > 60) {
//        print("Número inválido. Tente novamente.");
//      } else if (numerosUsuario.contains(numero)) {
//        print("Você já escolheu esse número. Escolha outro.");
//      } else {
//        numerosUsuario.add(numero);
//        break;
//      }
//    } while (true);
//  }

// Gerar um jogo aleatório
//  numerosSorteados = gerarNumerosSorteados();

// Ordenar as duas listas
//  numerosUsuario.sort();
//  numerosSorteados.sort();

// Exibir os números escolhidos
//  print("\nNúmeros escolhidos pelo usuário: ${numerosUsuario.join(', ')}");
//  print("Números sorteados: ${numerosSorteados.join(', ')}");

// Verifica e exibe quantos números acertou
//  List<int> numerosAcertados =
//      verificarAcertos(numerosUsuario, numerosSorteados);

//  if (numerosAcertados.isEmpty) {
//    print("Você não acertou nenhum número. Tente novamente!");
//  } else {
//    print("Você acertou os seguintes números: ${numerosAcertados.join(', ')}");
//  }
//}

//List<int> gerarNumerosSorteados() {
//  Random random = Random();
//  List<int> numerosSorteados = [];

//  while (numerosSorteados.length < 6) {
//    int numero = random.nextInt(60) + 1;
//    if (!numerosSorteados.contains(numero)) {
//      numerosSorteados.add(numero);
//    }
//  }

//  return numerosSorteados;
//}

//List<int> verificarAcertos(
//    List<int> numerosUsuario, List<int> numerosSorteados) {
//  List<int> numerosAcertados = [];
//  for (int numero in numerosUsuario) {
//    if (numerosSorteados.contains(numero)) {
//      numerosAcertados.add(numero);
//    }
//  }
//  return numerosAcertados;
//}

void main(List<String> arguments) {
  var portugues = {'Brasil', 'Portugal'};
  var europa = {'Alemanha', 'Portugal', 'Espanha'};

  var portuguesEEuropa = portugues.intersection(europa);
  print('Países que falam português e estão na Europa:');
  for (var pais in portuguesEEuropa) {
    print(pais);
  }

  var portuguesNaEuropa = portuguesEEuropa;
  print('\nPaíses que falam português e são europeus:');
  for (var pais in portuguesNaEuropa) {
    print(pais);
  }

  var portuguesForaDaEuropa = portugues.difference(portuguesNaEuropa);
  print('\nPaíses que falam português e não são europeus:');
  for (var pais in portuguesForaDaEuropa) {
    print(pais);
  }

  var outrosPaisesDaEuropa = europa.difference(portuguesNaEuropa);
  print('\nOutros países europeus que não falam português:');
  for (var pais in outrosPaisesDaEuropa) {
    print(pais);
  }
}

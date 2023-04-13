import 'dart:math';

String cript(int rotacoes, String text) {
  final alfabeto = 'abcdefghijklmnopqrstuvwxyz';

  text = text.toLowerCase();

  var resultado = '';

  for (var i = 0; i < text.length; i++) {
    if (alfabeto.contains(text[i])) {
      final position = alfabeto.indexOf(text[i]);
      final newPosition = (position + rotacoes) % alfabeto.length;
      resultado += alfabeto[newPosition];
    } else {
      resultado += text[i];
    }
  }
  return resultado;
}

void main() {
  final tx = 'Bom dia, me chamo Luis Miguel';
  final rotacao = Random().nextInt(10);

  print('esta na rotação $rotacao');

  var result = cript(rotacao, tx);

  print(result);
}

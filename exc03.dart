import 'dart:async';

Stream<String> chatStream() async* {
  List<String> mensagens = [
    'Boa noite, você está vendo a aula de Stream?',
    'Claro! Estou utilizando agora mesmo.',
    'Não se esqueça de utilizar delayed para simular tempo.',
    'Muito bem, agora ficou perfeito! Até mais.'
    'Até mais!'
  ];

  for (var mensagem in mensagens) {
    await Future.delayed(Duration(seconds: 2));
    yield mensagem; 
  }
}
void main() {
    chatStream().listen((mensagens) =>
    print(mensagens),
    onError: (erro) => print('Erro: $erro'),
    onDone: () => print('\n Chat finalizada!'),
  );
}
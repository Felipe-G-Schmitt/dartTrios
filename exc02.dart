Future<String> AtualizarClima() async {
  return Future.delayed(Duration(seconds: 2), () => 'Ensolarado, 25°C');

  return  Future.delayed( Duration(seconds: 2), () => 'nublado, 21°C');

  return Future.delayed( Duration(seconds: 2), () => 'chuvoso, 18°C');
}

void main() async {
  try {
     print('Buscando clima atual de Joinville!');
     String resultado = await AtualizarClima();
     print('Clima atual: $resultado');
  } catch (e) {
    print('Erro ao atualizar clima: $e');
  }
}
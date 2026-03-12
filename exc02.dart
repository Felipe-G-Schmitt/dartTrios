// Necessário executar este código no dartpad pois no vscode isto é so um diretório!!!
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> buscarClima() async {
  const lat = -26.3043758;
  const lon = -48.8463744;
  
  final url = Uri.parse(
    'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true'
  );

  try {
    final resposta = await http.get(url);

    if (resposta.statusCode == 200) {
      final dados = jsonDecode(resposta.body);
      return dados['current_weather'];
    } else {
      throw Exception('Erro na requisição');
    }
  } catch (e) {
    throw Exception('Falha ao conectar: $e');
  }
}

void main() async {
  print('Buscando clima!');
  try {
    final clima = await buscarClima();
    print('Temperatura atual: ${clima['temperature']}°C');
    print('Velocidade do vento: ${clima['windspeed']} km/h');
  } catch (e) {
    print('Erro: $e');
  }
}
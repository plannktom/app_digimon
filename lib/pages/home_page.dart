import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void listarDigimons() async {
    //var url = Uri.parse('https://digimon-api.vercel.app/api/digimon');
    //var url = Uri.parse('https://viacep.com.br/ws/15105000/json/');
    var url = Uri.parse(
        'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/distritos');
    http.Response response = await http.get(url);
    print(response.body.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de API'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'API Digimon',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: listarDigimons,
                child: Text(
                  'Clique Aqui',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

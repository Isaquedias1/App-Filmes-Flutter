import 'package:flutter_filmes/filmes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void segundapag() {
  runApp(const SegundaPag());
}

class SegundaPag extends StatelessWidget {
  const SegundaPag({super.key});

  @override
  Widget build(BuildContext context) {
    final filme = ModalRoute.of(context)!.settings.arguments as Filme;
    
    Future<void> launchURL() async {
   final Uri url = Uri.parse(filme.trailer);
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }}

    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Tela'),
        backgroundColor:const Color.fromARGB(255, 88, 88, 88),
      ),

       body: Center(
        child: Column(
          children:[
          Text(filme.nome, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(filme.dataLancamento(), style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(filme.empresa, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(filme.genero, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(filme.elenco, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(filme.sinopse, style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Image.asset(filme.pathimg, width: 330, height: 330,),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),

      ElevatedButton(
          onPressed: launchURL,
          child: const Text('trailer!'),
      ),

      
         ElevatedButton(
          onPressed: () {
            // Botão que voltará para a tela anterior
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
     ] ),
    ));
  }
}
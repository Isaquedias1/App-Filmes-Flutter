import 'package:flutter/material.dart';
import 'package:flutter_filmes/filmes.dart';
import 'package:flutter_filmes/segunda.dart';

void main() {
  runApp(const MaterialApp(title: 'App',
  home: MainApp(),));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAPP createState() => MainAPP();
}

class MainAPP extends State{

  List<Filme> filme = [
   Filme('Sonic', DateTime(2020,13,02), 'Jeff Fowler', 'Paramount Pictures', 'Aventura, Familia', 'Jim carrey, James marsden, Neal McDonough, Adam Pally, Lee Majdoub, Malik Bentalha, Michael Hogan', 'Sonic, o porco-espinho azul mais famoso do mundo, se junta com os seus amigos para derrotar o terrível Doutor Eggman, um cientista louco que planeja dominar o mundo, e o Doutor Robotnik, responsável por aprisionar animais inocentes em robôs.','img/Sonic.jpg','https://youtu.be/szby7ZHLnkA?si=FnNQuqs28pne9uf4'),
   Filme('Kung Fu Panda', DateTime(2008,06,06), 'Mark Osborne, John Stevenson', 'Dreamworks Animation', 'Ação, Animação, Família, Artes Marciais', 'Jack Black, Dustin Hoffman, Angelina Jolie, Ian McShane, Jackie Chan, Seth Rogen, Lucy Liu, David Cross', 'Po (Jack Black) é um urso panda desajeitado, que trabalha no restaurante de macarrão de sua família. Um dia ele é surpreendido ao saber que foi escolhido para cumprir uma antiga profecia, o que faz com que treine ao lado de seus ídolos no kung fu: os mestres Shifu (Dustin Hoffman), Garça (David Cross), Tigresa (Angelina Jolie), Louva-deus (Seth Rogen), Macaco (Jackie Chan) e Víbora (Lucy Liu). Quando o traiçoeiro leopardo da neve Tai Lung (Ian McShane) retorna, cabe a Po defender o Vale da Paz.', 'img/panda.jpg','https://youtu.be/NRc-ze7Wrxw?si=B5356coV6VIyEJfY'),
   Filme('O Menino e a Garça', DateTime(2023,14,07), 'Hayao Miyazaki', 'Studio Ghibli', 'Aventura, Animação, Drama', 'Soma Santoki, Masaki Suda, Kô Shibasaki, Takuya Kimura, Yoshino Kimura, Shohei Hino, Jun Kunimura, Kaoru Kobayashi', 'Baseado no livro de Genzaburo Yoshino de 1937, o longa conta a história de Mahito Maki, um jovem que vive no Japão. Após a morte de sua mãe, Mahito se muda com a família para uma propriedade no campo junto com sua nova madrasta, onde uma série de eventos misteriosos o levam a uma torre antiga e isolada, lar de uma garça travessa. Quando sua madrasta desaparece, o menino segue a garça e entra num mundo fantástico, habitado pelos vivos e pelos mortos, e embarca em uma jornada épica ao lado da garça que o guia a descobertas sobre os segredos deste mundo e a verdade sobre si mesmo. A narrativa conta ainda com detalhes de experiências vividas pelo próprio diretor durante sua infância.', 'img/menino.png','https://youtu.be/wehEW7w1wRs?si=PtJktXbYI9Lb_TmC'),
   Filme('Scott Pilgrim Contra o Mundo', DateTime(2010,13,08), 'Edgar Wright', 'Universal Pictures', 'Aventura, Comédia, Fantasia', 'Michael Cera, Mary Elizabeth Winstead, Jason Shchwartzman, Kieran Culkin, Albrey Plaza, Chris Evans, Ellen Wong, Brandon Routh', 'Scott Pilgrim (Michael Cera) tem 23 anos, integra uma banda de colégio, vive trocando de emprego e tem um namoro firme. Sua vida está maravilhosa, até conhecer Ramona V. Flowers (Mary Elizabeth Winestead). Ele logo se apaixona perdidamente por ela, só que não será fácil conquistar seu amor. Para tanto ele precisa enfrentar os sete ex-namorados dela, que estão dispostos a tudo para impedir sua felicidade com outra pessoa.', 'img/pilgrim.png','https://youtu.be/7wd5KEaOtm4?si=XOz9kjXPsUuv3PZu'),
   Filme('Uma Aventura Lego', DateTime(2014,07,02), 'Phil Lord, Christopher Miller', 'Warner Animation Group', 'Aventura, Animação', 'Chris Pratt, Will Ferrell, Elizabeth Banks, Will Arnett, Morgan Freeman, Alison Brie, Charlie Day, Liam Neeson', 'Emmet (Chris Pratt) é um Lego comum, até o dia em que é confundido com o Master Builder, o grande criador deste mundo de brinquedo, por ter encontrado a famosa peça de resistência. Este peça, procurada por todos há séculos, seria capaz de desarmar uma poderosa máquina criada pelo presidente do país, o perverso Sr. Negócios, que pretende colar todas as peças e impedir as mudanças no sistema. Mesmo sem ter grandes habilidades como criador, Emmet gosta de ser considerado um Lego especial, e faz de tudo para merecer a confiança de seus amigos, que incluem a rebelde Mega Estilo, o sábio Vitrúvius, e o gato-unicórnio UniKitty.', 'img/lego.jfif','https://youtu.be/kEj8d67PFAE?si=IMnd0Hue35fPgOpL'),
   Filme('O Auto  da Compadecida', DateTime(2000,10,09), 'Guel Arraes', 'Globo Filmes', 'Aventura, Comédia', 'Matheus Nachtergaele, Selton Mello, Denise Fraga, Marco Nanini, Fernanda Montenegro, Rogério Cardoso, Diogo Vilela, Lima Duarte', 'As aventuras dos nordestinos João Grilo (Matheus Natchergaele), um sertanejo pobre e mentiroso, e Chicó (Selton Mello), o mais covarde dos homens. Ambos lutam pelo pão de cada dia e atravessam por vários episódios enganando a todos do pequeno vilarejo de Taperoá, no sertão da Paraíba. A salvação da dupla acontece com a aparição da Nossa Senhora (Fernanda Montenegro). Adaptação da obra de Ariano Suassuna.', 'img/o_auto_da_compadecida.jpg','https://youtu.be/XPuMu_ENzlg?si=6WDKZdp4vWgoirWd'),
 ];

   @override  
  void initState() {super.initState();}

  @override 
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           title: const Text('Filmes'),
           centerTitle: true,
           backgroundColor: const Color.fromARGB(255, 88, 88, 88),
        ),
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 2,
          children: <Widget>[ 
            Expanded(
              child: ListView.builder(
                itemCount: filme.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                scrollDirection: Axis.vertical,
                clipBehavior: Clip.antiAlias,
              itemBuilder: (BuildContext ctx, index)
              {
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(32), 
                    leading:CircleAvatar(backgroundImage: AssetImage(filme[index].pathimg), radius: 32,),
                    title: Text(
                      filme[index].nome, 
                      style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 0, 0, 0))
                    ),
                    subtitle: Text(filme[index].empresa),
                    splashColor: const Color.fromARGB(255, 158, 158, 158),
                    hoverColor: const Color.fromARGB(255, 95, 95, 95),
                    onTap: () => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: 
                      (context) => const SegundaPag(),
                      settings: RouteSettings(
                        arguments: filme[index],
                      ),),
                    ),
                  )
                );
              },  
            ))
          ]
        ),
        ),
      ),
    );
  }
}

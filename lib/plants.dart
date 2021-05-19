import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universe_explorer/plant.dart';
import 'package:universe_explorer/universe_data.dart';

class PlanetsScreen extends StatelessWidget {
  void planetItemTap(String planet) {}

  final planets = [
    //#nome científico#, nomenclatura botânica, habitat, distribuição e local da foto
    //Pyrostegia venusta, BIGNONIACEAE - Cipó-de-sãojoão – Hábito: Trepadeira; Fitofisionomia ou Habitat:
    //Mata ciliar, mata seca semidecídua, cerrado (lato sensu),
    //ruderal, cultivada; Distribuição: RR, AP, PA, AM, TO, AC,
    //RO, MA, PI, CE, RN, PB, PE, BA, AL, SE, MT, GO, DF, MS,
    //MG, ES, SP, RJ, PR, SC, RS; Local da foto: APA do Planalto
    //Central - Brasília – DF.
    Planet(
        'cipo-leao',
        'assets/img/cipo-leao.jpg',
        'Pyrostegia venusta',
        'Cipo de São João'
            'Habitat'
            'Mata ciliar, mata seca semidecídua, cerrado'
            '(lato sensu), ruderal, cultivada'
            'Distribuição'
            'RR, AP, PA, AM, TO, AC, /n'
            'RO, MA, PI, CE, RN, PB, PE, BA,'
            'AL, SE, MT, GO, DF, MS,'
            'MG, ES, SP, RJ, PR, SC, RS;'
            'Local da foto'
            'APA do Planalto Central - Brasília – DF.'),
    Planet(
        'ipe',
        'assets/img/ipe.jpg',
        'Ipê-Amarelo (Tabebuia aurea) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),
    Planet(
        'piuva',
        'assets/img/piuva.jpg',
        'Piúva (Handroanthus heptaphyllus) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),
    Planet(
        'iperoxo',
        'assets/img/iper.jpg',
        'Ipê Roxo (Handroanthus impetiginosus) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),
    Planet(
        'ipebranco',
        'assets/img/ipep.jpg',
        'Ipê Branco (Tabebuia roseoalba) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),
    Planet(
        'bolsadepastor',
        'assets/img/bolsa.jpg',
        'Bolsa de pastor (Zeyheria montana) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),
    //7
    Planet(
        'urucum',
        'assets/img/urucum.jpg',
        'Urucum (Bixa orellana) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),

    //8
    Planet(
        'algodão-docampo ',
        'assets/img/algo.jpg',
        'Algodão-do-Campo  (Cochlospermum regium) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),

    //9
    Planet(
        'abacaxizinhodo-cerrado',
        'assets/img/ananas.jpg',
        'Abacaxizinhodo-Cerrado (Ananas ananassoides) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),

    //10
    Planet(
        'louro-preto',
        'assets/img/louro.jpg',
        'Louro-preto (Cordia glabrata) ',
        'Mercúrio é o planeta mais próximo ao Sol e o oitavo em tamanho no '
            'sistema solar. A distância média é de 57,9 milhões de '
            'quilômetros do Sol.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Espécies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              'assets/img/cipo-leao.jpg',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Cipó-de-São-João (Pyrostegia venusta)'),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[0],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[1].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[1].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[1],
                            ),
                          ),
                        );
                      },
                    ),

                    //new
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[2].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[2].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[2],
                            ),
                          ),
                        );
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[3].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[3].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[3],
                            ),
                          ),
                        );
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[4].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[4].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[4],
                            ),
                          ),
                        );
                      },
                    ),

                    //new
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[5].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[5].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[5],
                            ),
                          ),
                        );
                      },
                    ),

                    //new
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[6].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[6].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[6],
                            ),
                          ),
                        );
                      },
                    ),

                    //new
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[7].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[7].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[7],
                            ),
                          ),
                        );
                      },
                    ),

                    //new
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[8].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[8].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[8],
                            ),
                          ),
                        );
                      },
                    ),

                    //new
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundImage: AssetImage(
                              planets[9].image,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(planets[9].name),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetScreen(
                              planet: planets[9],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

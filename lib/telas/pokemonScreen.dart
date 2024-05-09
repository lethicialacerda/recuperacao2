import 'package:flutter/material.dart';
import 'package:recuperacao/model/pokemon_model.dart';
import 'package:recuperacao/telas/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';


  class PokemonScreen extends StatelessWidget {

    static List pokemonImg = ['/1.png', '/2.png', '/3.png', '/4.png', '/5.png', '/6.png' ];

    static List<String> pokemonName = ['Bulbasaur', 'Charmander', 'Squirtle', 'Caterpie', 'Pidgey', 'Ekans' ];
    
    static List<String> pokemonType = ['Grass', 'Fire', 'Water', 'Bug', 'Normal', 'Poison' ];

    static List<String> pokemonCategory = ['Seed', 'Lizard', 'Tiny turtle', 'Worm', 'Tiny bird', 'Snake' ];

    static List<String> pokemonPokedex = ['0001', '0002', '0003', '0004', '0005', '0006'];

    static List<String> pokemonStatus = ['/1.1.png', '/2.1.png', '/3.1.png', '/4.1.png', '/5.1.png', '/5.1.png'];

    final List<Pokemon> pokemons = List.generate(
    pokemonName.length, 
    (index) => 
    Pokemon(
      '${pokemonImg[index]}', 
      '${pokemonName[index]}',
      '${pokemonType[index]}', 
      '${pokemonCategory[index]}', 
      '${pokemonPokedex[index]}',
      '${pokemonStatus[index]}'),
      
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 45,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('/pokebola.png', alignment: Alignment.centerRight,),
          ),
          leadingWidth: 150,
          title: Text(
            'Pokedex',
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
          ),
          titleSpacing: 10,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: ListTile(
                    title: Text(
                      pokemons[index].name,
                      style: GoogleFonts.quicksand(fontWeight: FontWeight.w500, fontSize: 20), 
                      ),
                    leading: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(pokemons[index].img, width: 80, height: 80,),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(pokemons: pokemons[index])
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),  
      );
    }
  }

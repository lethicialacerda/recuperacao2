import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recuperacao/model/pokemon_model.dart';



class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({super.key, required this.pokemons});

  // Declare a field that holds the Todo.
  final Pokemon pokemons;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          
          children: [
            Image.asset(pokemons.img),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Name: ',
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 25, color: Colors.lightBlue),
                  ),
                  Text(
                    '${pokemons.name}',
                    style: GoogleFonts.quicksand(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black54),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Type: ',
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 25, color: Colors.purple),
                  ),
                  Text(
                    '${pokemons.type}',
                    style: GoogleFonts.quicksand(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black54),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Category: ',
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 25, color: Colors.orange),
                  ),
                  Text(
                    '${pokemons.category}',
                    style: GoogleFonts.quicksand(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black54),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Pokedex number: ',
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 25, color: Colors.lightGreen),
                  ),
                  Text(
                    '${pokemons.pokedex}',
                    style: GoogleFonts.quicksand(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black54),
                ),  
              ], 
            ),
            InkWell(
              child: Container(
                child: Image.asset(
                  pokemons.status, width: 250, height: 250, alignment: Alignment.center,
                  ),
                ),
            ), 
          ],
        )
      ),
    );
  }
}
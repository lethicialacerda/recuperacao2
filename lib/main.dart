import 'package:flutter/material.dart';
import 'package:recuperacao/telas/pokemonScreen.dart';

//Função principal

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon',
      debugShowCheckedModeBanner: false,
      home: PokemonScreen(),
    );
  }
}

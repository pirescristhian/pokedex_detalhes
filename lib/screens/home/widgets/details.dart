import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/model/pokemon.dart';

class Details extends StatelessWidget {
  final Pokemon _pokemon;

  Details(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF31a7d7),
        borderRadius: BorderRadius.circular(4),
      ),
      margin: EdgeInsets.only(
        top: 10,
      ),
      padding: EdgeInsets.all(
        20,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Altura",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "${this._pokemon.height}m",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tipo",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Text(
                      _pokemon.type,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFf17e35),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(5),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Peso",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "${_pokemon.weight}kg",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Habilidade",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    _pokemon.ability,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

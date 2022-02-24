import 'package:flutter/material.dart';
import 'package:pokedex/widgets/buttonDown.dart';

class HomeSearch extends StatefulWidget {
  @override
  _HomeSearchState createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.only(top: 20),
          height: 180,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(pokemons[index].image),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    pokemons[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Icon(
                    Icons.star,
                  )
                ],
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset('assets/images/image4.png'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Image.asset("assets/images/image5.png"),
                height: 300,
                width: 450),
            Container(
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Está meio vazio por aqui!',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55, right: 55),
                    child: Text(
                        'Procure por pokémons para adicona-los aos seus favoritos.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Procurar Pokémons',
                          alignLabelWithHint: true),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

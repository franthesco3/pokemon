import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/repository/respository.dart';
import 'package:pokedex/widgets/buttonDown.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Pokemon> pokemons = new List();
  var repository = Repository();
  @override
  void initState() {
    repository.getPokemons().then((value) => pokemons = value);
  }

  Widget pokeCard(int index) {
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
            pokemons != null
                ? Container(
                    height: 600,
                    width: 130,
                    child: ListView.builder(
                        itemCount: pokemons.length,
                        itemBuilder: (context, index) {
                          return pokeCard(index);
                        }),
                  )
                : CircularProgressIndicator(),
            SizedBox(height: 45),
            ButtonDown()
          ],
        ),
      ),
    );
  }
}

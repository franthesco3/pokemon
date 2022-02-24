import 'package:flutter/material.dart';
import 'package:pokedex/home/home.dart';
import 'package:pokedex/login/auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final auth = Auth();
  String user;
  String pass;

  @override
  void initState() {
    super.initState();
    auth.setDate();

    //  verificaSession();
  }

  Future<void> verificaSession() async => setState(() async {
        bool result = await auth.session();
        if (result == true) {
          Navigator.pushNamed(context, "/home");
        }
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Center(
                child: Image.asset("assets/images/image1.png"),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  width: 200,
                  child: Text('Comece a coletar pokémons!',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          user = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                        ),
                      ),
                      SizedBox(height: 24),
                      TextField(
                        onChanged: (value) {
                          pass = value;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Senha',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 54),
              InkWell(
                onTap: () {
                  if (auth.authorization(user, pass) == true) {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Home()),
                        (Route<dynamic> route) => false);
                  } else {
                    print('Não rolou!!!!');
                  }
                },
                child: Center(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Image.asset('assets/images/grupo1.png'),
            ],
          ),
        ),
      ),
    );
  }
}

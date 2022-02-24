import 'package:flutter/material.dart';

class MenuText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(child: Text('Favoritos', style: TextStyle(fontSize: 16))),
          Text('Procurar', style: TextStyle(fontSize: 16)),
          InkWell(
              onTap: () => Navigator.pushNamed(
                    context,
                    "/home",
                  ),
              child: Text('Ver todos', style: TextStyle(fontSize: 16)))
        ],
      ),
    );
  }
}

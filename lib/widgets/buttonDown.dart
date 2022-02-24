import 'package:flutter/material.dart';

class ButtonDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 40,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.grey,
          ),
          child: Center(child: Text('Tema escuro')),
        ),
        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              border: Border.all()),
          child: Center(child: Text('Sair')),
        )
      ],
    );
  }
}

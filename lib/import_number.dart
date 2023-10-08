import 'package:flutter/material.dart';

class Number extends StatelessWidget {
  Number({super.key,required this.number});

  String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(
            children: [
              Text(number)
            ],
          ),
        )
      ],
    );
  }
}

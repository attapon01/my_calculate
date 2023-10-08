import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumpadNumber extends StatelessWidget {
  const NumpadNumber({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Number('Reset'), Number('Delete')],
        ),
        Row(
          children: [Number('7'), Number('8'), Number('9'), Number('/')],
        ),
        Row(
          children: [Number('4'), Number('5'), Number('6'), Number('x')],
        ),
        Row(
          children: [Number('1'), Number('2'), Number('3'), Number('-')],
        ),
        Row(
          children: [Number('0'), Number('.'), Number('='), Number('+')],
        )
      ],
    );
  }
  Number(String str) {
    return Expanded(
      child: InkWell( onTap: (){
        print(str);
      },
        child: Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            height: 100,
            child: Center(
              child: Text(
                str,
                // style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  style: GoogleFonts.hanaleiFill().copyWith(fontSize: 35,fontWeight: FontWeight.bold,)
              ),
            )),
      ),
    );
  }
}

class Answer extends StatefulWidget {
  Answer({super.key});


  @override
  State<Answer> createState() => _AnswerState();

}


class _AnswerState extends State<Answer> {
  @override

  String userInput ='';
  String answer = '';

  void initState() {
    answer = '0';
    super.initState();
  }



  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.centerRight,
      heightFactor: 3,
      child: Column(
        children: [
          Text(answer,style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}

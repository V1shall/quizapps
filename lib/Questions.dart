import 'package:flutter/material.dart';
import 'package:quizapp/chodhyam.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List chodhyam = [
    Quiz(qus: 'human have 2 hand',ans:true),
    Quiz(qus: 'human blood is red',ans:true),
    Quiz(qus:'1+2+3=8',ans: false),
    Quiz(qus: 'argentina win world cup 2022',ans: true),
    Quiz(qus: 'ronaldo is playin in brazil',ans: false),
    Quiz(qus:'dogs have 6 legs',ans: false),
    Quiz(qus:'a football match is 60 minute',ans: false),
    Quiz(qus: '1+1=2',ans: true),

  ];
  int count=0;
 String result='';
  void nextQus(){

if(count<chodhyam.length-1){
setState((

){

});
count++;
}
  }

  void check(bool answer){
    print(answer);
    if( answer==chodhyam[count-1].ans){
      result='correct answer';

    }
    else
      result='wrong answer';





  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(chodhyam[count].qus,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 90,
            ),
            TextButton(
                onPressed: () {
                  nextQus();
                  check(true);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  color: Colors.green.shade900,
                  width: 80,
                  child: Text(
                    "True",
                    style: TextStyle(
                      backgroundColor: Colors.green.shade900,
                      fontSize: 30,
                    ),
                  ),
                )),
            TextButton(
                onPressed: () {
                  nextQus();
                  check(false);
                },
                child: Container(
                  color: Colors.red.shade900,
                  width: 80,
                  child: Text(
                    "False",
                    style: TextStyle(
                        backgroundColor: Colors.red.shade900, fontSize: 30),
                  ),

                )),
Text(result,style: TextStyle(color: Colors.white),)
          ],

        ),
      ),
    );
  }
}


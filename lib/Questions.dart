import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
return Scaffold(backgroundColor: Colors.black,
  
  body: Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("google was originally called Backrub",
          style: TextStyle(color: Colors.white,fontSize: 25),
          

          
        ),
        SizedBox(height: 90,),
        TextButton(onPressed: (){},
            child:Container(margin:EdgeInsets.symmetric(vertical: 20)   ,color: Colors.green,
              width: 80,
              child: Text("True",
              style: TextStyle(backgroundColor: Colors.green,fontSize:30),),
            )
        ),
TextButton(onPressed: (){}, child:Container(color: Colors.red,
  width: 80 ,
  child:   Text("False",
  style: TextStyle(backgroundColor: Colors.red,fontSize: 30),),
))
        
      ],
    ),
  ),

);
  }
}

import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        backgroundColor:const Color.fromRGBO(159,168,218,20),
        appBar: AppBar(
          backgroundColor:const Color.fromRGBO(92,107,192,20) ,
          title:  const Center(
            child: Text("Matching Games",
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
        ),
        body: const HomePage(),
      )
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int leftImageNumber=2;
   int rightImageNumber=3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text(
          leftImageNumber==rightImageNumber?"Congratulations " :"Try Again!",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,

          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded( child:TextButton(
                  onPressed: (){setState(() {
                    leftImageNumber=Random().nextInt(8)+1;
                    rightImageNumber=Random().nextInt(8)+1;
                  });},
                  child: Image.asset('Images/image$leftImageNumber.png')),),
              Expanded(
                child:TextButton(
                  onPressed: (){setState(() {
                    leftImageNumber=Random().nextInt(8)+1;
                    rightImageNumber=Random().nextInt(8)+1;
                  });},
                  child: Image.asset(
                      'Images/image$rightImageNumber.png'
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

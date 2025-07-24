import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home:Scaffold(
        backgroundColor: const Color.fromRGBO(255, 192, 203,20),
        body: SafeArea(child:
            Column(
              children: [
                Container(
                    width:200,
                    height: 200,
                    margin: const EdgeInsets.only(top:100,left:40),
                    child:const CircleAvatar(
                      backgroundImage:AssetImage("Images/Image.jpg"),
                    )
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20,left: 50),
                    child: const Text(
                        "Houwaida Hidri",
                        style:TextStyle(
                            color:Color.fromRGBO(0, 0, 128,50),
                            fontSize: 38,
                            fontFamily: 'Alkatra',
                            fontWeight:FontWeight.bold
                        )


                    )
                ),
                Container(
                  padding:const EdgeInsets.only(left: 20),
                  child: const Text(
                    'développeuse mobile',
                    style: TextStyle(
                        color:Color.fromRGBO(0, 0, 128,100),
                        fontSize: 36,
                        fontWeight:FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 20,top: 10),
                  width: 350,
                  height: 50,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                      children:const [
                        Icon(
                          Icons.phone,
                          size: 30,
                          color: Color.fromRGBO(255, 192, 203,20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '+26 22 250 488',
                          style: TextStyle(
                              fontSize: 20,
                              color:Color.fromRGBO(158, 158, 158,20),
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ]
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 20,top: 20),
                    width: 350,
                    height: 50,
                    color: Colors.white,
                    padding: const EdgeInsets.only(left: 20),
                    child:Row(
                      children: const [
                        Icon(
                          Icons.email,
                          color:Color.fromRGBO(255, 192, 203,20) ,

                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("houwaida.hidri@gmail.com",
                            style: TextStyle(
                                fontSize: 20,
                                color:Color.fromRGBO(158, 158, 158,20),
                                fontWeight:FontWeight.bold))
                      ],
                    )
                )
              ],
            )
         ),
      ),
      );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            "Animals Sounds",
            style: TextStyle(
                color: Colors.white60,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor:const Color.fromRGBO(229, 115, 115, 50),
      ),
      body:const HomePage(),
    ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      void playSound(String sound) async {
      final player = AudioPlayer();
      await player.play(AssetSource(sound));
    }
      Widget addwidget(String imageName,String animalName,String sounds,String sons ){
        return  Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                height: 80,
                color: Colors.amberAccent,
                child: Row(children: [
                  Image.asset(
                    imageName,
                    width: 100,
                  ),
                   Text(
                    animalName,
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(33, 33, 33, 120)),
                  ),
                  TextButton(
                    onPressed: () async {
                      playSound(sons);
                    },
                    child:  Text(
                      sounds,
                      style: const TextStyle(color: Color.fromRGBO(33, 33, 33, 100)),
                    ),
                  ),
                ])),
          ),
        );
      }
    return Column(
      children: [
        addwidget("images/image1.png","Cat", "mew, purr, meow, hiss, yowl","Cat_sound.mp3"),
        addwidget("images/image3.png", "Bird","chirrup, chirp, twitter, tweet","Birds_sound.mp3"),
        addwidget("images/image7.png", "Horse","neigh, snort, whinny", "Horse_sound.mp3"),
        addwidget( "images/image4.png","Dog",  "bark", "Dog_sound.mp3"),
        addwidget("images/image6.png", "Goat", "bleat", "Goat_sound.mp3"),
        addwidget("images/image5.png", "Duck", "quak", "Duck_sound.mp3")
      ],
    );
  }
}

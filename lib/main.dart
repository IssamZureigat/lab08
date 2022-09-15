import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // var audio = AudioPlayer();
  bool isplaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(2, 5, 6, 3),
            title: Text("Music"),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          ),
          drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 180, 183, 186),
          ),
          body: PageView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.5ba6305ac7882af973e81b6556ad56eb?rik=i6TxTrzaK1TCaQ&pid=ImgRaw&r=0",
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Wish You Here💕 ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Avaril Lavigne",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) {},
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(formatTime(position)),
                        // Text(formatTime(duration - position))
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 35,
                    child: IconButton(
                      icon: Icon(isplaying ? Icons.pause : Icons.play_arrow),
                      iconSize: 50,
                      onPressed: () async {
                        if (isplaying) {
                          // await audioplayer.pause;
                        } else {
                          String URL =
                              "https://www.youtube.com/watch?v=VT1-sitWRtY";
                          // audioplayer.play(URL);
                        }
                      },
                    ),
                  ),




                  
                ],
              ),


              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.5ba6305ac7882af973e81b6556ad56eb?rik=i6TxTrzaK1TCaQ&pid=ImgRaw&r=0",
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Wish You Here💕 ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Avaril Lavigne",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble(),
                    onChanged: (value) {},
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(formatTime(position)),
                        // Text(formatTime(duration - position))
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 35,
                    child: IconButton(
                      icon: Icon(isplaying ? Icons.pause : Icons.play_arrow),
                      iconSize: 50,
                      onPressed: () async {
                        if (isplaying) {
                          // await audioplayer.pause;
                        } else {
                          String URL =
                              "https://www.youtube.com/watch?v=VT1-sitWRtY";
                          // audioplayer.play(URL);
                        }
                      },
                    ),
                  ),




                  
                ],
              )
           
           
           
            ],
          )),
    );
  }
}

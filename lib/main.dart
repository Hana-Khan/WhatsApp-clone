import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
////        fontFamily: 'LeonSans',
//      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> secondaryText = [

    "I will fight for those who \n cannot fight for themselves",
    "This is'nt about fighting ways.\nIt's about ending them.",
    "I'm finally getting my \nown movie",
    "Who is Incredible Hulk?",
    "Yeah, it's called the..uh... \nRevengers!",
    "Wakanda forever!",
//    "Sometimes you gotta run \nbefore you walk.",
//    "Dressed like a bat.I dig it",

//    "You:Do you think Hawkeye\nshould grt his own movie",
  ];
  List<String>text = [
    "Wonder Woman",
    "Captain Marvel",
    "black widow",
    "Hulk",
    "Thor",
    "Black Panther",
//    "Ironman",
//    "Aquaman",
//    "marvel"
  ];
  List<String> images = [
    "assets/images/wonder_woman.jpg",
    "assets/images/captain_marvel.jpeg",
    "assets/images/black_widow.jpeg",
    "assets/images/hulk.jpg",
    "assets/images/thor.jpg",
    "assets/images/black_panther.jpeg",
//    "assets/images/ironman.jpg",
//    "assets/images/aquaman.jpeg",
//    "assets/images/marvel.jpeg",
  ];
  List<String> time = [
    "6:00 PM",
    "5:11 PM",
    "Yesterday",
    "Yesterday",
    "30/4/2020",
    "29/4/2020"
  ];


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child:
        Icon(
          Icons.message,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).accentColor,

        onPressed: () {
          setState(() {
    // add a new chat
          });
        },
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('IM|WhatsApp', style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
//      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            ListView.builder(
              itemCount: text.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 10,right: 8),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
//                                backgroundImage: ExactAssetImage('assets/images/wonder_woman.jpg'),
                              backgroundImage: ExactAssetImage(images[index]),
                              maxRadius: 30,
                            ),
                            SizedBox(
                            width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  text[index],
                                  style: TextStyle(
                                      color: Colors.grey.shade900,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.done_all,
                                      color: (index == 1 || index == 2|| index == 3)?Colors.grey.shade600:Colors.blue,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      secondaryText[index],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.shade600,
                                          height: 1.3),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(time[index],style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                            SizedBox(
                              height: 8,
                            ),
//                              Row(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
                            Icon(
                              Icons.volume_off,
                              size: 18,
                              color: (index == 0|| index==3)?Colors.grey.shade600:Colors.white,
                            ),
//                                SizedBox(
//                                width: 6,
//                                ),
//                                Icon(
//                                  Icons.remove_circle,
//                                  color: (index == 0 || index == 1)?Colors.green.shade500:Colors.white,
//                                    size: 18,
//                                ),
//                              ],
//                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                        padding: EdgeInsets.only(left: 76),
                        child: Divider(color: Colors.grey.shade700,height: 1,),
                    ),
                  ],
                );
              },//itemBuilder
            ),
          ],
        ),
      ),
    );
  }
}

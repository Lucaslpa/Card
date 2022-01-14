import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import '../components/CardMatch.dart';

class Encounter extends StatefulWidget {
  const Encounter({ Key? key }) : super(key: key);

  @override
  _EncounterState createState() => _EncounterState();
}

class _EncounterState extends State<Encounter> {
 List<SwipeItem> _swipeItems = [];
  MatchEngine _matchEngine = MatchEngine();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _names = ["Red", "Blue", "Green", "Yellow", "Orange"];
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange
  ];

  @override
  void initState() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          content: CardMatch()
       ));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar( 
         centerTitle: true,
         backgroundColor: Colors.white,
         title: Text("TinderLike", style: TextStyle(color: Colors.redAccent
          , 
          fontSize: 30,
          fontWeight: FontWeight.bold)
         ),
         ),
        key: _scaffoldKey,
        backgroundColor: Colors.grey.shade300 ,
      bottomNavigationBar: BottomAppBar( 
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.fireplace),
                color: Colors.redAccent,
                onPressed: () {
                
                  setState(() {});
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.grey.shade500,
                onPressed: () {
              
                  setState(() {});
                },
              ),
               IconButton(
                icon: Icon(Icons.star_rounded),
                color: Colors.grey.shade500,
                onPressed: () {
              
                  setState(() {});
                },
              ),

               IconButton(
                icon: Icon(Icons.chat),
                color: Colors.grey.shade500,
                onPressed: () {
              
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),

         
        body:  Center(
          child: Container(
          height: 500,
          child: SwipeCards(
            matchEngine: _matchEngine,
            itemBuilder: (BuildContext context, int index) {
              return _swipeItems[index].content;
                },
                onStackFinished: () {
                  
                },
              ),
            ),
        ),
          );
  }
}


class Content {
    final String text;
    final Color color;

    Content({required this.text, required this.color});
  }
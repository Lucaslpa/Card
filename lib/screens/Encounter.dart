import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import '../components/CardMatch/index.dart'; 
import '../matchsMock.dart';

class Encounter extends StatefulWidget {
  const Encounter({ Key? key }) : super(key: key);

  @override
  _EncounterState createState() => _EncounterState();
}

class _EncounterState extends State<Encounter> {
 List<SwipeItem> _swipeItems = [];
  bool stackEnded = false ;
  MatchEngine _matchEngine = MatchEngine();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


  @override
  void initState() {
    for (int i = 0; i < MatchsMocks.length; i++) {
      _swipeItems.add(SwipeItem(
          content: CardMatch(match: MatchsMocks[i])
       ));
    }
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: stackEnded == true ? const Center(child: Text('nothing here :('), ) : SwipeCards(
        matchEngine: _matchEngine,
        itemBuilder: (BuildContext context, int index) {
          return _swipeItems[index].content;
            },
            onStackFinished: () {
              setState(() {
                stackEnded = true;
              });
            },
          ),
    );
  }
}



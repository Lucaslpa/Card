import 'package:flutter/material.dart';
import './LikeDeslike.dart';
import 'TopBarPicCurrentShower.dart';
import './changePicsHandler.dart';
import './ProfileInfos.dart';
import '../../matchsMock.dart';

class CardMatch extends StatefulWidget {
   final MatchModel match;
     
    const CardMatch({
    Key? key,
    required this.match,
  }) : super(key: key);
 
  @override
  State<CardMatch> createState() => _CardMatchState();
}

class _CardMatchState extends State<CardMatch> {
   int currentPic = 0;




   void _nextPic(){
    setState(() {
      if(widget.match.pics.length - 1 == currentPic) return;
      currentPic++; 
    });
   }  

    void _backPic(){
    setState(() {
      if(currentPic == 0)return;
      currentPic--;
    });
   } 

  

  @override
  Widget build(BuildContext context) {
    return Center(
           child: Container(
           width: MediaQuery.of(context).size.width ,
           child: Column(
             children:  [Expanded(
               child: Stack(
                 children: [
                    Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: [
                      TopBarPicCurrentShower(
                          currentIndex: currentPic,
                          pictures: widget.match.pics,
                        ),
                       ProfileInfos(
                                name: widget.match.name,
                                age: widget.match.age,
                                description: widget.match.description,
                              ),
                    ],),
                  ChangePicHandler(
                    nextPic: _nextPic,
                    backPic: _backPic,
                  ), 
                 ],
               ),
             ),
             const LikeDeslike()
             ]
           ),
           height: 500,
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                image: NetworkImage(widget.match.pics.elementAt(currentPic)),
                fit: BoxFit.cover,
              ),
            ),
             ),
         );
  }
}
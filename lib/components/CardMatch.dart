import 'package:flutter/material.dart';
import './LikeDeslike.dart';
import 'TopBarPicCurrentShower.dart';
import './changePicsHandler.dart';
import './ProfileInfos.dart';
import './LikeOrRefuse.dart';

class CardMatch extends StatefulWidget {
  const  CardMatch({
    Key? key,
  }) : super(key: key);
 
  @override
  State<CardMatch> createState() => _CardMatchState();
}

class _CardMatchState extends State<CardMatch> {
   int currentPic = 0;
   String status = '';

   final  pictures = [
     'https://image.freepik.com/fotos-gratis/retrato-de-homem-jovem-hippie-barbudo-olhando-para-a-camera-e-tomando-uma-selfie-contra-amarelo_58466-11455.jpg',
    'https://st2.depositphotos.com/2015659/6496/i/950/depositphotos_64961499-stock-photo-beautiful-young-woman-selfie-in.jpg'
   ];

   void _nextPic(){
    setState(() {
      if(pictures.length - 1 == currentPic) return;
      currentPic++; 
    });
   }  

    void _backPic(){
    setState(() {
      if(currentPic == 0)return;
      currentPic--;
    });
   } 

   void _deslike() {
      setState(() {
        status = 'deslike';
      });  
   }

   void _like() {
      setState(() {
        status = 'like';
      });  
   }

  @override
  Widget build(BuildContext context) {
    return Center(
           child: Padding(
              padding: const EdgeInsets.all(8),
             child: Container(
               width: MediaQuery.of(context).size.width ,
             child: Stack(
               children: [
                  Positioned(
                    bottom:  MediaQuery.of(context).size.height * 0.15,
                    child: const ProfileInfos(
                              name: 'João',
                              age: '20',
                              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            ),
                  ),
                  TopBarPicCurrentShower(
                        currentIndex: currentPic,
                        pictures: pictures,
                      ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.13,
                    top: MediaQuery.of(context).size.height * 0.12,
                    child: status == 'like' ? const  LikeOrRefuse(status: 'like') : Container(),
                  ),
                   Positioned(
                    right: MediaQuery.of(context).size.width * 0.13,
                    top: MediaQuery.of(context).size.height * 0.12,
                    child: status == 'deslike' ? const  LikeOrRefuse(status: 'deslike') : Container(),
                  ),
                ChangePicHandler(
                  nextPic: _nextPic,
                  backPic: _backPic,
                ), 
                   Positioned(
                    bottom: 0, 
                    child: LikeDeslike(onDeslike: _deslike, onLike: _like)
                    )
               ],
             ),
             height: 500,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: NetworkImage(pictures.elementAt(currentPic)),
                  fit: BoxFit.cover,
                ),
              ),
               ),
           ),
         );
  }
}
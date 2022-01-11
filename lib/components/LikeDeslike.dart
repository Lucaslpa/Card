import 'package:flutter/material.dart';


var back =  Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.yellow,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child:  const Icon(
              Icons.replay,
              color: Colors.yellow,
              size: 23,
            ),
          );

 deslike(void Function() onDeslike) => InkWell(
   splashColor: Colors.redAccent,
   onTap: onDeslike,
   child: Container(
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child:  const Icon(
              Icons.close,
              color: Colors.red,
              size: 35,
            ),
          ),
); 

var superLike = Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child:  const Icon(
              Icons.star,
              color: Colors.blue,
              size: 23,
            ),
          );

 like(void Function() onDeslike) =>  GestureDetector(
   onTap: onDeslike,
   child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 2.0,
                ),
                shape: BoxShape.circle,
              ),
              child:  const Icon(
                Icons.thumb_up,
                color: Colors.green,
                size: 33,
              ),
            ),
 );

var boost =  Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purple,
                width: 2.0,
              ),
              shape: BoxShape.circle,
              
            ),
            child:  const Icon(
              Icons.moving_sharp ,
              color: Colors.purple,
              size: 23,
            ),
          );

class LikeDeslike extends StatelessWidget {

  final void Function() onDeslike; 
  final void Function() onLike;
   const LikeDeslike({ Key? key, required this.onDeslike , required this.onLike }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.only(top: 24, bottom: 10),
      width:  MediaQuery.of(context).size.width - 15  ,
       child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children:  <Widget>[
          back,
          deslike(onDeslike),
          superLike,
          like(onLike),
          boost 
        ],
      ),
       decoration: BoxDecoration(
        color:  Colors.black.withOpacity(0.8) ,
        borderRadius: BorderRadius.circular(8),
        )
    );
  }
}
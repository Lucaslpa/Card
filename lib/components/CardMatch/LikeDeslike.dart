import 'package:flutter/material.dart';
import './actionButton.dart';


var boost =  Container(
            padding: const EdgeInsets.all(6),
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

   const LikeDeslike({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.only(top: 10, bottom: 10),
       height: 85,
       width:  MediaQuery.of(context).size.width - 35 ,
       child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children:  <Widget>[
          ActionCustomButton(
            padding: 8,
            color: Colors.yellow ,
            sizeIcon: 15,
            icon:  Icons.replay, 
            onPressed: () {}
            ),
          ActionCustomButton(
            padding: 10,
            color: Colors.red ,
            sizeIcon: 23, 
            icon:  Icons.close_sharp, 
            onPressed: () {}
            ),
            ActionCustomButton(
            padding: 8,
            color: Colors.blue ,
            sizeIcon: 15, 
            icon:  Icons.star_rate_rounded, 
            onPressed: () {}
            ),
          ActionCustomButton(
            padding: 13,
            color: Colors.green ,
            sizeIcon: 18, 
            icon:  Icons.thumb_up, 
            onPressed: () {}
            ),
          ActionCustomButton(
            padding: 8,
            color: Colors.purple ,
            sizeIcon: 15, 
            icon:  Icons.moving_sharp, 
            onPressed: () {}
            ),
        ],
      ),
       decoration: BoxDecoration(
        color:  Colors.black.withOpacity(0.8) ,
        borderRadius: BorderRadius.circular(8),
        )
    );
  }
}
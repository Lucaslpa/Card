import 'dart:ffi';

import 'package:flutter/material.dart';

class ChangePicHandler extends StatelessWidget {
    void Function() backPic;
    void Function() nextPic;
 
   ChangePicHandler({ Key? key, required this.backPic, required this.nextPic }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row( 
               children: [
                   Expanded(
                       flex: 1,
                       child: GestureDetector(
                           onTap: () {
                             backPic();
                           },
                           child: Container(
                             color: Colors.transparent,
                               ),
                           ),
                       ),
                       Expanded(
                         flex: 1,
                         child: GestureDetector(
                           onTap: () {
                             nextPic();
                           },
                           child: Container(
                             color: Colors.transparent,
                            ),
                         ),
                       ),
                  ],
              );
  }
}
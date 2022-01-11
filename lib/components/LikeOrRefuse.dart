import 'package:flutter/material.dart';

class LikeOrRefuse extends StatelessWidget {
  final  String status;
  const  LikeOrRefuse({ Key? key, required this.status }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(status == "like") {
      return RotationTransition(
                      turns: const AlwaysStoppedAnimation(340 / 360),
                      child: Container(
                        child: const Text('Like',
                        style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.green,
                          width: 4,
                        ), 
                      ),
                      ),
                    );
    }
    if(status  == 'deslike') {
      return RotationTransition(
                      turns: const AlwaysStoppedAnimation(20 / 360),
                      child: Container(
                        child: const Text('Nope',
                        style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.red,
                          width: 4,
                        ), 
                      ),
                      ),
                    );
    }
    return Container();
  }
}
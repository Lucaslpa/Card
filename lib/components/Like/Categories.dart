import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                          children: [
                              Container(
                                child: const Text('Gamer',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                                decoration: BoxDecoration(
                                color: Colors.transparent,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(
                                     color: Colors.grey,
                                     width: 2
                                   )  
                                 ),
                              ), 
                            Container(
                                child: const Text('Churrasco',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                                decoration: BoxDecoration(
                                color: Colors.transparent,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(
                                     color: Colors.grey,
                                     width: 2
                                   )  
                                 ),
                              ), 
                              Container(
                                child: const Text('Entediado/Entediada',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                                decoration: BoxDecoration(
                                color: Colors.transparent,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(
                                     color: Colors.grey,
                                     width: 2
                                   )  
                                 ),
                              ), 
                              Container(
                                child: const Text('Netflix',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                                decoration: BoxDecoration(
                                color: Colors.transparent,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(
                                     color: Colors.grey,
                                     width: 2
                                   )  
                                 ),
                              ), 
                              Container(
                                child: const Text('Stand-Up Comedy',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                                decoration: BoxDecoration(
                                color: Colors.transparent,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(
                                     color: Colors.grey,
                                     width: 2
                                   )  
                                 ),
                              ), 
                              Container(
                                child: const Text('Com bio',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                                decoration: BoxDecoration(
                                color: Colors.transparent,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(
                                     color: Colors.grey,
                                     width: 2
                                   )  
                                 ),
                              ), 
                              Container(
                                child: const Text('Foto verificada',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 7),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                                decoration: BoxDecoration(
                                color: Colors.transparent,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(
                                     color: Colors.grey,
                                     width: 2
                                   )  
                                 ),
                              ), 
                          ],);
  }
}
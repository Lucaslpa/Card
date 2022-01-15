import 'package:flutter/material.dart';
import './Categories.dart';

class Likess extends StatelessWidget {
  const Likess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      alignment: Alignment.topCenter ,
                      child: Column(children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical:15),
                            child: const Categories()
                          ),
                        ), 
                        Container(
                          width: MediaQuery.of(context).size.height * 0.4,
                          height: 80,
                          alignment:  Alignment.center,
                          child: const Text('Faça um upgrade para o Gold para ver quem já curtiu você.', 
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          ),
                        ),
                       Expanded(
                         child: GridView(
                            padding: const EdgeInsets.all(5),
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.0,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                            mainAxisExtent: 230
                           ),
                           children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage('https://images.pexels.com/photos/1526/dark-blur-blurred-gradient.jpg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage('https://images.pexels.com/photos/1526/dark-blur-blurred-gradient.jpg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage('https://images.pexels.com/photos/1526/dark-blur-blurred-gradient.jpg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                           ],
                         ),
                       )
                      ],
                      ) 
                      ,
                    ),
                  ),
                   Container(
                    padding: const EdgeInsets.only(bottom: 60),
                     alignment: Alignment.bottomCenter,
                     child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                        child: const Text('VEJA QUEM CURTIU VOCÊ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                        ),
                        decoration: BoxDecoration(
                         color: Colors.black,
                         gradient:  LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.yellow.shade700,
                            Colors.yellow.shade600 ,
                            Colors.yellow.shade700,
                          ],
                        ),
                         borderRadius: BorderRadius.circular(40),
                        )
                       ),
                   )
      ]
    );
  }
}
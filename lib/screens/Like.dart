import 'package:flutter/material.dart';
import 'package:projeto/components/Like/Highlights.dart';
import 'package:projeto/components/Like/Likes.dart';
import 'package:projeto/screens/HighLights.dart';

class Likes extends StatefulWidget {
   const Likes({ Key? key }) : super(key: key);

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
   final PageController controller = PageController();
    int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Container(
            height: 47,
            decoration: BoxDecoration(
              border:  Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 2,
                ),
                  ) 
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: [
                 GestureDetector(
                   onTap: () {
                     controller.animateToPage(0, duration: const Duration(milliseconds: 250), curve: Curves.easeInOut).then((_) {
                        setState(() {
                          currentPageIndex = 0;
                        });
                     });
                   },
                   child:  Text('3 Likes',
                   style:  TextStyle(
                     fontSize: 18,
                     color: currentPageIndex == 0 ? Colors.black : Colors.grey.shade500
                   ),
                   ),
                 ),
                 GestureDetector(
                    onTap: () {
                     controller.animateToPage(1, duration: const Duration(milliseconds: 250), curve: Curves.easeInOut).then((_) {
                       setState(() {
                         currentPageIndex = 1;
                       });
                     });
                   },
                   child: Text('Destaques', 
                   style: TextStyle(
                     fontSize: 18,
                     color: currentPageIndex == 1 ? Colors.black : Colors.grey.shade500
                   ),
                   ),
                 ),
              ],
              ),
          ),
          Expanded(
            child: PageView(
             controller: controller,
             physics: const NeverScrollableScrollPhysics() ,
            scrollDirection: Axis.horizontal ,
             children: const [
                  Likess(),
                  HighLightsScreen()
             ],
            ),
          )
          
      ],
      );
  }
}
import 'package:flutter/material.dart';
import 'package:projeto/screens/Encounter.dart';
import 'Explorer.dart';
import 'Like.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController controller = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar( 
         elevation: 0,
         backgroundColor: Theme.of(context).colorScheme.background,
         title:  SizedBox(
           child: Stack(
             children:  const [
                CircleAvatar(
                 backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Macaca_nigra_self-portrait.jpg/201px-Macaca_nigra_self-portrait.jpg'),
                 radius: 20,  
                ),
                SizedBox(
                  height: 40,
                  child:  Center(
                    child: Text("Foguinho",
                       style: TextStyle(color: Colors.redAccent, 
                       fontSize: 26,
                       fontWeight: FontWeight.bold)
                       ),
                  ),
                ),
           ],),
         )
         ),
        backgroundColor: Theme.of(context).colorScheme.background ,
        bottomNavigationBar: BottomAppBar( 
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.fireplace),
                color: currentPage == 0 ? Colors.redAccent : Colors.grey,
                onPressed: () {
                   controller.animateToPage(0, duration: const Duration(milliseconds: 250) , curve: Curves.easeInOutSine).then((_) {
                    setState(() {
                    currentPage = 0;
                  });
                  });       
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                color: currentPage == 1 ? Colors.redAccent : Colors.grey,
                onPressed: () {
                  controller.animateToPage(1, duration: const Duration(milliseconds: 250) , curve: Curves.easeInOutSine).then((_) {
                    setState(() {
                    currentPage = 1;
                  });
                  });
                },
              ),
               IconButton(
                icon: const Icon(Icons.star_rounded),
                color: currentPage == 2 ? Colors.yellow.shade600 : Colors.grey,
                onPressed: () {
                  controller.animateToPage(2, duration: const Duration(milliseconds: 250) , curve: Curves.easeInOutSine).then((_) {
                    setState(() {
                    currentPage = 2;
                  });
                  });
                },
              ),
               IconButton(
                icon: const Icon(Icons.chat),
                color: Colors.grey.shade500,
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),

         
        body: PageView(
          allowImplicitScrolling: false,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: controller ,
          children:  [
              const Encounter(),
              const Another (),
              Likes() 
          ]
        )
       );
  }
}



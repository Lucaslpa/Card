import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  final String title;
  final String firstImageURL;
  final String secondImageURL;

  const Highlights
({ Key? key, required this.title, required this.firstImageURL, required this.secondImageURL }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Text(title,
             style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
             )
             ),
             const SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                   Expanded(
                     flex: 1,
                     child: Container(
                       margin: const EdgeInsets.only(right: 10),
                       height: 235,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(firstImageURL),
                          fit: BoxFit.cover,
                        ),
                      ),
                     ),
                   ),
                     Expanded(
                     flex: 1,
                     child: Container(
                       margin: const EdgeInsets.only(right: 10),
                       height: 235,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:  DecorationImage(
                          image: NetworkImage(secondImageURL),
                          fit: BoxFit.cover,
                        ),
                      ),
                     ),
                   )  
               ],),
                 const SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    child: Container(
                     padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 13),
                     child: const Text('Ver mais',
                     style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        )
                      ),
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.white,
                       boxShadow: const [
                         BoxShadow(
                           color: Colors.grey,
                           blurRadius: 2,
                           offset: Offset(0,2),
                         )
                       ] 
                     )
                    ,) ,
                  )
           ],
      ),
    );
  }
}
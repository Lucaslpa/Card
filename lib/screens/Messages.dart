import 'package:flutter/material.dart';
import 'package:projeto/components/Messages/Search.dart';

class Messages extends StatelessWidget {
  const Messages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Search(),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   const Text('Novos Matches', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                   const SizedBox(height: 10),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: [
                           Container(
                             height: 130,
                             width: 90,
                             margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(color: Colors.yellow.shade800, 
                                width: 3),
                                gradient:  LinearGradient(
                                  colors: [Colors.yellow.shade800, Colors.yellow.shade400],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                )  
                              ),
                           ), 
                           Container(
                             height: 130,
                             width: 90,
                             margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                gradient:  LinearGradient(
                                  colors: [Colors.grey.shade800, Colors.grey.shade400],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                )  
                              ),
                           ),
                            Container(
                              height: 130,
                             width: 90,
                             margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                gradient:  LinearGradient(
                                  colors: [Colors.grey.shade800, Colors.grey.shade400],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                )  
                              ),
                           ),
                            Container(
                              height: 130,
                             width: 90,
                             margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                gradient:  LinearGradient(
                                  colors: [Colors.grey.shade800, Colors.grey.shade400],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                )  
                              ),
                           ),
                            Container(
                              height: 130,
                             width: 90,
                             margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                gradient:  LinearGradient(
                                  colors: [Colors.grey.shade800, Colors.grey.shade400],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                )  
                              ),
                           ),
                         ],
                       ),
                     ),
                   )
              ],) ,
              ),
              const SizedBox(height: 20, ),
             const Text('Mensagens', 
             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             )
          ],
          ),
      ),
    );
  }
}
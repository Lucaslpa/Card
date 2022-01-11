import 'package:flutter/material.dart';

class ProfileInfos extends StatelessWidget {
  final String name ;
  final String age ;
  final String description ;
  const ProfileInfos({ Key? key, required this.age, required this.description, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: 10, left: 10, right: 50),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Row(
             children:  [
                Text(name,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                ),
                const SizedBox(width: 10,),
                 Text(age,
                 style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                )
             ],
          ),
         const SizedBox(height: 10,),
          Text('${description.split('').getRange(0, (description.length > 180 ? 180 : description.length).truncate()).join()}${ description.length > 180 ? ' ...' : ''}', 
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          )
         ],
         )
    );
  }
}
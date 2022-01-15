import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 70,
        child:  TextField(
          style: const TextStyle(
          color: Colors.black, 
          fontSize: 21,
          ),
          autocorrect: true,
          cursorColor: Colors.redAccent,
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent.withOpacity(0.6), width: 1),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 1),
            ),
            hintText: 'Buscar 3 Matches',
            border: InputBorder.none,
            hintStyle: const TextStyle(color: Colors.grey),
            fillColor: Colors.white,
            focusColor: Colors.white,
            icon: const Icon(Icons.search, color: Colors.redAccent , size:  26),   
          ),
        )
    );
  }
}
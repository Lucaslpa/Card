import 'package:flutter/material.dart';

class TopBarPicCurrentShower extends StatelessWidget {
  final List<String> pictures;
  final int currentIndex;
  const TopBarPicCurrentShower({ Key? key, required this.pictures, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      ...pictures.asMap().entries.map((entry) {
                        return Expanded(
                        flex: 1,
                        child: Container(
                         margin: const EdgeInsets.symmetric(horizontal: 3),
                         height: 3.5,               
                         decoration:  BoxDecoration(
                           color: entry.key == currentIndex ? Colors.white  :Colors.black.withOpacity(0.7), 
                           borderRadius: BorderRadius.circular(5), 
                          ),
                        ),
                      );
                      })
                        ],
                      ),
                  );
  }
}
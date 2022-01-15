import 'package:flutter/material.dart';


class Another extends StatefulWidget {
  const Another({ Key? key }) : super(key: key);

  @override
  _AnotherState createState() => _AnotherState();
}

class _AnotherState extends State<Another> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                const SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  const [
                      Text('Bem vindo(a) ao explore', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Minha vibe...'
                      , style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        ),
                      ), 
                      SizedBox(height: 25),
                     Grid()
                    ],
                  ),
                ),
               ],
              ),
            ),
          )
        );
  }
}


class Grid extends StatelessWidget {
  const Grid({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height * 0.67,
      child: GridView(
             physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                mainAxisExtent: 200
              ),
              children: [
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                ),
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                ),
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                ),
                Container(
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                  ),
                )
              ],),
    );
  }
}


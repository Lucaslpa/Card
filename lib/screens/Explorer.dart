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
                
                  padding: const EdgeInsets.all(15),
                  child: Column(
                   mainAxisAlignment: MainAxisAlignment.center ,
                   crossAxisAlignment: CrossAxisAlignment.start,  
                  children: const[
                    Text(
                    'Mode',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                    Text(
                    'Music',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                  )
                  ],),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage('https://www.teclasap.com.br/wp-content/uploads/2009/11/party.jpg'),
                      fit: BoxFit.cover,
                    ), 
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
       height: MediaQuery.of(context).size.height * 0.90,
       child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
                mainAxisExtent: 250
              ),
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      const Text('Buscando por um amor', 
                      style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                      ),
                      const SizedBox(height: 25),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start ,
                       children: const [
                             Text('Pra rouber o meu coração', 
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                               ),
                           ),
                             Text('Descobrir', 
                              style: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                               ),
                            )
                       ],
                     )
                    ],
                  ),
                  height: 300,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                    image: const DecorationImage(
                      image: NetworkImage('https://cdn.awsli.com.br/600x450/1300/1300342/produto/57511403/124eb77c71.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 160,
                  padding: const EdgeInsets.all(7),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      const Text('Planos para hoje?', 
                      style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                      ),
                      const SizedBox(height: 25),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start ,
                       children: const [
                             Text('Tô afim de um rolê espontâneo', 
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                               ),
                           ),
                             Text('Descobrir', 
                              style: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                               ),
                            )
                       ],
                     )
                    ],
                  ),              
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                     image: const DecorationImage(
                      image: NetworkImage('https://s.conjur.com.br/img/b/garotas-festa.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 160,
                  padding: const EdgeInsets.all(7),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      const Text('Vamos ser amigos', 
                      style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                      ),
                      const SizedBox(height: 25),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start ,
                       children: const [
                             Text('Talvez até melhores amigos?', 
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                               ),
                           ),
                             Text('Descobrir', 
                              style: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                               ),
                            )
                       ],
                     )
                    ],
                  ),               
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                     image: const DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1569363196131-39a4dd3f7276?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YW1pZ29zfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 160,
                  padding: const EdgeInsets.all(7),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      const Text('Companhia para o café', 
                      style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                      ),
                      const SizedBox(height: 25),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start ,
                       children: const [
                             Text('Quero conhecer a sua cafeteria favorita', 
                              style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                               ),
                           ),
                             Text('Descobrir', 
                              style: TextStyle(
                              fontSize: 14,
                              color: Colors.white
                               ),
                            )
                       ],
                     )
                    ],
                  ),  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200,
                     image: const DecorationImage(
                      image: NetworkImage('http://images.tcdn.com.br/img/img_prod/759283/xicara_cafe_cha_57_1_20200320154009.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],),
    );
  }
}


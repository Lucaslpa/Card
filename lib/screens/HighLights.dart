import 'package:flutter/material.dart';
import 'package:projeto/components/Like/Highlights.dart';

class HighLightsScreen extends StatelessWidget {
  const HighLightsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
                Highlights(
                  title:'Online recentemente',
                firstImageURL: 'https://br.web.img3.acsta.net/newsv7/19/02/08/16/58/1140437.jpg',
                secondImageURL: 'https://observatoriodocinema.uol.com.br/wp-content/uploads/2021/02/henry-cavill-superman-divulgacao-scaled.jpg',
                ),   
                SizedBox(height: 20,),
                Highlights(
                  title:'Interesses em comum',
                firstImageURL: 'https://veja.abril.com.br/wp-content/uploads/2019/10/blogib_joker_feat.jpg',
                secondImageURL: 'https://observatoriodocinema.uol.com.br/wp-content/uploads/2021/08/John-Cena-durante-gravacao-de-cena-como-Pacificador-em-O-Esquadrao-Suicida-1200x900-2.jpg',
                ),  
                SizedBox(height: 20,),
                Highlights(
                  title:'Recomendações',
                firstImageURL: 'https://istoe.com.br/wp-content/uploads/sites/14/2018/03/28-2.jpg',
                secondImageURL: 'https://media.gazetadopovo.com.br/2017/06/fcfd300c207cee5386e8cb7fa10e2847-gpLarge.jpg',
                ),   
                 SizedBox(height: 30,),   
        ],),
    );
  }
}
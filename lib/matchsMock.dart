
class MatchModel {
   final List<String> pics;
   final String name;
   final String age;
   final String description;

   const MatchModel({
    required this.pics,
    required this.name,
    required this.age,
    required this.description,
    
  });
}



List MatchsMocks = [
 MatchModel(age: '21', description: 'Lorem Ipsum ', name: 'Steve Rogers', pics: [
   'https://observatoriodocinema.uol.com.br/wp-content/uploads/2020/06/Captain-America.jpg',
   'https://uploads.metropoles.com/wp-content/uploads/2020/09/12170743/WhatsApp-Image-2020-09-12-at-17.05.41-600x400.jpeg',
   'https://epipoca.com.br/wp-content/uploads/2021/01/cropped-CAptain-America-1-1200x900.jpg'
 ] ),
  MatchModel(age: '26', description: '', name: 'Natasha ', pics: [
   'https://exame.com/wp-content/uploads/2021/07/vic3bava-negra.jpg',
   'https://exame.com/wp-content/uploads/2021/07/viuva-negra-1-e1626460764939.jpg'
 ] )  ,
 MatchModel(age: '30', description: 'Lorem ipsum solum i lorem ipsum solum i lorem ipsum', name: 'Bruce Wayne', pics: [
   'https://ogimg.infoglobo.com.br/in/25239670-75e-548/FT1086A/760/batman.jpeg.jpg'
 ] ),
];
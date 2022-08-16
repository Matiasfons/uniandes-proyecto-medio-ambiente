import 'package:flutter/material.dart';

class Noticias extends StatefulWidget {
  Noticias({Key? key}) : super(key: key);

  @override
  State<Noticias> createState() => _NoticiasState();
}

class _NoticiasState extends State<Noticias> {
  TextEditingController _nuevaPublicacion = TextEditingController();
  List publicaciones = [
    {
      "title": "Ternuritas callejeras",
      "subtitle": "ternuritascallejeras",
      'text':
          """Te invitamos a vivir una experiencia inolvidable con los peluditos 💪🐶⛺⛺⛺
En el albergue "ternuritas callejeras" en la comunidad de guama alto /Tulcán/Ecuador
🐕 fogata , diversión al máximo y muchas sorpresas más  ,te esperamos más inf por interno 
"AYÚDANOS A AYUDAR" """,
      "likes": 10,
      "image":
          "https://scontent.fatf1-1.fna.fbcdn.net/v/t39.30808-6/276309759_110342838277767_9004675670177152237_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=1JXkJ35W7PAAX_9wtJ_&_nc_ht=scontent.fatf1-1.fna&oh=00_AT-iffDNIaWcg1uQnKcGxSlMZpNUzh-15O06nQ6zzNe1IA&oe=6300B73D"
    },
    {
      "title": "Ternuritas callejeras",
      "subtitle": "ternuritascallejeras",
      'text':
          """3 Perritas q necesitan hogar, de Chalpatan son demasiados peluditos Quieren un hogar adopta no Compres Esteriliza..😷😷😷
Quiero hacer tus días mas Felices.😁😁🐩🐺""",
      "likes": 5,
      "image":
          "https://scontent.fatf1-1.fna.fbcdn.net/v/t39.30808-6/286741102_158273243378734_1920410152114294583_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=-KTVCyZO02QAX-MtLFG&_nc_ht=scontent.fatf1-1.fna&oh=00_AT_Q4glsNCyhM_z9coOOxyrZEC8VNahpe0o9XRakw_UtEQ&oe=63008700"
    },
    {
      "title": "Lourdes Hidalgo",
      "subtitle": "lourdeshidalgo",
      'text':
          """Me llamo Thiago y tengo 8 meses. Busco un hogar amoroso que tenga espacio para jugar y correr. Tengo todas mis vacunas al dia, tengo mi casita. No estoy acostumbrado a estar amarrado, ni quiero. Por favor si crees que me puedes dar un hogar por siempre puedo ser tu hijo amoroso. "COMPARTAN" Lisandra: 787 410 9648/ Edgardo:939 642 1735.""",
      "likes": 30,
      "image":
          "https://scontent.fatf1-1.fna.fbcdn.net/v/t39.30808-6/298333842_2300291083460452_3678473825288463736_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=Qm_rTwMVShQAX_GYiPI&tn=xfQWdBt7QFYC6uvi&_nc_ht=scontent.fatf1-1.fna&oh=00_AT92YE3Ezn252SZY37_R4xjtnQFutSkZmN7zd3i3rPR-rg&oe=6300F3A3"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nueva publicación",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _nuevaPublicacion,
                    maxLines: 5,
                    minLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true, // Added this
                      contentPadding: EdgeInsets.all(8), // Added this
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              publicaciones.insertAll(0, {
                                {
                                  "title": "Matias Fonseca",
                                  "subtitle": "matiasfonseca",
                                  'text': """${_nuevaPublicacion.text} """,
                                  "likes": 0,
                                  "image": ""
                                }
                              });
                            });
                          },
                          child: Icon(
                            Icons.send_outlined,
                            color: Colors.lightBlueAccent,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            ...List.generate(
                publicaciones.length,
                (index) => _model(
                    publicaciones[index]['title'],
                    publicaciones[index]['subtitle'],
                    publicaciones[index]['text'],
                    publicaciones[index]['likes'],
                    publicaciones[index]['image']))
          ],
        ),
      ),
    );
  }

  Container _model(title, subtitle, text, likes, image) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image.toString().isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: double.infinity,
                      height: 180,
                      color: Colors.black,
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 201, 179, 64),
                    child: Center(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        "@$subtitle",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Text("""$text"""),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(likes.toString())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

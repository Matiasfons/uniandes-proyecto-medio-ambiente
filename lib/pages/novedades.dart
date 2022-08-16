import 'package:flutter/material.dart';

class Novedades extends StatefulWidget {
  Novedades({Key? key}) : super(key: key);

  @override
  State<Novedades> createState() => _NovedadesState();
}

class _NovedadesState extends State<Novedades> {
  @override
  Widget build(BuildContext context) {
    List publicaciones = [
      {
        "title": "Alcaldía Tulcán",
        "subtitle": "alcaldiatulcán",
        'text':
            """La prevención y la preparación hacen la diferencia, por lo cual el GADM-Tulcán en conjunto con el Servicio Nacional de Gestión de Riesgos y Emergencias preparó un simulacro de evacuación que se desarrollará el día miércoles 17 de agosto en las parroquias de Tufiño, Maldonado y Chical  🚨""",
        "likes": 10,
        "image":
            "https://scontent.fatf1-1.fna.fbcdn.net/v/t39.30808-6/299954103_1090390315205250_2838179735616075309_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=R9Cb-GHwNtYAX8xmsaO&_nc_oc=AQmnNMtVfAQdB4NqHGnGC9XNSktZXG8nURd98BwSi0lnAvpyCapamTe-LfQVY2rlmcQ&_nc_ht=scontent.fatf1-1.fna&oh=00_AT_ogBwN1hctdUlvayFT2axdghUPpZupcbNbZxx2NSQW0A&oe=630010A5"
      },
      {
        "title": "Alcaldía Tulcán",
        "subtitle": "alcaldiatulcán",
        'text':
            """Municipio de Tulcán implementa el proyecto de TRANSPORTE MUNICIPAL SEGURO 🚨 
Inversión cuyo objetivo es beneficiar a más de 2.200 niños de nuestras parroquias quienes acceden a un servicio gratuito, de calidez y calidad, con seguridad. """,
        "likes": 5,
        "image":
            "https://scontent.fatf1-1.fna.fbcdn.net/v/t39.30808-6/298683055_1090258551885093_134808630730401293_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=qPxkGwXnVoAAX-pcI0T&_nc_ht=scontent.fatf1-1.fna&oh=00_AT9aWrYp_UYkePoaoh4cvqjvRbJoF3xgYnpWIdw2SkRf6w&oe=63006141"
      },
      {
        "title": "Alcaldía Tulcán",
        "subtitle": "alcaldiatulcán",
        'text': """CLÁSICA JORGE MONTENEGRO 
Cientos y cientos de ciclistas disfrutaron de esta hermosa valida en la que pequeños y grandes probaron sus fuerzas en sus caballitos de acero. 
Tulcán fue el escenario de este encuentro en el que familias de Ecuador y Colombia disfrutaron del Turismo y de la vida!! 
Jorge Montenegro nos demuestra que es un grande en todo ámbito!! 
#tulcancapitaldelciclismo #tulcanparalavida
🚩🚴‍♀️🚴‍♀️🚴‍♀️🚴‍♀️🚴‍♀️🚴‍♀️🚴‍♀️🚴‍♀️🚴‍♀️""",
        "likes": 30,
        "image":
            "https://scontent.fatf1-1.fna.fbcdn.net/v/t39.30808-6/299350964_1089853011925647_7188202266056294312_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=GEo6E96eQP4AX9l8HPa&_nc_ht=scontent.fatf1-1.fna&oh=00_AT__QPD6t_tna2RCckyq1vXuUAzZTSruv1iehONKox6c9w&oe=6300D9F4"
      }
    ];
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Center(
                child: Text(
              "Novedades",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 10,
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
            Padding(
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
            ),
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

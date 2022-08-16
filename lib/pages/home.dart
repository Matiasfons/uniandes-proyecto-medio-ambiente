import 'package:flutter/material.dart';
import 'package:pets/pages/alberguers.dart';
import 'package:pets/pages/mapa.dart';
import 'package:pets/pages/noticias.dart';
import 'package:pets/pages/novedades.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List pages = [Albergues(), Noticias(), Novedades(), MapaPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 201, 179, 64),
                      child: Center(
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Matias Fonseca",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "@matiasfonseca",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                _modelLisTile("Albergues", Icons.house_sharp, 0),
                _modelLisTile("Noticias", Icons.newspaper, 1),
                _modelLisTile("Novedades", Icons.new_releases_outlined, 2),
                _modelLisTile("Mapa", Icons.map, 3),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: _modelLisTil2("Cerrar sesión", Icons.logout, 4),
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Versión 1.0")],
                ))
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              return _scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
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
            children: const [
              Text(
                "Matias Fonseca",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
              Text(
                "@matiasfonseca",
                style: TextStyle(fontSize: 12, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(child: pages[page]),
    );
  }

  Column _modelLisTile(title, icon, index) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            setState(() {
              page = index;
            });

            Navigator.pop(context);
          },
          leading: Icon(
            icon,
            size: 30,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Hope-Can"),
        ),
        Divider(),
      ],
    );
  }

  Column _modelLisTil2(title, icon, index) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, '/login');
          },
          leading: Icon(
            icon,
            size: 30,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Hope-Can"),
        ),
        Divider(),
      ],
    );
  }
}

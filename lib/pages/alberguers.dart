import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Albergues extends StatefulWidget {
  Albergues({Key? key}) : super(key: key);

  @override
  State<Albergues> createState() => _AlberguesState();
}

class _AlberguesState extends State<Albergues> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Center(
                child: Text(
              "Albergues en Tulcán",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 10,
            ),
            Divider(),
            ListTile(
              onTap: () {
                launchUrl(Uri.parse(
                    'https://www.google.com/maps/dir/Albergue+Ternuritas+Callejeras/Albergue+Ternuritas+Callejeras,+%2B593,+Tulc%C3%A1n+170504/@0.7580884,-77.9175904,12z/data=!4m13!4m12!1m5!1m1!1s0x8e29651b442426d7:0x38e0501865e867f1!2m2!1d-77.7775147!2d0.7580884!1m5!1m1!1s0x8e29651b442426d7:0x38e0501865e867f1!2m2!1d-77.7775147!2d0.7580884'));
              },
              leading: Icon(
                Icons.house_outlined,
                size: 35,
              ),
              title: Text(
                "Ternuritas callejeras",
                style: TextStyle(fontSize: 16),
              ),
              subtitle: Text("Comunidad de guama alto /Tulcán/Ecuador"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

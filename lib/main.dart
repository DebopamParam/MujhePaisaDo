import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async{
            const url = 'https://tools.apgy.in/upi/Debopam+Chowdhury/paramchy8@okicici/1';
            if(await canLaunchUrlString(url)){
              await launchUrlString(url);
            }
          },
          label: const Text('Donate'),
          icon: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                backgroundImage: AssetImage('image/yoyo.jpg'),
              ),
              const Text(
                'Debopam Chowdhury',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Tapestry',
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                'Main Lut Gayaaa reeee',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'fonts/SourceSansPro-ExtraLightItalic',
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
                width: 170,
                child: Divider(
                  color: Colors.teal.shade200,
                  thickness: 0.9,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushNamed(context, '/maths');
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.teal.shade600,
                      size: 35,
                    ),
                    title: const Text(
                      '+91 9073036069',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const Card(
                child: ListTile(
                  leading: Icon(
                    Icons.payment,
                    size: 30,
                  ),
                  trailing: Icon(
                    Icons.payment,
                    size: 30,
                  ),
                  title: Text(
                    'Donate for blessings',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

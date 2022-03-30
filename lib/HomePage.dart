import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String BitcoinAddress = "bc1qkzr9tmllmtn2egnnjyzev5xqm4a4xlhstecxnm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
            child: ListView(
              children: <Widget>[
                CircleAvatar(
                  child: const Image(image: AssetImage('images/goblin.png')),
                  radius: 90,
                  backgroundColor: Colors.grey[700],
                ),
                const Text(
                  'Name : Rishkesh Bidkar',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Text(
                  'Age : 20',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Divider(
                  height: 40,
                  color: Colors.green,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    color: Colors.white10,
                  ),
                  child: const Text(
                    'Social Links '
                        '⬇',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton.icon(
                    onPressed: () {
                      launch('https://www.instagram.com/cheeruprishi/');
                    },
                    color: Colors.white10,
                    elevation: 10,
                    icon: Image.asset('images/instagram.png', height: 15),
                    label: const Text('Instagram',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton.icon(
                    onPressed: () {
                      launch('https://twitter.com/CheerUpRishi');
                    },
                    color: Colors.white10,
                    elevation: 10,
                    icon: Image.asset('images/twitter.png', height: 20),
                    label: const Text('Twitter',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton.icon(
                    onPressed: () {
                      launch('https://github.com/Rishikesh-278');
                    },
                    color: Colors.white10,
                    elevation: 10,
                    icon: Image.asset('images/github.png', height: 25),
                    label: const Text(
                      'GitHub',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton.icon(
                    onPressed: () {
                      launch('mailto:rushpla3r@gmail.com'
                          'Subject: Subject!'
                          'body : Body!');
                    },
                    color: Colors.white10,
                    elevation: 10,
                    icon: Image.asset('images/gmail.png', height: 15),
                    label: const Text('Email',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                const Divider(
                  height: 40,
                  color: Colors.green,
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: Colors.white10,
                    ),
                    child: const Text(
                      'Donate ⬇',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton.icon(
                    onPressed: () {
                      launch('https://www.paypal.com/mep/dashboard');
                    },
                    color: Colors.white10,
                    elevation: 10,
                    icon: Image.asset(
                      'images/paypal.png',
                      height: 25,
                      alignment: Alignment.center,
                    ),
                    label: const Text('Paypal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton.icon(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: BitcoinAddress));
                      const snackBar = SnackBar(
                        backgroundColor: Colors.blueGrey,
                        content: Text('Bitcoin Address copied',
                            textAlign: TextAlign.center),
                        duration: Duration(seconds: 3),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    color: Colors.white10,
                    elevation: 10,
                    icon: const Icon(FontAwesomeIcons.bitcoin),
                    label: const Text('Bitcoin',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.grey[900],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Card(
            child: Image.asset('images/goblin.png'),
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
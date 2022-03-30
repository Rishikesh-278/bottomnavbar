import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  String BitcoinAddress = "bc1qkzr9tmllmtn2egnnjyzev5xqm4a4xlhstecxnm";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          centerTitle: true,
          backgroundColor: Colors.black,
          bottom: const TabBar(
            //indicatorWeight: 5,
            tabs: <Widget>[
              Tab(text: 'Tab1'),
              Tab(text: 'Tab2'),
              Tab(text: 'Tab3'),
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('BUY TICKETS'),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('LISTEN'),
                        onPressed: () {
                          /* ... */
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            const Center(
              child: Text('yachts'),
            ),
            const Center(
              child: Text('Bikes'),
            ),
          ],
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Container(
              //color: Colors.black,
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
              child: ListView(
                children: <Widget>[
                  CircleAvatar(
                    child: const Image(image: AssetImage('images/goblin.png')),
                    radius: 90,
                    backgroundColor: Colors.grey[700],
                  ),
                  const Text(
                    'Name : Rishikesh Bidkar',
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
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
                          )),
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
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}

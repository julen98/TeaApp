import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            height: size.height * .5,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment:Alignment.topCenter,
                image: AssetImage('assets/top_header.png')
              )
            )
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Juan Andrés'),
                            Text('410410414001'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                   child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Card(
                          child: InkWell(
                            onTap: (){},
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/home.png', height: 128,),
                                Text('Home'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: InkWell(
                            onTap: (){},
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/shop.png', height: 128,),
                                Text('Shop'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: InkWell(
                            onTap: (){},
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/timer.png', height: 128,),
                                Text('Timer'),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          child: InkWell(
                            onTap: (){},
                            splashColor: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/settings.png', height: 128,),
                                Text('Settings'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
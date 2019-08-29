import 'package:app/presentation/custom_icons_icons.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo1.jpg',
                    height: size.height / 2,
                    width: size.width,
                    fit: BoxFit.fill,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: size.height / 6,
                        ),
                        Text(
                          'Dèjâ Membre',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.blueGrey[100]),
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          width: size.width - 60,
                          height: 50,
                          child: RaisedButton(
                            child: Text(
                              'Login',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent),
                            ),
                            onPressed: () {},
                            padding: EdgeInsets.all(0),
                            hoverElevation: 8,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            color: Colors.white,
            height: size.height / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: size.height / 14,
                ),
                Text('Si vous êtes nouveau'),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                  width: size.width - 60,
                  height: 50,
                  child: RaisedButton(
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                    ),
                    color: Color(0xffd61c73),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Continuer avec'),
                SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: RaisedButton.icon(
                        color: Colors.red,
                        icon: Icon(
                          CustomIcons.gplus,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Google',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      child: RaisedButton.icon(
                        color: Color(0xD10002DF),
                        icon: Icon(
                          CustomIcons.facebook,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

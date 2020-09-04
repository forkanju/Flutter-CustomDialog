import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Custom Dialog'),
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
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () {
          showDialog(context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                
                  child: Stack(
                    alignment: Alignment.topCenter,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 50,
                              ),
                              new Text(
                                "Alert Dialog",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Color(0xff070707),
                                ),),
                              SizedBox(
                                height: 20,
                              ),
                              new Text(
                                "This is an alert dialog. Alert\nDialog is very useful and easy to use."
                                    " Users get alert before delete something and thus "
                                    "they can aware of to their delation.",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xff070707),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -50,
                          child: CircleAvatar(
                        radius: 50,
                            child: Image.asset("images/avater.jpg"),
                      ))
                    ],

                  ),
                );
              });
        }),
      ),
    );
  }
}




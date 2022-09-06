import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI calculator',
      home: Homepage(),
    );
  }
}

class MbiRechner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _long = 170;
    double _weight = 65;
    double mbi =_weight/ _long*_long;
    throw UnimplementedError();
  }
}

// ignore: use_key_in_widget_constructors
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  int _counterLong = 170;
  int _counterWieght = 65;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI calculator',
        ),
        
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Container(
          color: Colors.blue[300],
          width: 10000,
          child: Column(
            children: <Widget>[
              Container(
                // ignore: sort_child_properties_last
                height: 130,
                width: 350,
                color: Colors.blue[900],
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: <Widget>[
                    Text(
                      "inter your Length with Cm",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(88, 1, 1, 1),
                            child: ElevatedButton(
                              onLongPress: () {
                                if (_counterLong > 35) {
                                  setState(() {
                                    _counterLong -= 10;
                                  });
                                }
                              },
                              onPressed: () {
                                if (_counterLong > 25) {
                                  setState(() {
                                    _counterLong--;
                                  });
                                }
                              },
                              child: Text("-"),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 9),
                              child: Text(
                                "$_counterLong",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 1, 50, 1),
                            child: ElevatedButton(
                              onLongPress: () {
                                if (_counterLong < 250) {
                                  setState(() {
                                    _counterLong += 10;
                                  });
                                }
                              },
                              onPressed: () {
                                if (_counterLong < 250) {
                                  setState(() {
                                    _counterLong++;
                                  });
                                }
                              },
                              child: Text("+"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 350,
                color: Colors.blue[900],
                margin: EdgeInsets.all(25),
                child: Column(
                  children: <Widget>[
                    Text(
                      "inter your weight with Kg",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(90, 1, 1, 1),
                            child: ElevatedButton(
                              onLongPress: () {
                                if (_counterWieght > 15) {
                                  setState(() {
                                    _counterWieght -= 10;
                                  });
                                }
                              },
                              onPressed: () {
                                if (_counterWieght > 5) {
                                  setState(() {
                                    _counterWieght--;
                                  });
                                }
                              },
                              child: Text("-"),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 9),
                              child: Text(
                                "$_counterWieght",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 1, 55, 1),
                            child: ElevatedButton(
                              onLongPress: () {
                                if (_counterWieght < 500) {
                                  setState(() {
                                    _counterWieght += 10;
                                  });
                                }
                              },
                              onPressed: () {
                                if (_counterWieght < 500) {
                                  setState(() {
                                    _counterWieght++;
                                  });
                                }
                              },
                              child: Text("+"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 135,
                width: 200,
                color: Colors.blue[900],
                margin: EdgeInsets.only(top: 80),
                child: Column(
                  children: <Widget>[
                    Text("Your BMI is : ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        )),
                    Container(
                      height: 83,
                      width: 130,
                      color: Colors.blue[900],
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "${(_counterWieght / (_counterLong * _counterLong) * 10000).toStringAsFixed(2)}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // ignore: prefer_const_constructors
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _lengthcount,
      //   tooltip: '_length',
      //   child: const Icon(Icons.add),
      // )
    );
  }
}
